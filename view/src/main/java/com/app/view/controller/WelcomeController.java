package com.app.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.service.WelcomeService;
import com.app.view.util.JsonResult;

@RestController
@RequestMapping("/")
public class WelcomeController {
	
	@Autowired
	private WelcomeService welcomeService;

	@PostMapping("saveImgs")
	public JsonResult<?> add(@RequestBody List<String> imgurls){
		try {		
//			System.out.println();
			welcomeService.save(imgurls);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@GetMapping("welcome")
	public JsonResult<?> welcome(){
		try {		
//			System.out.println();
			List<String> imgurls = welcomeService.list();
        	return JsonResult.buildSuccessResult(imgurls);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
	}

}
