package org.courses.service;

import org.courses.form.RegistrationForm;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface UserService {
    User registerUser(RegistrationForm registrationForm, UserRole userRole);

    boolean userExist(String name, String email);

    User getUserByEmail(String email);

    List<User> getUsers();

    Page<User> getUsers(Pageable pageable);

}
