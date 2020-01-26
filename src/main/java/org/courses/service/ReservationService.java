package org.courses.service;

import org.courses.model.Room;

import java.util.List;

public interface ReservationService {
    public List<Room> getFreeRooms();
}
