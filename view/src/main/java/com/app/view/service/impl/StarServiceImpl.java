package com.app.view.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.StarMapper;
import com.app.view.pojo.Star;
import com.app.view.service.StarService;

@Service
public class StarServiceImpl implements StarService {

	@Autowired
	private StarMapper starMapper;
	
	@Override
	public List<Star> list(String name) {
		return starMapper.list(name);
	}

	@Override
	public void add(Star c) {
		starMapper.add(c);
	}

	@Override
	public void update(Star c) {
		starMapper.update(c);	
	}

	@Override
	public void delete(List<String> ids) {
		starMapper.delete(ids);
	}

	@Override
	public List<Map<String, String>> all() {
		// TODO Auto-generated method stub
		return starMapper. all();
	}

	@Override
	public int findVideo(List<String> ids) {
		return starMapper.findVideo(ids);
	}
	
}
