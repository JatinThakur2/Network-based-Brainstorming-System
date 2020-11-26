package com.main.spring.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {	
	@RequestMapping("/Client-Dashboard")
	public String loginMessage(){
		return "Client-Dashboard";
	}
}