package org.mechatronics.dao.impl;

import org.mechatronics.model.Direction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
public class FieldDAOImpl extends CommonDAOImpl<Direction> {

    @Autowired
    public FieldDAOImpl(EntityManager entityManager) {
        super(Direction.class, entityManager);
    }



}
