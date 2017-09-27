package org.mechatronics.service.impl;

import javax.annotation.PostConstruct;

import org.mechatronics.dao.CommonDAO;
import org.mechatronics.dao.UserDAO;
import org.mechatronics.model.User;
import org.mechatronics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl extends CommonServiceImpl<User> implements UserService {

	@Autowired
	private UserDAO userDAO;

	private PasswordEncoder passwordEncoder;

	@PostConstruct
	public void init() {
		passwordEncoder = new BCryptPasswordEncoder();
	}

	public User add(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		user.setEnabled(true);
		return userDAO.add(user);
	}

	@Override
	public User getUserByEmail(String email) {
		return userDAO.getUserByEmail(email);
	}

	@Override
	public CommonDAO<User> getDaoDelegate() {
		return userDAO;
	}

}
