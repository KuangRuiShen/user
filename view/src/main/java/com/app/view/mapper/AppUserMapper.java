package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.app.view.pojo.AppUser;

/**
 * @author krs
 * @date 创建时间  2018年6月11日 下午10:02:56
 * @describe
 */
public interface AppUserMapper {

	AppUser findById(String id);

	void add(AppUser u);

	List<AppUser> find(AppUser a);

	void update(AppUser user);

	List<Map<String, String>> log(@Param("uid")String uid, @Param("result")String result);

	List<Map<String, String>> getMange();

	@Select(" select * from user where role_id > 0 and role_id not in ('100' ,'5') ")
	List<AppUser> getMember();
	@Update(" UPDATE user SET role_id=0 where id=#{id} ")
	void changeRole(@Param("id") String id);

	@Update(" UPDATE user SET name=#{name},phone=#{phone} where id=#{id}  ")
	void changeinfo(Map<String, String> param);

	//查询所有订单
	List<Map<String, String>> order(@Param("name")String name);

}
