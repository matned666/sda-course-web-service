package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TasksController {

    @GetMapping("/tasks")
    public String tasks(Model model) {
        return "tasks";
    }
}
