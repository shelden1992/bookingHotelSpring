package org.courses.model;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.util.StringJoiner;

@Entity
public class Reservation extends BaseEntity {
    @NotNull
    @NotEmpty
    @ManyToOne
    @JoinTable(name = "room_reservation", joinColumns = {@JoinColumn(name = "reservation_id")},
            inverseJoinColumns = @JoinColumn(name = "room_id"))
//    @JoinColumn(name = "room_id", referencedColumnName = "id")
    private Room room;
    @NotNull
    @NotEmpty
    @Column(name = "start_reservation")
    private Date startReservation;
    @NotNull
    @Column(name = "finish_reservation")
    @NotEmpty
    private Date finishReservation;

    public Reservation() {
    }

    public Reservation(int id, Room room, Date startReservation, Date finishReservation) {
        this.id = id;
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public Reservation(Room room, Date startReservation, Date finishReservation) {
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public Reservation(Date startReservation, Date finishReservation) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public int getId() {
        return id;
    }

    public void setId(int reservationId) {
        this.id = reservationId;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getStartReservation() {
        return startReservation;
    }

    public void setStartReservation(Date startReservation) {
        this.startReservation = startReservation;
    }

    public Date getFinishReservation() {
        return finishReservation;
    }

    public void setFinishReservation(Date finishReservation) {
        this.finishReservation = finishReservation;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Reservation.class.getSimpleName() + "[", "]")
                .add("room=" + room)
                .add("startReservation=" + startReservation)
                .add("finishReservation=" + finishReservation)
                .add("id=" + id)
                .toString();
    }
}
