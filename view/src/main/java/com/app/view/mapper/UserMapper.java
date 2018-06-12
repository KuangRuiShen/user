package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.app.view.pojo.AppUser;
import com.app.view.pojo.User;

/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:20:57
 * @describe
 */

public interface UserMapper {

	List<AppUser> find(@Param("username") String username);

	Integer add(AppUser u);

	
	@Select("select * from login_user where id = #{id}")
	User findById(@Param("id") String id);

	@Update(" update login_user set password=#{password}  where id = #{id}" )
	void updatePassword(User u);
	
}
