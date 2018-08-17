package com.app.view.mapper;

import java.util.List;

import com.app.view.pojo.Label;

public interface LaberMapper {

	void add(Label l);

	List<Label> add(String name);

	int findVideo(List<String> ids);

	void delete(List<String> ids);

	void update(Label l);

}
