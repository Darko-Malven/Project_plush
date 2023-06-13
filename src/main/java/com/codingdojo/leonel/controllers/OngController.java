package com.codingdojo.leonel.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.leonel.models.Organization;
import com.codingdojo.leonel.services.AppServices;

@Controller
public class OngController {
	@Autowired
	AppServices service;
	
	@GetMapping("/inicia_sesion_ong")
	public String index(@ModelAttribute ("newOng") Organization ong) {
		return "ongSingUp.jsp";
	}
	@PostMapping("/register_ong")
	public String ongRegister(@Valid @ModelAttribute ("newOng") Organization newOng,
							   BindingResult result,
							   HttpSession session) {
		service.registerOng(newOng, result);
		if(result.hasErrors()) {
			
			return "ongSingUp.jsp";
		}
		else {
			//guardar objeto en sesion
			session.setAttribute("userInSession", newOng);
			return "redirect:/plush";
		}
	}
	@PostMapping("/login_ong")
	public String login(@RequestParam ("email") String email,
						@RequestParam ("password") String password,
						RedirectAttributes redirectAttributes,
						HttpSession session) {
		//enviar email y contraseña para q el servicio verifique que este correcto
		Organization ongLogin = service.loginOng(email,password);
		if(ongLogin==null) {
			redirectAttributes.addFlashAttribute("error_login", "The email/password is incorrect.");
			return "redirect:/inicia_sesion_ong";
		}
		else {
			session.setAttribute("userInSession", ongLogin);
			return "redirect:/plush";  
		}
		 
	}
	
	@GetMapping("/logout_ong")
	public String logout(HttpSession session) {
		session.removeAttribute("userInSession");
		return "redirect:/plush";
	}
}
