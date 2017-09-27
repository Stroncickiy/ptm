package org.mechatronics.dao.impl;

import java.util.Iterator;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.mechatronics.dao.UserDAO;
import org.mechatronics.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl extends CommonDAOImpl<User> implements UserDAO {

	@Autowired
	public UserDAOImpl(EntityManager entityManager) {
		super(User.class, entityManager);
	}

	@Override
	@SuppressWarnings("unchecked")
	public User getUserByEmail(String email) {
		Session session = ((Session) entityManager.getDelegate());
		Query findByEmailQuery = session.createQuery("from User u  where u.email = :email ");
		findByEmailQuery.setParameter("email", email);
		Iterator<User> iterate = findByEmailQuery.iterate();
		if (iterate.hasNext()) {
			return iterate.next();
		} else {
			return null;
		}

	}

}
