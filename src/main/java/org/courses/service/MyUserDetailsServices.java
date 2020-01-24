package org.courses.service;

import org.apache.log4j.Logger;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.Set;

@Service("myUserDetailsService")
public class MyUserDetailsServices implements UserDetailsService {
    private static final org.apache.log4j.Logger LOG = Logger.getLogger(MyUserDetailsServices.class);
    @Resource
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        LOG.debug("Username " + username);
        User userByEmail = userService.getUserByEmail(username);
        LOG.debug("User by email " + userByEmail);
        UserRole userRole = userByEmail.getUserRole();
        Set<SimpleGrantedAuthority> userAuthority = getUserAuthority(userRole);
        return buildUserForAuthentication(userByEmail, userAuthority);
    }

    private UserDetails buildUserForAuthentication(User userByEmail, Set<SimpleGrantedAuthority> userAuthority) {
        return new org.springframework.security.core.userdetails.User(userByEmail.getName(), userByEmail.getPassword(), true, true, true, true, userAuthority);

    }

    private Set<SimpleGrantedAuthority> getUserAuthority(UserRole userRole) {
        return Collections.singleton(new SimpleGrantedAuthority(userRole.getUserRoleName()));
    }
}
