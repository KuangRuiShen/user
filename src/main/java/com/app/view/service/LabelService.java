package com.app.view.service;

import java.util.List;

import com.app.view.pojo.Label;

public interface LabelService {

	void add(Label l);

	List<Label> list(String name);

	void update(Label l);

	int findVideo(List<String> ids);

	void delete(List<String> ids);

}
