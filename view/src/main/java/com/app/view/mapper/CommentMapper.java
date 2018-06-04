package com.app.view.mapper;

import java.util.List;

import com.app.view.pojo.Comment;



public interface CommentMapper {

	void update(Comment c);

	void delete(List<String> ids);

	void add(Comment c);

	List<Comment> list(Comment c);
	

}
