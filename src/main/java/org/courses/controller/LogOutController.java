package org.courses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LogOutController {
    @RequestMapping(value = "/logout")
    private String logOut(HttpServletRequest request) {
        return  null;
    }
}
