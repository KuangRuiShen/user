package com.app.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.CccePay;
import com.app.view.service.CccePayService;
import com.app.view.util.JsonResult;
import com.app.view.vo.CccePayVO;

/**
 * 
 * @time 2019年1月14日 上午11:54:25
 * @describe 新支付管理
 */
@RestController
@RequestMapping("cccePay")
public class CccePayController {
	
	@Autowired
	private CccePayService cccePayService;
	
	
	@GetMapping("list")
	public JsonResult<?> list(){	
		try {
		      CccePayVO vo = cccePayService.queryVO();
	          return JsonResult.buildSuccessResult(vo);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}	
	}
	
	@PostMapping("update")
	public JsonResult<?> update(@RequestBody CccePayVO vo){	
		try {
			CccePay weixin = new CccePay("1", vo.getUrl(), vo.getWmerno(), vo.getWkey());
			CccePay zfb = new CccePay("2", vo.getUrl(), vo.getZmerno(), vo.getZkey());
			cccePayService.updateById(weixin);
			cccePayService.updateById(zfb);
	        return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}	
	}

}
