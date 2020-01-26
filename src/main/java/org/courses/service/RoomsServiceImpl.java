package org.courses.service;

import org.courses.dao.RoomRepository;
import org.courses.model.Room;

import javax.annotation.Resource;
import java.util.List;

public class RoomsServiceImpl implements RoomService {
    @Resource
    private RoomRepository roomRepository;

    @Override
    public List<Room> getFreeRooms() {
//        return roomRepository.getFreeRooms();
        return null;
    }
}
