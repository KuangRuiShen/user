package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.app.view.pojo.MyItem;

public interface CodeMapper {
	
	@Select(" select code_id as `key` ,name as `value`  from code where  type =#{type} order by code_id ")
	List<MyItem> list(String type);
}
