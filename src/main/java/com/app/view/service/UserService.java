package com.app.view.service;

import com.app.view.pojo.User;

/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:35:05
 * @describe
 */
public interface UserService {

	User findById(String id);

	void updatePassword(User u);

}
