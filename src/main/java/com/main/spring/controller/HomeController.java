package com.main.spring.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {	
	@RequestMapping("/")
	public String loginMessage(){
		return "home";
	}
	@RequestMapping("/login")
	public String loginMessage1(){
		return "login";
	}
	@RequestMapping("/index")
	public String loginchat(){
		return "index";
	}
}