package com.app.view.service.impl;

import java.util.ArrayList;
import java.util.Collections;
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

	@Override
	public List<Comment> query(Integer num) {
		if(num == null || num < 10){
			num = 10;
		}
			
		Comment c = new Comment();
		c.setRole("管理员");
		List<Comment> roots = commentMapper.list(c);
		c.setRole("普通用户");
		List<Comment> roles = commentMapper.list(c);
		List<Comment> datas = new ArrayList<Comment>();
		if(!roots.isEmpty()){
			 Collections.shuffle(roots);
			 datas.add(roots.get(0));
		}else{
			num++;
		}
		
		if(!roles.isEmpty() && roles.size() > num ){
			 Collections.shuffle(roles);
			 datas.addAll(roles.subList(0, num-1));
		}else{
			datas.addAll(roles);		
		}
		 Collections.shuffle(datas);
		
		return datas;
	}

	
}
