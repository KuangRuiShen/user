package com.app.view.service;

import java.util.List;

import com.app.view.pojo.Video;

public interface VideoService {

	List<Video> list(String name, String cid);

	void add(Video v);

	void update(Video v);

	void delete(List<String> ids);

	void addrelation(Video v);

	void saveVideourl(String vid, String path);

}
