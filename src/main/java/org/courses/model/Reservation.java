package org.courses.model;

import javax.persistence.Column;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.util.StringJoiner;

@javax.persistence.Entity
public class Reservation extends Entity {
    @NotNull
    @NotEmpty
    @OneToOne
    private Room room;
    @NotNull
    @NotEmpty
    @Column(name = "start_reservation")
    private Date startReservation;
    @NotNull
    @Column(name = "finish_reservation")
    @NotEmpty
    private Date finishReservation;
    private long dateDiff;

    public Reservation(Date startReservation, Date finishReservation) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public Reservation(Room room, Date startReservation, Date finishReservation) {
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public Reservation(int id, Room room, Date startReservation, Date finishReservation) {
        this.id = id;
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public Reservation(Room room, Date startReservation, Date finishReservation, long dateDiff) {
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
        this.dateDiff = dateDiff;
    }

    public Reservation(Date startReservation, Date finishReservation, long dateDiff) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
        this.dateDiff = dateDiff;
    }

    public int getEntityId() {
        return id;
    }

    public void setEntityId(int reservationId) {
        this.id = reservationId;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public long getDateDiff() {
        return dateDiff;
    }

    public void setDateDiff(long dateDiff) {
        this.dateDiff = dateDiff;
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
