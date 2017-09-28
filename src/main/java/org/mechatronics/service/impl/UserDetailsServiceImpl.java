package org.mechatronics.service.impl;

import org.mechatronics.enums.UserRole;
import org.mechatronics.model.SiteUser;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service("myUserDetailsService")
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userSerivice;


    @Override
    public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {
        SiteUser siteUser = userSerivice.getUserByEmail(email);
        if (siteUser != null) {
            List<GrantedAuthority> authorities = buildUserAuthority(siteUser.getRoles());
            return buildUserForAuthentication(siteUser, authorities);
        } else {
            throw new UsernameNotFoundException("username " + email + " not found in database");
        }


    }

    private org.springframework.security.core.userdetails.User buildUserForAuthentication(
            SiteUser siteUser, List<GrantedAuthority> authorities) {
        return new org.springframework.security.core.userdetails.User(siteUser.getEmail(),
                siteUser.getPassword(), siteUser.isEnabled(), true, true, true, authorities);
    }

    private List<GrantedAuthority> buildUserAuthority(List<UserRole> userRoles) {
        Set<GrantedAuthority> setAuths =
                userRoles.stream().map(userRole -> new SimpleGrantedAuthority(userRole.name()))
                        .collect(Collectors.toSet());
        return new ArrayList<>(setAuths);
    }

}