package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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

	List<MyItem> getUser(@Param("userId")String userId);

	LoginUser getById(@Param("id")Integer id);

	List<Map<String, Object>> total(@Param("id")String id, @Param("total")int total);

	@Select("select num from login_user where username = 'admin' ")
	int getNum();
	
    @Update(" update  login_user set num=#{num}  where username = 'admin'")
	void updateNum(@Param("num")Integer num);

}
