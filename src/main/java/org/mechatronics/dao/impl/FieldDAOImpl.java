package org.mechatronics.dao.impl;

import org.mechatronics.model.Field;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
public class FieldDAOImpl extends CommonDAOImpl<Field> {

    @Autowired
    public FieldDAOImpl(EntityManager entityManager) {
        super(Field.class, entityManager);
    }



}
