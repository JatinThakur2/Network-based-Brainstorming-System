package com.main.spring.controller;

import com.main.spring.model.Activity;
import com.main.spring.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/activity")
public class ActivityController {
    @Autowired
    private ActivityRepository repository;

    @GetMapping("/list")
    private String getAll(Model model){
        model.addAttribute("activities", repository.findAll());
        return "activity_list";
    }

    @GetMapping(path = {"/add", "edit/{id}"})
    private String addForm(@PathVariable("id") Optional<Long> id, Model model){
        if(id.isPresent()){
            model.addAttribute("activity", repository.findById(id.get()));
        }else{
            model.addAttribute("activity", new Activity());
        }
        return "add_edit_activity";
    }

    @PostMapping("/addEdit")
    private String insertOrUpdate(Activity activity){
        if(activity.getId() == null){
            repository.save(activity);
        }else{
            Optional<Activity> activityOptional = repository.findById(activity.getId());
            if(activityOptional.isPresent()){
                Activity editActivity = activityOptional.get();
                editActivity.setDescription(activity.getDescription());
                editActivity.setPriority(activity.getPriority());
                editActivity.setTitle(activity.getTitle());
                repository.save(editActivity);
            }
        }
        return "redirect:/activity/list";
    }

    @GetMapping("/delete/{id}")
    private String deleteMovie(@PathVariable("id") Long id){
        Optional<Activity> activity = repository.findById(id);
        if(activity.isPresent()){
            repository.delete(activity.get());
        }else{
            System.err.println("not found");
        }
        return "redirect:/activity/list";
    }

}
