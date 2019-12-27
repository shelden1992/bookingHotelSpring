package org.courses.service;

import org.courses.dao.UserRepository;
import org.courses.form.LoginForm;
import org.courses.form.RegistrationForm;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserRepository userRepository;
    @Resource
    private PasswordEncoder passwordEncoder;

    public User registerUser(RegistrationForm registrationForm, UserRole user) {
        if (userExist(registrationForm.getName(), registrationForm.getEmail())) {
            return null;
        }


        return null;
    }


    public boolean userExist(String name, String email) {
        return userRepository.findByNameAndEmail(name, email) != null;
    }

    public boolean passwordSame(String password) {
        return false;

    }


//      private boolean userExist()
//       findByNameAndEmail()
}
