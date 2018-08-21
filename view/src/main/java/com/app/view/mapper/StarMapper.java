package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.app.view.pojo.Star;


public interface StarMapper {
	
	List<Star> list(@Param("name") String name, @Param("sid")String sid);

	void add(Star c);

	void update(Star c);

	void delete(List<String> ids);

	@Select("select id as `key` , name as `value` from star  order by  CONVERT(px,SIGNED)	  ")
	List<Map<String, String>> all();
	
	int findVideo(List<String> ids);
}
