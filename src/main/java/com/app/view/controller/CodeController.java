package com.app.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.service.CodeService;
import com.app.view.util.JsonResult;


@RestController
@RequestMapping("code")
public class CodeController {
	
	@Autowired
	private CodeService codeService;
	
	
	@GetMapping
	public JsonResult<?> list(String type){		
		try {
		    return JsonResult.buildSuccessResult(codeService.list(type));
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询code,请联系管理员!");
		}
   
	}
}
