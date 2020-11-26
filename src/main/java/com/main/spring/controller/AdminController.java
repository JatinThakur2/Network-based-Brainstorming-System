package com.main.spring.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {	
	@RequestMapping("/Admin-Dashboard")
	public String loginMessage(){
		return "Admin-Dashboard";
	}
}