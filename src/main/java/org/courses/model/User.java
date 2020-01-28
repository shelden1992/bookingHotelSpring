package org.courses.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "user")
@ToString
@Getter
@Setter
public class User extends BaseEntity {
    @NotNull
    @NotEmpty
    @Column(name = "name")
    private String name;
    @NotNull
    @NotEmpty
    @Column(name = "surname")
    private String surname;
    @Column(name = "email", unique = true)
    @NotNull
    @NotEmpty
    private String email;
    @Column(name = "password")
    private String password;
    @Column(name = "phone")
    private String phone;
    @Column(name = "user_role")
    @Enumerated(value = EnumType.STRING)
    private UserRole userRole;
    @Column(name = "additional_info")
    private String additionalInfo;

    public User() {
    }

    public User(String name, String surname, String email, String password, String phone, UserRole userRole, String additionalInfo) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.userRole = userRole;
        this.additionalInfo = additionalInfo;
    }

    public User(int id, String name, String surname, String email, String password, String phone, UserRole userRole, String additionalInfo) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.userRole = userRole;
        this.additionalInfo = additionalInfo;
    }

    public User(String name, String surname, String email, String password) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
    }

    public User(String name, String surname, String email, String password, String phone) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public User(String name, String surname, String password) {
        this.name = name;
        this.surname = surname;
        this.password = password;
    }

    @Override
    public int getId() {
        return this.id;
    }

    @Override
    public void setId(int id) {
        this.id = id;

    }
}
