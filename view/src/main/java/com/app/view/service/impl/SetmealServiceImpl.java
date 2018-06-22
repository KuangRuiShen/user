package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.entry.Setmeal;
import com.app.view.mapper.SetmealMapper;
import com.app.view.service.SetmealService;

@Service
public class SetmealServiceImpl implements SetmealService {

	@Autowired
	private SetmealMapper setmealMapper;
	
	@Override
	public List<Setmeal> list() {
		return setmealMapper.list();
	}

	@Override
	public void edit(Setmeal sm) {
		setmealMapper.delete(sm.getId());
		setmealMapper.add(sm);
	}

}
