package org.courses.service;

import org.courses.model.Room;
import org.springframework.data.domain.Pageable;

import java.sql.Date;
import java.util.List;

public interface RoomService {
    List<Room> getFreeRooms (Date date1, Date date2);
    List<Room> findFreeRooms (Room room);
}
