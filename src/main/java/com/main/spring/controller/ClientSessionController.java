package com.main.spring.controller;

import com.main.spring.repository.SessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/client/session")
public class ClientSessionController {
    @Autowired
    private SessionRepository repository;

    @GetMapping("/list")
    private String getAll(Model model){
        model.addAttribute("sessions", repository.findAll());
        return "client_brainstorming_session_list";
    }

}
