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
    @Enumerated(value = EnumType.STRING)
    private RoomType roomType;
    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            mappedBy = "room")
    private List<Photo> photos;

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

    public int getEntityId() {
        return id;
    }

    public void setEntityId(int id) {
        this.id = id;
    }

    public Room() {
    }

    public int getPlace() {
        return place;
    }

    public void setPlace(int places) {
        this.place = places;
    }

}
