package com.app.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public JsonResult<?> list(String role_id){				 
		try {
			Setmeal sm = new Setmeal();
			sm.setId(role_id);
			List<Setmeal> datas = setmealService.list(sm);
			return JsonResult.buildSuccessResult(datas);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
      	
	}
	
	@PostMapping("edit")
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
