package com.app.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.Welcome;
import com.app.view.service.WelcomeService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;

@RestController
@RequestMapping("welcome")
public class WelcomeController {
	
	@Autowired
	private WelcomeService welcomeService;

	@PostMapping("add")
	public JsonResult<?> add(@RequestBody Welcome w,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	   	
			welcomeService.add(w);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@PostMapping("update")
	public JsonResult<?> update(@RequestBody Welcome w,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	
			if(w.getId() == null){
				return JsonResult.buildExceptionResult("id不能为空");
			}
			welcomeService.update(w);
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
			welcomeService.delete(ids);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("删除异常,请联系管理员!");
		}
	}

	
	@GetMapping
	public JsonResult<?> welcome(){
		try {		
        	return JsonResult.buildSuccessResult(welcomeService.list());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
	}
	
	

}
