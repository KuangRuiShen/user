package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.WelcomeMapper;
import com.app.view.service.WelcomeService;

@Service
public class WelcomeServiceImpl implements WelcomeService {
	
	@Autowired
	private WelcomeMapper welcomeMapper;

	@Override
	public void save(List<String> imgurls) {
		welcomeMapper.delete();	
		if(imgurls.size() >0){
			welcomeMapper.save(imgurls);
		}
	}

	@Override
	public List<String> list() {
		// TODO Auto-generated method stub
		return welcomeMapper.list();
	}

	

}
