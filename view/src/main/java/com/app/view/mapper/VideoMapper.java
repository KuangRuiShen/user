package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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

	@Update("update video set videourl=#{path} where id =#{id}")
	void saveVideourl(@Param("id") String vid,@Param("path") String path);

	@Select("select * from video where id =#{id}")
	Video findbyId(String id);

	void addcid(Video v);
	
	//删除类型
	void deletecid(List<String> ids);


}
