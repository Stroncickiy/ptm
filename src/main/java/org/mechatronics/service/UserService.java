package org.mechatronics.service;

import org.mechatronics.model.SiteUser;

public interface UserService extends CommonService<SiteUser> {

	SiteUser getUserByEmail(String email);

}
