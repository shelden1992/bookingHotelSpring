package org.courses.form;

import org.courses.model.RoomType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.StringJoiner;

@Component
public class BookingForm {
    @DateTimeFormat(pattern = "dd MMMM, yyyy")
    private Date checkIn;
    @DateTimeFormat(pattern = "dd MMMM, yyyy")
    private Date checkOut;
    private int adults;
    private RoomType type;

    public BookingForm() {
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    public int getAdults() {
        return adults;
    }

    public void setAdults(int adults) {
        this.adults = adults;
    }

    public RoomType getType() {
        return type;
    }

    public void setType(RoomType type) {
        this.type = type;
    }

    public BookingForm(Date checkIn, Date checkOut, int adults, RoomType type) {
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.adults = adults;
        this.type = type;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", BookingForm.class.getSimpleName() + "[", "]")
                .add("checkIn=" + checkIn)
                .add("checkOut=" + checkOut)
                .add("adults=" + adults)
                .add("type=" + type)
                .toString();
    }
}
