package org.courses.service;

import org.courses.dao.ReservationRepository;
import org.courses.model.Room;

import javax.annotation.Resource;
import java.util.List;

public class ReservationServiceIml implements ReservationService {
    @Resource
    private ReservationRepository reservationRepository;
    @Override
    public List<Room> getFreeRooms() {
//        return reservationRepository.getRooms();
        return null;
    }
}
