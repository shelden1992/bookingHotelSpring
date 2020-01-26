package org.courses.service;

import org.courses.form.RegistrationForm;
import org.courses.model.User;
import org.courses.model.UserRole;

import java.util.List;

public interface UserService {
    User registerUser(RegistrationForm registrationForm, UserRole userRole);

    boolean userExist(String name, String email);

    User getUserByEmail(String email);

    List<User> getUsers();

}
