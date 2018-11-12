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
	public void edit(Setmeal sm) {
		setmealMapper.delete(sm.getId());	
		setmealMapper.add(sm);
	}

	@Override
	public List<Setmeal> list(Setmeal sm) {
		List<Setmeal> datas = setmealMapper.list(sm);
//		datas.forEach(action);
		return datas;
	}


}
