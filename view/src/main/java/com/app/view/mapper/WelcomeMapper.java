package com.app.view.mapper;

import java.util.List;

import com.app.view.pojo.Welcome;

public interface WelcomeMapper {

	//清空所有
	void delete(List<String> ids);
	
	//修改
	void update(Welcome w);
	
	//查询
	List<Welcome> list();
	
	void add(Welcome w);

}
