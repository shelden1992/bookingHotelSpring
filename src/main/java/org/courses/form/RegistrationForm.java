package org.courses.form;

import lombok.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
//@PassportMatchValidator
public class RegistrationForm {
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String name;
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String surname;
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String phone;
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String password;
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String passwordConfirm;
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String email;
    private String notes;

}
