package org.courses.form;

import lombok.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class LoginForm {

    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String email;

    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String password;
}
