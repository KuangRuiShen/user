package com.app.view.service;

import java.util.List;

import com.app.view.pojo.Comment;

public interface CommentService {

	void update(Comment c);

	void delete(List<String> ids);

	void add(Comment c);

	List<Comment> list(Comment c);

	List<Comment> query(Integer num);
	
}
