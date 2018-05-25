package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.app.view.pojo.User;

/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:20:57
 * @describe
 */

public interface UserMapper {

	List<User> find(@Param("username") String username);

	Integer add(User u);
	


}
