package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.app.view.entry.VideoCondtion;
import com.app.view.pojo.Video;


public interface VideoMapper {

	List<Video> list(VideoCondtion vc);

	void add(Video v);

	void update(Video v);

	void delete(List<String> ids);

	void deleteImg(List<String> ids);

	List<Map<String, String>> findimgs(List<String> ids);
	//添加关系表
	void addrelation(Video v);
	
	@Delete("DELETE FROM video_upload WHERE id=#{id}")
	void deleteVideourl(@Param("id") String id);

	@Insert("insert video_upload (id,videourl) VALUES (#{id},#{path}")
	void saveVideourl(@Param("id") String vid,@Param("path") String path);

	@Select("select videourl from video_upload where id =#{id}")
	String findbyId(String id);

	void addcid(Video v);
	
	//删除类型
	void deletecid(List<String> ids);

	int count(VideoCondtion vc);
	
	


}
