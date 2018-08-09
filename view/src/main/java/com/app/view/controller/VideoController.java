package com.app.view.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.entry.VideoCondtion;
import com.app.view.pojo.Video;
import com.app.view.service.VideoService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;

@RestController
@RequestMapping("video")
public class VideoController {
	
	@Autowired
	private VideoService videoServce;
	
	@GetMapping("list")
	public JsonResult<?> list(String user_id,Integer page,Integer pageSize,String name,String cid,String sid,String level,String type){		
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		   pageSize = JsonResult.PAGESIZR;	
			VideoCondtion vc = new VideoCondtion();
			vc.setUser_id(user_id);
			vc.setCid(cid);
			vc.setName(name);
			vc.setSid(sid);
			vc.setLevel(level);
			vc.setType(type);
			vc.setPage(page);
			vc.setPageSize(pageSize);
      	  List<Video> list = videoServce.list(vc);
      	   int total = 	list.size();
      	   int end = total < (page * pageSize) ? total :page * pageSize;
          return JsonResult.buildSuccessResult(list.subList((page-1) * pageSize, end),total);
	}
	


	@PostMapping("add")
	public JsonResult<?> add(@RequestBody Video v,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	   	
			videoServce.add(v);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@PostMapping("update")
	public JsonResult<?> update(@RequestBody Video v,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	
			if(StringUtils.isBlank(v.getId())){
				return JsonResult.buildExceptionResult("id不能为空");
			}
			videoServce.update(v);
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
			videoServce.delete(ids);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("删除异常,请联系管理员!");
		}
	}

	
	@PostMapping("addrelation")
	public JsonResult<?> addrelation(@RequestBody Video v){
		try {		
			videoServce.addrelation(v);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@GetMapping("hobbyList")
	public JsonResult<?> hobbyList(Integer num){
		try {		
			  List<Video> list  = videoServce.hobbyList(num);
        	return JsonResult.buildSuccessResult(list);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	

}
