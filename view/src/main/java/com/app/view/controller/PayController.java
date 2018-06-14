package com.app.view.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
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
	public  void doPost(HttpServletRequest request, HttpServletResponse response,
			@RequestBody(required=false) Map<String,String> param)  {
		System.out.println("___________sucess______________");
		System.out.println(param);		
		System.out.println("___________end______________");
//		 payService.changeUser();
		  JsonResult.buildSuccessResult(param);
		 InputStreamReader inputStreamReader;
			try {
				inputStreamReader = new InputStreamReader(request.getInputStream(),"UTF-8");
				 BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
		 			String str = null;  
		 			StringBuilder builder=new StringBuilder();
		            while ((str = bufferedReader.readLine()) != null) {  
		            	builder.append(str);  
		            }  
		            bufferedReader.close();  
		            inputStreamReader.close();  
		            System.err.println(builder.toString());
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}  
			
			try {
				response.getWriter().write("success");
				response.getWriter().flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
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

