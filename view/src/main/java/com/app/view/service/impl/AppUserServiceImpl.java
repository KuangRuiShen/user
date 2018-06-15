package com.app.view.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.config.HomeScheduler;
import com.app.view.mapper.AppUserMapper;
import com.app.view.pojo.AppUser;
import com.app.view.service.AppUserService;
import com.app.view.util.MyUtils;


@Service
public class AppUserServiceImpl implements AppUserService {

	@Autowired
	private AppUserMapper appUserMapper;
	
	@Override
	public List<AppUser> find(AppUser a) {
		return  appUserMapper.find(a);
	}

	@Override
	public AppUser add(AppUser u) {
		u.setId(MyUtils.getUUID());	
		u.setRole_id("0");
		u.setRoleText("普通成员");
		if(StringUtils.isBlank(u.getInvite_id())){
			u.setRole_id("100");
			u.setRoleText("管理员");
		}
		//加密
		Date d = new Date();
		u.setRecharge_time(d);
		u.setValid_time(MyUtils.RechargeDate(d, "day"));
		appUserMapper.add(u);
		return u;
	}

	@Override
	public AppUser findById(String id) {
		return appUserMapper.findById(id);
	}

	@Override
	public void update(String id) {
		AppUser user = appUserMapper.findById(id);
		String role_id = user.getRole_id();
		Date d = new Date();
		user.setRecharge_time(d);
		if(StringUtils.isNotBlank(role_id)){
			int role = Integer.parseInt(role_id)+1;
			if(role < 100){
				user.setRole_id(role+"");
			}		
			user.setValid_time(MyUtils.RechargeDate(d, role+""));	
			appUserMapper.update(user);
		}	
	}

	@Override
	public List<Map<String, String>> log(String uid,String result) {
		return appUserMapper.log(uid,result);
	}

	@Override
	public List<Map<String, String>> getMange() {
		return appUserMapper.getMange();
	}

	@Override
	public void getMember() {	
		HomeScheduler.users = appUserMapper.getMember();
	}

	@Override
	public void changeRole(String id) {
		appUserMapper.changeRole(id);		
	}

	@Override
	public void changeinfo(Map<String, String> param) {
		appUserMapper.changeinfo(param);	
	}
}
