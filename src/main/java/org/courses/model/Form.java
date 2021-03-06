package org.courses.model;

import javax.persistence.Column;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.StringJoiner;

@javax.persistence.Entity
public class Form extends Entity {
    @NotNull
    @NotEmpty
    @OneToOne
    private User user;
    @NotNull
    @NotEmpty
    @OneToOne
    private Reservation reservation;
    @NotNull
    @NotEmpty
    @Column(name = "total")
    private double total;

    public Form() {
    }


    public Form(User user, Reservation reservation, double total) {
        this.user = user;
        this.reservation = reservation;
        this.total = total;
    }

    public Form(Reservation reservation) {
        this.reservation = reservation;
    }

    public Form(int id, User user, Reservation reservation) {
        this.id = id;
        this.user = user;
        this.reservation = reservation;
    }

    public Form(User user, Reservation reservation) {
        this.user = user;
        this.reservation = reservation;
    }

    public Form(User user) {
        this.user = user;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


    public int getEntityId() {
        return id;
    }

    public void setEntityId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Form.class.getSimpleName() + "[", "]")
                .add("user=" + user)
                .add("reservation=" + reservation)
                .add("id=" + id)
                .toString();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

}
