package com.app.view.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.entry.PayMent;
import com.app.view.service.PayService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;

@RestController
@RequestMapping("pay")
public class PayController {
	
	@Autowired
	private PayService payService;
	
	@PostMapping("result")
	public  JsonResult<?> doPost(HttpServletRequest request, HttpServletResponse response,@RequestBody Map<String,String> param)  {
		System.out.println("___________sucess______________");
		System.out.println(param.toString());		
		System.out.println("___________end______________");
//		 payService.changeUser();
		 return JsonResult.buildSuccessResult(param);
	}
	
	
	
	@PostMapping("add")
	public  JsonResult<?> add(@RequestBody PayMent pm)  {
		try {
			  payService.add(pm);
	         return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"添加失败");
		}	
	}
	

}

