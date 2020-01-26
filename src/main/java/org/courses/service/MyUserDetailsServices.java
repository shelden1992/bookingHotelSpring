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
    private UserServiceImpl userServiceImpl;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        LOG.debug("Username " + username);
        User user = userServiceImpl.getUserByEmail(username);
        if (user == null) {
            throw new UsernameNotFoundException(username);
        }
        LOG.debug("User by email " + user);
        UserRole userRole = user.getUserRole();
        Set<SimpleGrantedAuthority> userAuthority = getUserAuthority(userRole);
        return buildUserForAuthentication(user, userAuthority);
    }

    private UserDetails buildUserForAuthentication(User userByEmail, Set<SimpleGrantedAuthority> userAuthority) {
        return new org.springframework.security.core.userdetails.User(userByEmail.getName(), userByEmail.getPassword(), true, true, true, true, userAuthority);

    }

    private Set<SimpleGrantedAuthority> getUserAuthority(UserRole userRole) {
        return Collections.singleton(new SimpleGrantedAuthority(userRole.getUserRoleName()));
    }
}
