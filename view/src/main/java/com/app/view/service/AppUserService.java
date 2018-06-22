package com.app.view.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.app.view.pojo.AppUser;

/**
 * @author krs
 * @date 创建时间  2018年6月11日 下午10:02:03
 * @describe
 */
public interface AppUserService {

	List<AppUser> find(AppUser a);

	AppUser add(AppUser u);

	AppUser findById(@Param("id") String id);

	void update(String id);

	List<Map<String, String>> log(String uid, String result);

	List<Map<String, String>> getMange();
	
	//获取当前有效的会员
	void getMember();
	//修改用户角色为普通用户
	void changeRole(String id);

	void changeinfo(Map<String, String> param);

	List<Map<String,String>> order(String name);

}
