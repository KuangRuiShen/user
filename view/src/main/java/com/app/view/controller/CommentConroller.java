package com.app.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.Comment;
import com.app.view.service.CommentService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
//评论
@RestController
@RequestMapping("comment")
public class CommentConroller {
	
	@Autowired
	private CommentService commentService;
	

	@GetMapping("list")
	public JsonResult<?> list(Integer page,Integer pageSize,String username,String role){		
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;	 
		try {
			Comment c = new Comment();
				c.setUsername(username);
				c.setRole(role);
			 PageHelper.startPage(page, pageSize);
	          PageInfo<Comment> pageInfo = new PageInfo<Comment>( commentService.list(c));
	          return JsonResult.buildSuccessResult(pageInfo.getList(),pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}	
	}
	
	@GetMapping("find")
	public JsonResult<?> find(Integer num){		
		try{
		List<Comment> datas = commentService.query(num);
	         return JsonResult.buildSuccessResult(datas);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}	
	}
	
	@PostMapping("add")
	public JsonResult<?> add(@RequestBody Comment c,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	   	
			commentService.add(c);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@PostMapping("update")
	public JsonResult<?> update(@RequestBody Comment c,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	
			if(c.getId() ==null ){
				return JsonResult.buildExceptionResult("id不能为空");
			}
			commentService.update(c);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("修改失败,请联系管理员!");
		}
   
	}
	
	@PostMapping("delete")
	public JsonResult<?> delete(@RequestBody List<String> ids){
		try {					
			if(ids.isEmpty()){
				return JsonResult.buildExceptionResult("参数不能为空");
			}
			commentService.delete(ids);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("删除异常,请联系管理员!");
		}
	}


}
