package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.CategoryMapper;
import com.app.view.pojo.Category;
import com.app.view.service.CategoryService;
import com.app.view.util.MyUtils;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public List<Category> list(String name) {
		return categoryMapper.list(name);
	}

	@Override
	public void add(Category c) {
		c.setId(MyUtils.getUUID());
		categoryMapper.add(c);
	}

	@Override
	public void update(Category c) {
		categoryMapper.update(c);	
	}

	@Override
	public void delete(List<String> ids) {
		categoryMapper.delete(ids);
	}
	
}
