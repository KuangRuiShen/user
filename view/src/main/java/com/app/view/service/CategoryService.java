package com.app.view.service;

import java.util.List;

import com.app.view.pojo.Category;

public interface CategoryService {

	List<Category> list(String string);

	void add(Category c);

	void update(Category c);

	void delete(List<String> ids);

}
