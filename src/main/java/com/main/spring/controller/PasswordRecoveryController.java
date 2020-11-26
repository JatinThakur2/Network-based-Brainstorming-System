package com.main.spring.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PasswordRecoveryController {	
	@RequestMapping("/password-recovery")
	public String loginMessage(){
		return "password-recovery";
	}
}