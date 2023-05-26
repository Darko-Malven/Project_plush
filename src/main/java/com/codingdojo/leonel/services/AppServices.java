package com.codingdojo.leonel.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.leonel.models.Review;
import com.codingdojo.leonel.models.User;
import com.codingdojo.leonel.repository.ReviewRepository;
import com.codingdojo.leonel.repository.UserRepository;

@Service
public class AppServices {
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private ReviewRepository reviewRepo;
	public User register(User newUser, BindingResult result) {
		
		//Revisamos que el correo que recibimos no exista en nuestra tabla de usuarios
		String email = newUser.getEmail();
		User isUser = userRepo.findByEmail(email); //NULL o Objeto Usuario
		if(isUser != null) {
			//El correo ya está registrado
			//result.rejectValue("email", "Unique", "The email is already in use");
			result.rejectValue("email", "Unique", "The email is already in use");
		}
		
		//Comparamos contraseñas 
		String password = newUser.getPassword();
		String confirm = newUser.getConfirm();
		if(!password.equals(confirm)) { //! -> Lo contrario
			//result.rejectValue("confirm", "Matches", "The passwords don't match");
			result.rejectValue("confirm", "Matches", "The passwords don't match");
		}
		
		//Si NO existe error, guardamos!
		if(result.hasErrors()) {
			return null;
		} else {
			//Encriptamos contraseña
			//String contra_encriptada = BCrypt.hashpw(contrasena, BCrypt.gensalt());
			String pass_encript = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(pass_encript);
			return userRepo.save(newUser);
		}	
		
	}
	
	public User login(String email, String password) {
		
		//Buscar que el correo recibido esté en BD
		User userExists = userRepo.findByEmail(email); //NULL o Objeto de User
		if(userExists == null) {
			return null;
		}
		
		//Comparamos contraseñas
		//BCrypt.checkpw(Contraseña NO encriptada, Contraseña encriptada) -> True o False
		if(BCrypt.checkpw(password, userExists.getPassword())) {
			return userExists;
		} else {
			return null;
		}
		
	}
	/*Encontrar un usuario en base a su id*/
	public User findUser(Long id) {
		return userRepo.findById(id).orElse(null);
	}
	
	/*Guarda cambios en usuario*/
	public User saveUser(User user) {
		return userRepo.save(user);
	}
	// guardar una reseña
	public Review saveReview(Review newReview) {
		return reviewRepo.save(newReview);
	}
	// mostrar una lista de reseña
	public List<Review> showReview(){
		return reviewRepo.findAll();
	}
	// mostrar y ordenar lista de reseña
	
}
