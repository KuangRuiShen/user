package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.app.view.pojo.Category;


public interface CategoryMapper {
	
	List<Category> list(@Param("name") String name);

	void add(Category c);

	void update(Category c);

	void delete(List<String> ids);

	@Select("select id as `key` , name as `value` from category  order by  CONVERT(px,SIGNED)	  ")
	List<Map<String, String>> all();

	int findVideo(List<String> ids);
}
