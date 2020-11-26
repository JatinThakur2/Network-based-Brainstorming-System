package com.main.spring.controller;

import com.main.spring.model.Session;
import com.main.spring.repository.SessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/session")
public class SessionController {
    @Autowired
    private SessionRepository repository;

    @GetMapping("/list")
    private String getAll(Model model){
        model.addAttribute("sessions", repository.findAll());
        return "brainstorming_session_list";
    }

    @GetMapping(path = {"/add", "edit/{id}"})
    private String addForm(@PathVariable("id") Optional<Long> id, Model model){
        if(id.isPresent()){
            model.addAttribute("session", repository.findById(id.get()));
        }else{
            model.addAttribute("session", new Session());
        }
        return "add_edit_brainstorming_session";
    }

    @PostMapping("/addEdit")
    private String insertOrUpdate(Session session){
        if(session.getId() == null){
            repository.save(session);
        }else{
            Optional<Session> sessionOptional = repository.findById(session.getId());
            if(sessionOptional.isPresent()){
                Session editActivity = sessionOptional.get();
                editActivity.setDate(session.getDate());
                editActivity.setTime(session.getTime());
                editActivity.setTitle(session.getTitle());
                editActivity.setClient1(session.getClient1());
                editActivity.setClient2(session.getClient2());
                editActivity.setClient3(session.getClient3());
                editActivity.setLink(session.getLink());
                repository.save(editActivity);
            }
        }
        return "redirect:/session/list";
    }

    @GetMapping("/delete/{id}")
    private String deleteMovie(@PathVariable("id") Long id){
        Optional<Session> session = repository.findById(id);
        if(session.isPresent()){
            repository.delete(session.get());
        }else{
            System.err.println("not found");
        }
        return "redirect:/session/list";
    }

}
