package org.courses.controller;

import org.courses.model.User;
import org.courses.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Resource
    private UserService userService;


    @RequestMapping(value = "/all-users")
    private String getAdminPage(Model model) {
        List<User> users = userService.getUsers();
        model.addAttribute("users", users);
        return "showAllUsers";

    }

    @RequestMapping(value = "/free-rooms")
    private String freeRooms() {

        return "showAllUsers";

    }

    @RequestMapping(value = "/message")
    private String getMessage() {
        return "showAllUsers";

    }
}
