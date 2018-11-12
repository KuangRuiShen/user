package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.app.view.pojo.Label;

public interface LabelMapper {

	void add(Label l);

	List<Label> list(@Param("name")String name);

	int findVideo(List<String> ids);

	void delete(List<String> ids);

	void update(Label l);

	void deleteConn(List<String> ids);
	//添加关系
	void addConn(@Param("vid")String id,@Param("labelids") List<String> laberIds);
	
	void deleteConnByid(@Param("vid") String vid);

}
