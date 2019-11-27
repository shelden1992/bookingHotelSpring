package org.courses.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCommand {

    @GetMapping(value = "/" )
    public String goHomePage() {
        return "index";
    }
}
