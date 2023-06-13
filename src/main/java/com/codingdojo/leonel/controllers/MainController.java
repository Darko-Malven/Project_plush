package com.codingdojo.leonel.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.leonel.models.Organization;
import com.codingdojo.leonel.models.User;
import com.codingdojo.leonel.services.AppServices;

@Controller
public class MainController {
	@Autowired
	AppServices service;
	
	@GetMapping("/plush")
	public String home(HttpSession session) {
		session.getAttribute("userInSession");
		
		return "home.jsp";
	}

	@GetMapping("/nuestra-mision")
	public String nuestraMision(HttpSession session) {
		session.getAttribute("userInSession");
		return "info.jsp";
	}
	
	@GetMapping("/contactanos")
	public String contacto(HttpSession session) {
		session.getAttribute("userInSession");
		return "info.jsp";
	}
	@GetMapping("/donaciones")
	public String donaciones(HttpSession session) {
		session.getAttribute("userInSession");
		return "donaciones.jsp";
	}
	
	@GetMapping("/perfil/{id}")
	public String perfil(HttpSession session,Model model,
						@PathVariable ("id") Long id) {
		User userInSession = (User) session.getAttribute("userInSession");
		if(userInSession==null) {
			return "redirect:/plush";
		}
		User userId= service.findUser(id);
		model.addAttribute("user",userId);
		return "perfil.jsp";
	}
	
	
	@GetMapping("/perfil_ong/{id}")
	public String perfilONG(HttpSession session,Model model,
							@PathVariable("id")Long id) {
		Organization ongInSession = (Organization) session.getAttribute("userInSession");
		
		model.addAttribute("ong", ongInSession);
		if(ongInSession==null) {
			return "redirect:/plush";
		}
		
		
		return "perfilOng.jsp";
	}
	
}
