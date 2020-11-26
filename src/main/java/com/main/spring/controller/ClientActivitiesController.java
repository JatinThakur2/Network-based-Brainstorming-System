package com.main.spring.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientActivitiesController {	
	@RequestMapping("/admin/Client-Activities")
	public String loginMessage(){
		return "admin/Client-Activities";
	}
}