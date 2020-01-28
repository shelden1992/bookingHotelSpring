package org.courses.controller;

import org.courses.model.Room;
import org.courses.model.User;
import org.courses.service.RoomService;
import org.courses.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    private static final long ONE_DAY_MIL = 86400000L;
    @Resource
    private UserService userService;
    @Resource
    private RoomService roomService;


    @RequestMapping(value = "/all-users")
    private String getAdminPage(Model model) {
        List<User> users = userService.getUsers();
        model.addAttribute("users", users);
        return "showAllUsers";

    }

    @RequestMapping(value = "/free-rooms")
    private String freeRooms(Model model) {
        Date dataStart = getDateToday();
        Date dataFinish = getDateTomorrow();
        List<Room> freeRooms = roomService.getFreeRooms(dataStart, dataFinish);
        model.addAttribute("freeRooms", freeRooms);
        return "freeRooms";

    }

    private Date getDateToday() {
        long today = System.currentTimeMillis();
        return new Date(today);
    }

    private Date getDateTomorrow() {
        long tomorrow = System.currentTimeMillis() + ONE_DAY_MIL;
        return new Date(tomorrow);
    }

    @RequestMapping(value = "/message")
    private String getMessage() {
        return "showAllUsers";

    }
}
