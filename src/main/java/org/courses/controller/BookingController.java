package org.courses.controller;

import org.courses.form.BookingForm;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.courses.model.RoomType;
import org.courses.service.RoomService;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/booking")
public class BookingController {
    @Resource(name = "bookingValidator")
    private Validator validator;
    @Resource(name = "roomServiceImpl")
    private RoomService roomService;

    @GetMapping(value = "/booking-room")
    private String bookingRoom(@Param("roomId") int theId) {
        return "index";
    }

    @InitBinder
    private void initBinder(WebDataBinder webDataBinder) {
        webDataBinder.setValidator(validator);
    }

    @PostMapping("/show-rooms")
    public String showRooms(@Valid @ModelAttribute(name = "bookingForm") BookingForm bookingForm, BindingResult bindingResult, Model model) {
        Room room = getRoom(bookingForm);
        Reservation reservation = getReservation(bookingForm);

        if (room != null && reservation != null) {
            reservation.setRoom(room);
            room.setReservation(reservation);
            List<Room> freeRooms = roomService.findFreeRooms(room);
            model.addAttribute("freeRooms", freeRooms);
            return "selectionRooms";

        }
        bindingResult.rejectValue("checkIn", "dssdsdsd");


        return "index";
    }

    private Reservation getReservation(BookingForm bookingForm) {
        Reservation reservation = new Reservation();
        java.sql.Date checkIn = toSqlDate(bookingForm.getCheckIn());
        java.sql.Date checkOut = toSqlDate(bookingForm.getCheckOut());
        reservation.setStartReservation(checkIn);
        reservation.setFinishReservation(checkOut);

        return reservation;
    }

    private java.sql.Date toSqlDate(Date date) {
        return new java.sql.Date(date.getTime());

    }

    private Room getRoom(BookingForm bookingForm) {
        int adults = bookingForm.getAdults();
        RoomType type = bookingForm.getType();
        Room room = new Room();
        room.setRoomType(type);
        room.setPlace(adults);

        return room;
    }
}
