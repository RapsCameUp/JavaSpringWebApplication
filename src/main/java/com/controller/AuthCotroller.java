package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Login;
import com.bean.Product;
import com.service.AuthService;

@Controller
public class AuthCotroller {
	
	@Autowired
	AuthService authservice;
	
	@RequestMapping(value = "/")
	public ModelAndView LoginPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;
	}
	
	@RequestMapping(value = "UserLogin",method = RequestMethod.POST)
	public ModelAndView UserLogin(HttpServletRequest req,Login login) {
		
		ModelAndView mv = new ModelAndView();
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		String result = authservice.UserLogin(login);
		
		if(result.equals("admin login")) {
			mv.addObject("msg", "Admin Home page");
			mv.setViewName("admin.jsp");
		}else if(result.equals("customer login")) {
			mv.addObject("msg", "Welcome to Sporty Shoes");
			mv.setViewName("customer.jsp");
		}
		else {
			mv.addObject("msg", "something went wrong. Try again");
			mv.setViewName("index.jsp");
		}
		
		return mv;
		
	}
	
	@RequestMapping(value = "UserRegistration",method = RequestMethod.POST)
	public ModelAndView UserRegistration(HttpServletRequest req,Login login) {
		
		ModelAndView mv = new ModelAndView();
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String surname = req.getParameter("surname");
		
		login.setPassword(password);
		login.setEmail(email);
		login.setRole("customer");
		login.setName(name);
		login.setSurname(surname);
		login.setStatus("1");
		
		String result = authservice.UserRegistration(login);
		
		mv.addObject("msg", result);
		mv.setViewName("index.jsp");
		
		return mv;
		
	}
	
	@RequestMapping(value = "getAllUsers",method = RequestMethod.GET)
	public ModelAndView getAllUsers() {
	
		List<Login> users = authservice.getAllUsers();
		ModelAndView mav = new ModelAndView();
		mav.addObject("ViewAllUsers", users);
		mav.setViewName("allUsers.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "getuserByEmail",method = RequestMethod.GET)
	public ModelAndView getuserByEmail(HttpServletRequest req) {
		String email = req.getParameter("email");
		
		Login user = authservice.getUserByEmail(email);
		ModelAndView mav = new ModelAndView();
		
		if(user != null) {
			mav.addObject("name", user.getName());
			mav.addObject("surname", user.getName());
			mav.addObject("role", user.getName());
			mav.addObject("email", user.getName());
			mav.addObject("status", user.getName());
			mav.setViewName("searchuser.jsp");
		}
		else {
			mav.addObject("msg", "user Not Found");
			mav.setViewName("allUsers.jsp");
		}
		

		return mav;
	}
	
	@RequestMapping(value = "ForgotPassword",method = RequestMethod.POST)
	public ModelAndView ForgotPassword(HttpServletRequest req, Login user) {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		user.setEmail(email);
		user.setPassword(password);
		
		String result = authservice.ForgotPassword(user);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", result);
		mav.setViewName("index.jsp");
		return mav;
	}

}
