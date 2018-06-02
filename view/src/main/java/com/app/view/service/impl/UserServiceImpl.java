package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.UserMapper;
import com.app.view.pojo.User;
import com.app.view.service.UserService;
import com.app.view.util.MD5;
import com.app.view.util.MyUtils;

/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:35:30
 * @describe
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> find(String username) {
		return  userMapper.find(username);
	}

	@Override
	public void add(User u) {
		u.setId(MyUtils.getUUID());
		u.setRole_id("0");
		//加密
		u.setPassword(MD5.enc(u.getPassword()));
		u.setCreat_time(MyUtils.getPreTime());
		userMapper.add(u);
//		return 1;
	}

	@Override
	public User findById(String id) {
		return 	userMapper.findById(id);
	}

	@Override
	public void updatePassword(User u) {
		u.setPassword(MD5.enc(u.getPassword()));	
		userMapper.updatePassword(u);	
	}

}
