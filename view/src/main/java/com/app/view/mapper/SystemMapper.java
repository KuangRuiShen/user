package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.app.view.pojo.LoginUser;
import com.app.view.pojo.MyItem;

/**
 * @author krs
 * @time 2018年10月8日 上午10:08:45
 * @describe
 */

public interface SystemMapper {

	List<LoginUser> list(@Param("username")String username);

	void add(LoginUser u);

	void edit(LoginUser u);

	void delete(List<String> ids);

	int changePassword(LoginUser user);

	int checkUsername(@Param("username")String username);

	List<MyItem> getUser();

	LoginUser getById(@Param("id")Integer id);

	List<Map<String, Object>> total(@Param("id")String id, @Param("total")int total);

}
