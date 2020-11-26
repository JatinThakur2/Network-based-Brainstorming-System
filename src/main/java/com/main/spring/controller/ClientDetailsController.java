package com.main.spring.controller;

import com.main.spring.model.User;
import com.main.spring.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;


@Controller
@RequestMapping("/client")
public class ClientDetailsController {
	@Autowired
	private UserRepository repository;

	@GetMapping("/list")
	private String getAll(Model model){
		model.addAttribute("clients", repository.findAll());
		return "Client-Details";
	}

//	@GetMapping(path = {"/add", "edit/{id}"})
//	private String addForm(@PathVariable("id") Optional<Integer> id, Model model){
//		if(id.isPresent()){
//			model.addAttribute("user", repository.findById(id.get()));
//		}else{
//			model.addAttribute("user", new User());
//		}
//		return "edit_client";
//	}
//
//	@PostMapping("/addEdit")
//	private String insertOrUpdate(User user){
//		if(user.getId() == 0){
//			repository.save(user);
//		}else{
//			Optional<User> userOptional = repository.findById(user.getId());
//			if(userOptional.isPresent()){
//				User editUser = userOptional.get();
//				editUser.setName(user.getName());
//				editUser.setLastName(user.getLastName());
//				editUser.setEmail(user.getEmail());
//				repository.save(editUser);
//			}
//		}
//		return "redirect:/client/list";
//	}
//
	@GetMapping("/delete/{id}")
	private String deleteClient(@PathVariable("id") int id){
		Optional<User> client = repository.findById(id);
		if(client.isPresent()){
			repository.delete(client.get());
		}else{
			System.err.println("not found");
		}
		return "redirect:/client/list";
	}
}