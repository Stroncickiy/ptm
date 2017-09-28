package org.mechatronics.dao.impl;

import java.util.Iterator;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.mechatronics.dao.UserDAO;
import org.mechatronics.model.SiteUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl extends CommonDAOImpl<SiteUser> implements UserDAO {

	@Autowired
	public UserDAOImpl(EntityManager entityManager) {
		super(SiteUser.class, entityManager);
	}

	@Override
	@SuppressWarnings("unchecked")
	public SiteUser getUserByEmail(String email) {
		Session session = ((Session) entityManager.getDelegate());
		Query findByEmailQuery = session.createQuery("from SiteUser u  where u.email = :email AND u.enabled = true ");
		findByEmailQuery.setParameter("email", email);
		Iterator<SiteUser> iterate = findByEmailQuery.iterate();
		if (iterate.hasNext()) {
			return iterate.next();
		} else {
			return null;
		}

	}

}
