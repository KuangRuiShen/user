package com.app.view.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.util.JsonResult;

@RestController
@RequestMapping("/")
public class WelcomeController {
	
	@PostMapping("saveImgs")
	public JsonResult<?> add(@RequestBody List<String> imgurls){
		try {		
			System.out.println();
        	return JsonResult.buildSuccessResult(imgurls);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}

}
