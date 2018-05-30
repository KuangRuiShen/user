package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.app.view.pojo.LoginUser;



/**
 * @author krs
 * @date 创建时间  2018年5月29日 上午11:22:59
 * @describe
 */
public interface LoginMapper {
	
	@Select("select * from login_user where username = #{username}")
	List<LoginUser> Login(@Param("username") String username);
}
