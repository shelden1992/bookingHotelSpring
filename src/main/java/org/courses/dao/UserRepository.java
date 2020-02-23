package org.courses.dao;

import org.courses.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByNameAndEmail(String name, String email);
    User findByEmailAndPassword (String email, String passwordEncoder);
    User findByEmail(String email);
    List<User> findAll();
    Page<User> findAll(Pageable pageable);
}
