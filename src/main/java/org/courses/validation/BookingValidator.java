package org.courses.validation;

import org.courses.form.BookingForm;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.util.Date;

@Component(value = "bookingValidator")
public class BookingValidator implements Validator {

    private static final long ONE_DAY_MILL = 86400000L;

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(BookingForm.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        BookingForm bookingForm = (BookingForm) target;
        Date todayDate = getTodayDate();
        Date checkIn = bookingForm.getCheckIn();
        if (checkIn == null || checkIn.before(todayDate)) {
            bookingForm.setCheckIn(todayDate);
        }
        Date checkOut = bookingForm.getCheckOut();
        if (checkOut==null||checkOut.before(todayDate)) {
            bookingForm.setCheckOut(getTomorrowDate());
        }

    }

    private Date getTodayDate() {
        long today = System.currentTimeMillis();
        return new Date(today);
    }

    private Date getTomorrowDate() {
        long today = System.currentTimeMillis() + ONE_DAY_MILL;
        return new Date(today);
    }
}
