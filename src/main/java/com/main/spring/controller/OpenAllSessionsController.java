package com.main.spring.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OpenAllSessionsController {	
	@RequestMapping("/admin/Open-all-sessions")
	public String loginMessage(){
		return "admin/Open-all-sessions";
	}
}