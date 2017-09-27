package org.mechatronics.service;

import org.mechatronics.model.User;

public interface UserService extends CommonService<User> {

	User getUserByEmail(String email);

}
