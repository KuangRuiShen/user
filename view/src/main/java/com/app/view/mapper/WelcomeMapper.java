package com.app.view.mapper;

import java.util.List;

public interface WelcomeMapper {

	//清空所有
	void delete();
	//保存
	void save(List<String> imgurls);
	
	//查询
	List<String> list();

}
