package org.courses.service;

import org.courses.dao.RoomRepository;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
    @Resource
    private RoomRepository roomRepository;

    @Override
    public List<Room> getFreeRooms(Date date1, Date date2) {
        List<Room> reservationRooms = roomRepository.findReservationRooms(date1, date2);
        List<Room> allRooms = roomRepository.findRoomsBy();
        allRooms.removeAll(reservationRooms);

        return allRooms;

    }

    @Override
    public List<Room> findFreeRooms(Room room) {
        Reservation reservation = room.getReservation();
        List<Room> roomsByReservation = roomRepository.findReservationRooms(reservation.getStartReservation(), reservation.getFinishReservation(), room.getPlace(), room.getRoomType());
        return roomsByReservation;
    }
}
