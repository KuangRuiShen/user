package com.app.view.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.LoginUser;
import com.app.view.service.LoginService;
import com.app.view.util.JsonResult;
import com.app.view.util.MD5;
import com.app.view.util.ResultCode;



@RestController
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	
	@PostMapping
	public JsonResult<?> list(@RequestBody LoginUser user){
			try {
				
				if(StringUtils.isBlank(user.getUsername())){
					return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, "用户名或者密码错误");
				}
				List<LoginUser> users = loginService.login(user.getUsername());
				String password = MD5.enc(user.getPassword());
				if(users.size() == 1 &&  password.equals(users.get(0).getPassword())){
					return JsonResult.buildSuccessResult(users.get(0));
				}else{
					return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, "用户名或者密码错误");
				}						
			} catch (Exception e) {
				return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
			}  
	} 

}
