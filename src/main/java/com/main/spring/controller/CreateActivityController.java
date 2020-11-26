package com.main.spring.controller;
import org.springframework.web.bind.annotation.*;

@RestController
public class CreateActivityController {	
	@RequestMapping("/client/Create-Activity")
	public String loginMessage(){
		return "client/Create-Activity";
	}


}