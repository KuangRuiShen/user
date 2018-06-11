package com.app.view.service;

import java.util.List;

import com.app.view.entry.VideoCondtion;
import com.app.view.pojo.Video;

public interface VideoService {

	void add(Video v);

	void update(Video v);

	void delete(List<String> ids);

	void addrelation(Video v);

	void saveVideourl(String vid, String path);

	Video findbyId(String id);

	List<Video> list(VideoCondtion vc);

}
