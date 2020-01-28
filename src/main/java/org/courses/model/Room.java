package org.courses.model;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.StringJoiner;

@Entity
public class Room extends BaseEntity {

    @NotNull
    @NotEmpty
    @Column(name = "place")
    private int place;
    @NotNull
    @NotEmpty
    @Column(name = "price")
    private double price;
    @NotNull
    @NotEmpty
    @Column(name = "type")
    @Enumerated(EnumType.STRING)
    private RoomType roomType;
    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.EAGER)
    @JoinColumn(name = "room_id")
    private List<Photo> photos;
    @ManyToOne
    @JoinTable(name = "room_reservation", joinColumns = {@JoinColumn(name = "room_id")},
            inverseJoinColumns = @JoinColumn(name = "reservation_id"))
    private Reservation reservation;

    public Room(int place, RoomType roomType) {
        this.place = place;
        this.roomType = roomType;
    }

    public Room(int id, int place, double price, RoomType roomType, List<Photo> photoList) {
        this.id = id;
        this.place = place;
        this.price = price;
        this.roomType = roomType;
    }

    public List<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<Photo> photos) {
        this.photos = photos;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

    public Room() {
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Room.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("place=" + place)
                .add("price=" + price)
                .add("roomType=" + roomType)
                .toString();
    }

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPlace() {
        return place;
    }

    public void setPlace(int places) {
        this.place = places;
    }

}
