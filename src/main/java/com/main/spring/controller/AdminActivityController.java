package com.main.spring.controller;

import com.main.spring.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/admin/activity")
public class AdminActivityController {
    @Autowired
    private ActivityRepository repository;

    @GetMapping("/list")
    private String getAll(Model model){
        model.addAttribute("activities", repository.findAll());
        return "admin_activity_list";
    }

}
