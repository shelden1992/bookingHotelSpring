package org.courses.controller;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/booking")
public class BookingController  {

    @GetMapping(value = "/booking-room")
    private String bookingRoom (@Param("roomId") int theId){
        return "index";

    }
}
