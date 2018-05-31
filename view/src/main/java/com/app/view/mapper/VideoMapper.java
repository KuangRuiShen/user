package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.app.view.pojo.Video;


public interface VideoMapper {

	List<Video> list(@Param("name") String name,@Param("cid")  String cid);

	void add(Video v);

	void update(Video v);

	void delete(List<String> ids);

	void deleteImg(List<String> ids);

	List<Map<String, String>> findimgs(List<String> ids);

}
