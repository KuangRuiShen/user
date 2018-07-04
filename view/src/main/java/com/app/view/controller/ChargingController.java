package com.app.view.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.entry.ChargingParam;
import com.app.view.service.ChargingService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;

@RestController
@RequestMapping("charging")
public class ChargingController {

	@Autowired
	private ChargingService chargingService;
	
	
	@GetMapping("list")
	public JsonResult<?> list(String bTime,String eTime,String way){
		try {	
			Map<String, Object> resutl = new HashMap<>();
			ChargingParam p = new ChargingParam(bTime,eTime, way);	
			resutl.put("datas", chargingService.list(p));
			resutl.put("count", chargingService.count(p));
			return JsonResult.buildSuccessResult(resutl);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	

	
}
