package com.app.view.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.SystemMapper;
import com.app.view.pojo.LoginUser;
import com.app.view.pojo.MyItem;
import com.app.view.service.SystemService;
import com.app.view.util.MD5;

/**
 * @author krs
 * @time 2018年10月8日 上午9:51:54
 * @describe
 */
@Service
public class SystemServiceImpl implements SystemService {
	
	@Autowired
	private SystemMapper systemMapper;

	@Override
	public List<LoginUser> list(String username) {
		return systemMapper.list(username);
	}

	@Override
	public void add(LoginUser u) {
		// 密码加密
		String yhmm = MD5.decoDecode64(u.getPassword());
		u.setPassword(MD5.enc(yhmm));
		systemMapper.add(u);	
	}

	@Override
	public void edit(LoginUser u) {
		systemMapper.edit(u);	
	}

	@Override
	public void delete(List<String> ids) {
		systemMapper.delete(ids);
		
	}

	@Override
	public boolean changePassword(LoginUser user) {
		if (StringUtils.isNotBlank(user.getPassword()) ) {
			String yhmm = MD5.decoDecode64(user.getPassword());
			user.setPassword(MD5.enc(yhmm));// 加密
			return systemMapper.changePassword(user) == 1;
		} else {
			return false;
		}
	}

	@Override
	public int checkUsername(String username) {
		return systemMapper.checkUsername(username);
	}

	@Override
	public List<MyItem> getUser(String userId) {
		return systemMapper.getUser(userId);
	}

	@Override
	public LoginUser getById(Integer id) {
		// TODO Auto-generated method stub
		return systemMapper.getById(id);
	}

	@Override
	public List<Map<String, Object>> total(String id, int total) {
	
		return systemMapper.total(id,total);
	}

	@Override
	public int getNum() {
		return systemMapper.getNum();
	}

	@Override
	public void updateNum(Integer num) {
		systemMapper.updateNum(num);
	}

}
