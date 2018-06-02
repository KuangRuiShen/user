package com.app.view.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.User;
import com.app.view.service.UserService;
import com.app.view.util.JsonResult;
import com.app.view.util.MD5;
import com.app.view.util.ResultCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:30:43
 * @describe
 */
@RestController
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//添加用户
	@PostMapping("/add")
	public JsonResult<?> addUser(@Valid @RequestBody User u,BindingResult bindingResult){		
		try {
			if (bindingResult.hasErrors()) {
				 return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
		      }	
			userService.add(u);
			return JsonResult.buildSuccessResult();				
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	//
	@GetMapping("list")
	public JsonResult<?> list(Integer page,Integer pageSize,String name){
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;	
		try {
			  PageHelper.startPage(page, pageSize);
	          PageInfo<User> pageInfo = new PageInfo<User>(userService.find(name));
	          return JsonResult.buildSuccessResult(pageInfo.getList(),pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}
		
	}
	
	//添加用户
	@PostMapping("/password")
	public JsonResult<?> updatework(@RequestBody User u){		
		try {		
			User user = userService.findById(u.getId());
			if(user!=null && MD5.enc(u.getLastpassword()).equals(u.getPassword())){
				userService.updatePassword(u);
				return JsonResult.buildSuccessResult();		
			}else{
				return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"输入的原始密码有误");
			}		
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	
		
	
}
