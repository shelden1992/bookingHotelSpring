package org.courses.form;

import lombok.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LoginForm {
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String name;
    @NotNull
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String email;
    @NotNull
    @Setter
    @Getter
    @NotNull(message = "error.cant.be.empty")
    @Size(min = 1, message = "error.cant.be.empty")
    private String password;
    @Setter
    @Getter
    private String passwordConfirm;
}
