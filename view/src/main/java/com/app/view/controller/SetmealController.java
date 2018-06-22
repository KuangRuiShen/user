package com.app.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.entry.Setmeal;
import com.app.view.service.SetmealService;
import com.app.view.util.JsonResult;

@RestController
@RequestMapping("setmeal")
public class SetmealController {
	
	
	@Autowired
	private SetmealService setmealService;
	
	@GetMapping("list")
	public JsonResult<?> list(){				 
		try {
			List<Setmeal> datas = setmealService.list();
			return JsonResult.buildSuccessResult(datas);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
      	
	}
	
	@GetMapping("edit")
	public JsonResult<?> edit(@RequestBody Setmeal sm){				 
		try {
		    setmealService.edit(sm);
			return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
      	
	}
}
