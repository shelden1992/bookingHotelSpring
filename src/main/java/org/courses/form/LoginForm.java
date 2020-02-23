package org.courses.form;

import lombok.*;
import org.courses.validation.ValidEmail;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class LoginForm {

    private int id;
    @ValidEmail
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String email;

    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String password;
}
