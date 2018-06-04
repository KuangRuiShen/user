package com.app.view.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.CommentMapper;
import com.app.view.pojo.Comment;
import com.app.view.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	
	@Override
	public void update(Comment c) {
		commentMapper.update(c);
	}

	@Override
	public void delete(List<String> ids) {
		commentMapper.delete(ids);	
	}

	@Override
	public void add(Comment c) {
		commentMapper.add(c);		
	}

	@Override
	public List<Comment> list(Comment c) {
		return commentMapper.list(c);	
	}

	
}
