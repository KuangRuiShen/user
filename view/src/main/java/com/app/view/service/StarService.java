package com.app.view.service;

import java.util.List;
import java.util.Map;

import com.app.view.pojo.Star;

public interface StarService {

	List<Star> list(String string);

	void add(Star c);

	void update(Star c);

	void delete(List<String> ids);

	List<Map<String, String>> all();
	
	int findVideo(List<String> ids);

}
