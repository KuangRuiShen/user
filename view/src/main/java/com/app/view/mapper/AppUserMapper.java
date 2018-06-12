package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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

}
