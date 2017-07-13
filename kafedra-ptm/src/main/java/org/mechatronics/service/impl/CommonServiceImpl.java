package org.mechatronics.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.mechatronics.dao.CommonDAO;
import org.mechatronics.service.CommonService;

@Transactional
public abstract class CommonServiceImpl<O> implements CommonService<O> {

	@Override
	public void refresh(O item) {
		getDaoDelegate().refresh(item);

	}

	@Override
	public O add(O item) {
		return getDaoDelegate().add(item);
	}

	@Override
	public boolean remove(O item) {
		return getDaoDelegate().remove(item);
	}

	@Override
	public O getById(Long id) {
		return getDaoDelegate().getById(id);
	}

	@Override
	public List<O> getAll() {
		return getDaoDelegate().getAll();
	}

	public abstract CommonDAO<O> getDaoDelegate();

	@Override
	public boolean update(O item) {
		return getDaoDelegate().update(item);
	}

}
