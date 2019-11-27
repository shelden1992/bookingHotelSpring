package org.courses.model;

import javax.persistence.Column;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.StringJoiner;

@javax.persistence.Entity
public class Photo extends Entity {
    @NotNull
    @NotEmpty
    @Column(name = "photo_link")
    private String photoLink;
    @Column(name = "room_numb")
    private int roomId;

    public Photo(int id, int roomId, String photoLink) {
        this.id = id;
        this.photoLink = photoLink;
        this.roomId = roomId;
    }

    public String getPhotoLink() {
        return photoLink;
    }

    public void setPhotoLink(String photoLink) {
        this.photoLink = photoLink;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Photo.class.getSimpleName() + "[", "]")
                .add("photoLink='" + photoLink + "'")
                .add("roomId=" + roomId)
                .add("id=" + id)
                .toString();
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Override
    public int getEntityId() {
        return id;
    }

    @Override
    public void setEntityId(int id) {
        this.id = id;
    }
}
