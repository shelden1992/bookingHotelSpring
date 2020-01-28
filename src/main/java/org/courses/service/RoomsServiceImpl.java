package org.courses.service;

import org.courses.dao.RoomRepository;
import org.courses.model.Room;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class RoomsServiceImpl implements RoomService {
    @Resource
    private RoomRepository roomRepository;

    @Override
    public List<Room> getFreeRooms(Date date1, Date date2) {
        List<Room> reservationRooms = roomRepository.findReservationRooms(date1, date2);
        System.out.println("reservationRooms " + reservationRooms);
        List<Room> allRooms = roomRepository.findRoomsBy();
        allRooms.removeAll(reservationRooms);

        return allRooms;

    }
}
