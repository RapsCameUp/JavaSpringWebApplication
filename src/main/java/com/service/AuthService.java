package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Login;
import com.bean.Product;
import com.repository.AuthRepository;

@Service
public class AuthService {
	
	@Autowired
	AuthRepository authrepository;

	public String UserLogin(Login login) {
		Login userlogin  = authrepository.LogUserIn(login.getEmail(), login.getPassword());
		if(userlogin==null) {
			return "failure";
		}else if(userlogin.getRole().equals("admin")) {
			return "admin login";
		}else {
			return "customer login";
		}
	}
	
	public String UserRegistration(Login login) {
		if(login.getRole().equals("admin")) {
			return "Admin Account already exists";
		}
		else {
			Optional<Login> result = authrepository.findById(login.getEmail());
			if(result.isPresent()) {
				return "Email entered already exists.";
			}else {
				authrepository.save(login);
				return "Registration Successful";
			}
		}
	}
	
	public String ForgotPassword(Login login) {
		Optional<Login> result = authrepository.findById(login.getEmail());
		if(result.isPresent()) {
			Login user = result.get();
			user.setPassword(login.getPassword());
			user.setEmail(login.getEmail());
			user.setName(user.getName());
			user.setRole(user.getRole());
			user.setSurname(user.getSurname());
			user.setStatus(user.getStatus());
			
			authrepository.saveAndFlush(user);
			return "Updated successfully";
		}else {
			return "Something went wrong. Please try again.";
		}
	}
	
	public List<Login> getAllUsers() {
		return authrepository.findAll();
	}
	
	public Login getUserByEmail(String email){
		return authrepository.SearchUserByEmail(email);
	}
}
