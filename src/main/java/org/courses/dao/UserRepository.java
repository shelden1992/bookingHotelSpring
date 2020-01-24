package org.courses.dao;

import org.courses.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
    User findByNameAndEmail(String name, String email);
    User findByEmailAndPassword (String email, String passwordEncoder);
    User findByEmail(String email);
}
