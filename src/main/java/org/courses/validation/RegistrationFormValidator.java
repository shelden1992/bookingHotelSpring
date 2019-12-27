package org.courses.validation;


import org.courses.form.RegistrationForm;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component(value = "registrationFormValidator")
public class RegistrationFormValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {

        return RegistrationForm.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        RegistrationForm registrationForm = (RegistrationForm) target;
        if (registrationForm.getName() == null) {
            errors.rejectValue("name", "error.cant.be.empty");
        } else if (registrationForm.getSurname() == null) {
            errors.rejectValue("surname", "error.cant.be.empty");
        } else if (registrationForm.getEmail() == null) {
            errors.rejectValue("email", "error.cant.be.empty");
        } else if (registrationForm.getPhone() == null) {
            errors.rejectValue("phone", "error.cant.be.empty");
        } else if (registrationForm.getPassword() == null) {
            errors.rejectValue("password", "error.cant.be.empty");
        } else if (isPasswordNotMatch(registrationForm)) {
            errors.rejectValue("passwordConfirm", "error.login.password.not.match");
        }


    }

    private boolean isPasswordNotMatch(RegistrationForm form) {
        return !form.getPassword().equals(form.getPasswordConfirm());
    }
}
