package org.mechatronics.dao;

import org.mechatronics.model.SiteUser;

public interface UserDAO extends CommonDAO<SiteUser> {

	SiteUser getUserByEmail(String email);


}
