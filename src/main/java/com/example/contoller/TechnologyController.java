package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TechnologyController {

    @GetMapping("/technology")
    public String technology(Model model) {
        return "technology";
    }

}
