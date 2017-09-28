package org.mechatronics.service.impl;

import org.mechatronics.dao.CommonDAO;
import org.mechatronics.dao.UserDAO;
import org.mechatronics.model.SiteUser;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;

@Service
@Transactional
public class UserServiceImpl extends CommonServiceImpl<SiteUser> implements UserService {

    @Autowired
    private UserDAO userDAO;

    private PasswordEncoder passwordEncoder;

    @PostConstruct
    public void init() {
        passwordEncoder = new BCryptPasswordEncoder();
    }

    public SiteUser add(SiteUser siteUser) {
        siteUser.setPassword(passwordEncoder.encode(siteUser.getPassword()));
        return userDAO.add(siteUser);
    }

    @Override
    public SiteUser getUserByEmail(String email) {
        return userDAO.getUserByEmail(email);
    }

    @Override
    public CommonDAO<SiteUser> getDaoDelegate() {
        return userDAO;
    }

}
