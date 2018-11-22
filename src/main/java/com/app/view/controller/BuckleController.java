package com.app.view.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.entry.ChargingParam;
import com.app.view.pojo.Charging;
import com.app.view.service.BuckleService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

//处理数据

@RestController
@RequestMapping("/buckle")
public class BuckleController {

	@Autowired
	private BuckleService buckleService;
	
	
	@GetMapping("list")
	public JsonResult<?> list(@RequestParam String userId, String bTime,String eTime,String way,Integer page){
		try {	
			Map<String, Object> resutl = new HashMap<>();
			ChargingParam p = new ChargingParam(bTime,eTime, way);	
			p.setUserId(userId);
		
				if(page == null || page < 1 )
					page = 1;			
			 PageHelper.startPage(page, 10);
			 List<Charging> list = buckleService.list(p);
	         PageInfo<Charging> pageInfo = new PageInfo<Charging>(list);         
			resutl.put("datas", pageInfo.getList());
			resutl.put("count", buckleService.count(p));
			return JsonResult.buildSuccessResult(resutl,pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	//获取所有管理
		@GetMapping("mange")
		public JsonResult<?> getMange(@RequestParam String userId){
			try {
				 List<Map<String,String>> datas = buckleService.getMange(userId);
		         return JsonResult.buildSuccessResult(datas);
			} catch (Exception e) {
				e.printStackTrace();
				return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
			}	
		}
	
	

}
