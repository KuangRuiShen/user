package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.WelcomeMapper;
import com.app.view.pojo.Welcome;
import com.app.view.service.WelcomeService;

@Service
public class WelcomeServiceImpl implements WelcomeService {
	
	@Autowired
	private WelcomeMapper welcomeMapper;


	@Override
	public List<Welcome> list() {
		return welcomeMapper.list();
	}

	@Override
	public void add(Welcome w) {
		welcomeMapper.add(w);
	}

	@Override
	public void delete(List<String> ids) {
		welcomeMapper.delete(ids);
	}

	@Override
	public void update(Welcome w) {
		welcomeMapper.update(w);	
	}

	

}
