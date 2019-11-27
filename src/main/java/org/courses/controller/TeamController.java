package org.courses.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/team")
public class TeamController {
    @GetMapping
    public String goTeamPage() {
        return "team";

    }


}
