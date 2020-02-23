package org.courses.service;

import org.apache.log4j.Logger;
import org.courses.dao.UserRepository;
import org.courses.form.RegistrationForm;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private static final Logger LOG = Logger.getLogger(UserServiceImpl.class);
    @Resource
    private UserRepository userRepository;
    @Resource
    private PasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public User registerUser(RegistrationForm registrationForm, UserRole userRole) {
        if (registrationForm == null || userRole == null) {
            return null;
        }
        if (userExist(registrationForm.getName(), registrationForm.getEmail())) {
            return null;
        }
        User user = getUser(registrationForm, userRole);
        User userSave = userRepository.save(user);
        LOG.debug("User save " + userSave.toString());
        return userSave;
    }

    @Override
    @Transactional
    public boolean userExist(String name, String email) {
        boolean userExist = userRepository.findByNameAndEmail(name, email) != null;
        LOG.debug("User already exist " + userExist);
        return userExist;
    }

    @Override
    @Transactional
    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @Override
    public Page<User> getUsers(Pageable pageable) {
        System.out.println("page " + pageable.getPageSize());

        Page<User> content = userRepository.findAll(pageable);
        System.out.println(content.getContent());
        return content;
    }

    public boolean passwordSame(String rawPassword, String encodedPassword) {
        return passwordEncoder.matches(rawPassword, encodedPassword);
    }

    private String passwordEncoder(String password) {
        return passwordEncoder.encode(password);
    }

    private User getUser(RegistrationForm registrationForm, UserRole userRole) {
        User user = new User();
        user.setName(registrationForm.getName());
        user.setAdditionalInfo(registrationForm.getNotes());
        user.setSurname(registrationForm.getSurname());
        user.setPassword(passwordEncoder(registrationForm.getPassword()));
        user.setEmail(registrationForm.getEmail());
        user.setPhone(registrationForm.getPhone());
        user.setUserRole(userRole);
        return user;
    }

}
