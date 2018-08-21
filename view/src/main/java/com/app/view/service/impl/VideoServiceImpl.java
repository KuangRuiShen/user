package com.app.view.service.impl;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.entry.VideoCondtion;
import com.app.view.mapper.LabelMapper;
import com.app.view.mapper.VideoMapper;
import com.app.view.pojo.Video;
import com.app.view.service.VideoService;
import com.app.view.util.MyUtils;

@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	private VideoMapper videoMapper;
	
	@Autowired
	private LabelMapper labelMapper;
	
	@Override
	public List<Video> list(VideoCondtion vc) {
		return videoMapper.list(vc);
	}
	
	@Override
	public int count(VideoCondtion vc) {
		return videoMapper.count(vc);
	}

	@Override
	public void add(Video v) {
		 v.setId(MyUtils.getUUID());
		 videoMapper.add(v);
		 if(!v.getCids().isEmpty()){
			 videoMapper.addcid(v);
		 }	 
		 //添加标签
		 if(!v.getLabelIds().isEmpty()){
			 labelMapper.addConn(v.getId(),v.getLabelIds());
		 }
		
	}

	@Override
	public void update(Video v) {	
		 videoMapper.update(v);
		 videoMapper.deletecid(Arrays.asList(v.getId()));
		 if(!v.getCids().isEmpty()){
			 videoMapper.addcid(v);
		 }
		 //删除标签
		 labelMapper.deleteConnByid(v.getId());
		 if(!v.getLabelIds().isEmpty()){
			 labelMapper.addConn(v.getId(),v.getLabelIds());
		 }
	}

	@Override
	public void delete(List<String> ids) {
		 videoMapper.delete(ids);		
		 //删除图片
//		List<Map<String,String>> imgs = videoMapper.findimgs(ids);
//		File folder = new File("files");
//		folder.delete();
		 videoMapper.deletecid(ids);
		 videoMapper.deleteImg(ids);
	}
	


	@Override
	public void addrelation(Video v) {
		 videoMapper.deleteImg(Arrays.asList(v.getId()));
		 if(!v.getImgs().isEmpty()){
			 videoMapper.addrelation(v);	 
		 }
	}

	@Override
	public void saveVideourl(String vid, String path) {
		videoMapper.saveVideourl(vid,path);	 	
	}

	@Override
	public Video findbyId(String id) {
		return videoMapper.findbyId(id);
	}

	@Override
	public List<Video> hobbyList(VideoCondtion vc) {
		//默认10条
		 int num = 10;		 
		 List<Video> list =  videoMapper.list(vc);
		 Collections.shuffle(list);//打算顺序
		 
		return 	list.subList(0, num-1);
	}





}
