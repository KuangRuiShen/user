package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.LoginMapper;
import com.app.view.pojo.LoginUser;
import com.app.view.service.LoginService;

/**
 * @author krs
 * @date 创建时间  2018年5月29日 上午11:21:38
 * @describe
 */
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public List<LoginUser> login(String name) {
//		List<LoginUser> data = loginMapper.Login(name);	
		return loginMapper.Login(name);
	}


}
