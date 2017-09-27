package org.mechatronics.dao;

import org.mechatronics.model.User;

public interface UserDAO extends CommonDAO<User> {

	User getUserByEmail(String email);


}
