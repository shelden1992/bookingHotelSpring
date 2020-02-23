package org.courses.controller;


import org.courses.form.BookingForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping(value = "/")
    public String goHomePage(Model model) {
        model.addAttribute("bookingForm", new BookingForm());

        return "index";
    }
}
