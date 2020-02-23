package org.courses.dao;

import org.courses.model.Room;
import org.courses.model.RoomType;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface RoomRepository extends CrudRepository<Room, Long> {
    @Query("select r from Room r where r.reservation.startReservation= :startDate and r.reservation.finishReservation= :finishDate" +
            " or r.reservation.startReservation<= :startDate and r.reservation.finishReservation>= :finishDate ")
    List<Room> findReservationRooms(@Param("startDate") Date startDate, @Param("finishDate") Date finishDate);

    List<Room> findRoomsBy();

    @Query("select r from Room r where r.reservation.startReservation= :startDate and r.reservation.finishReservation= :finishDate" +
            " or r.reservation.startReservation<= :startDate and r.reservation.finishReservation>= :finishDate and r.place>= :place and r.roomType = :type")
    List<Room> findReservationRooms(@Param("startDate") Date startDate, @Param("finishDate") Date finishDate, @Param("place") int place, @Param("type") RoomType type);

}
