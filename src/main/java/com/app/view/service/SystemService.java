package com.app.view.service;

import java.util.List;
import java.util.Map;

import com.app.view.pojo.LoginUser;
import com.app.view.pojo.MyItem;

/**
 * @author krs
 * @time 2018年10月8日 上午9:51:43
 * @describe
 */

public interface SystemService {

	List<LoginUser> list(String username);

	void add(LoginUser u);

	void edit(LoginUser u);

	void delete(List<String> ids);

	boolean changePassword(LoginUser user);

	int checkUsername(String username);

	List<MyItem> getUser(String userId);

	LoginUser getById(Integer id);

	List<Map<String, Object>> total(String id, int total);

}
