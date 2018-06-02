package com.app.view.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.VideoMapper;
import com.app.view.pojo.Video;
import com.app.view.service.VideoService;
import com.app.view.util.MyUtils;

@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	private VideoMapper videoMapper;
	
	@Override
	public List<Video> list(String name,String cid) {
		return videoMapper.list(name,cid);
	}

	@Override
	public void add(Video v) {
		 v.setId(MyUtils.getUUID());
		 videoMapper.add(v);
	}

	@Override
	public void update(Video v) {
		 videoMapper.update(v);
	}

	@Override
	public void delete(List<String> ids) {
		 videoMapper.delete(ids);
		 //删除图片
//		List<Map<String,String>> imgs = videoMapper.findimgs(ids);
//		File folder = new File("files");
//		folder.delete();
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



}
