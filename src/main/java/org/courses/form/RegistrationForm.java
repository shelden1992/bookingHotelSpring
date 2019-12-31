package org.courses.form;

import lombok.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@ToString
@AllArgsConstructor
@NoArgsConstructor
//@PassportMatchValidator
public class RegistrationForm {
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String name;
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String surname;
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String phone;
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String password;
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String passwordConfirm;
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String email;
    @Setter
    @Getter
    private String notes;

}
