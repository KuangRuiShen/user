package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.LaberMapper;
import com.app.view.pojo.Label;
import com.app.view.service.LabelService;

@Service
public class LabelServiceImpl implements LabelService {
	
	@Autowired
	private LaberMapper laberMapper;
	
	
	@Override
	public void add(Label l) {
		laberMapper.add(l);	
	}

	@Override
	public List<Label> list(String name) {
		return 	laberMapper.add(name);	
	}

	@Override
	public void update(Label l) {
		laberMapper.update(l);	
	}

	@Override
	public int findVideo(List<String> ids) {
		// TODO Auto-generated method stub
		return laberMapper.findVideo(ids);
	}

	@Override
	public void delete(List<String> ids) {
		laberMapper.delete(ids);	
		
	}

}
