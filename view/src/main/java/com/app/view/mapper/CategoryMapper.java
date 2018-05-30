package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.app.view.pojo.Category;

/**
 * @author krs
 * @date 创建时间  2018年5月29日 下午9:27:01
 * @describe
 */
public interface CategoryMapper {
	
	List<Category> list(@Param("name") String name);
}
