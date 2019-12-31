//package org.courses.validation;
//
//import org.courses.form.RegistrationForm;
//
//import javax.validation.ConstraintValidator;
//import javax.validation.ConstraintValidatorContext;
//
//public class PasswordConfirmValidation implements ConstraintValidator<PassportMatchValidator, RegistrationForm> {
//    public boolean isValid(RegistrationForm registrationForm, ConstraintValidatorContext context) {
//        if (registrationForm == null) {
//            return false;
//        }
//        if (registrationForm.getPassword() != null && registrationForm.getPasswordConfirm() != null) {
//            return registrationForm.getPassword().equals(registrationForm.getPasswordConfirm());
//        }
//
//        return false;
//    }
//
//    @Override
//    public void initialize(PassportMatchValidator constraintAnnotation) {
//
//    }
//}
