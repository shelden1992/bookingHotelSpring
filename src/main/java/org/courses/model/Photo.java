package org.courses.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "photo")
@ToString
public class Photo extends BaseEntity {
    @NotNull
    @NotEmpty
    @Getter
    @Setter
    @Column(name = "photo_link")
    private String photoLink;

    public Photo(int id, String photoLink) {
        this.id = id;
        this.photoLink = photoLink;
    }

    public Photo() {
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
