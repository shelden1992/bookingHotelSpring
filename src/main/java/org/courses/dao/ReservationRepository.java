package org.courses.dao;

import org.courses.model.Reservation;
import org.courses.model.Room;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReservationRepository extends CrudRepository<Reservation, Long> {
}
