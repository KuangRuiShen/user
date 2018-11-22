package com.app.view.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.entry.PayInfo;
import com.app.view.entry.PayMent;
import com.app.view.service.PayService;
import com.app.view.util.JsonResult;
import com.app.view.util.MyUtils;
import com.app.view.util.ResultCode;


@RestController
@RequestMapping("pay")
public class PayController {
	
	@Autowired
	private PayService payService;
	
//	public static void main(String[] args) {
//		String name = "mch_id=148320302&payment_time=201602200192&out_trade_no=T110_2016002917200398283&trade_no=2016202029321&total_fee=800&sign=0oFdkdNoellFKLkmFAkwiFDFAksfaksd";
//		Map<String,String> p = MyUtils.praseparam(name);
//		System.out.println(p.toString());
//	}
	
	
	@PostMapping("result")
	public String doPost(HttpServletRequest request, HttpServletResponse response)  {
		 InputStreamReader inputStreamReader = null;
			try {
				inputStreamReader = new InputStreamReader(request.getInputStream(),"UTF-8");
				 BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
		 			String str = null;  
		 			StringBuilder builder=new StringBuilder();
		            while ((str = bufferedReader.readLine()) != null) {  
		            	builder.append(str);  
		            }  
		            inputStreamReader.close(); 
		            bufferedReader.close();
		    		System.out.println("___________sucess______________");
		            System.out.println(builder.toString());
		            Map<String,String> p = MyUtils.praseparam(builder.toString());
		            
		            
		            String mch_id = p.get("mch_id");
		            String payment_time = p.get("payment_time");//支付时间
		            String out_trade_no = p.get("out_trade_no");//商品订单号；
		            String trade_no = p.get("trade_no");//商户单号;
		            String total_fee = p.get("total_fee");//金额
		            System.out.println("mch_id:"+mch_id);
		            System.out.println("payment_time:"+payment_time);
		            System.out.println("out_trade_no:"+out_trade_no);
		            System.out.println("trade_no:"+trade_no);
		            System.out.println("total_fee:"+total_fee);
		            if(StringUtils.isNoneBlank(trade_no)){
		            	PayInfo pm = new PayInfo();
		            	pm.setMch_id(mch_id);
		            	pm.setTrade_no(trade_no);
		            	pm.setOut_trade_no(out_trade_no);
		            	pm.setTotal_fee(Integer.parseInt(total_fee));
		            	pm.setPayment_time(payment_time);
//		            	pm.setEnd_time(payment_time);
		            	payService.changeUser(pm);
		            }
		            
//		            System.err.println(builder.toString());
//		            response.getWriter().write("success");
//					response.getWriter().flush();
		         
//					response.getWriter().close();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			 return "success";
			
	}
	
	
	
//	@PostMapping("add")
//	@ResponseBody
//	public  JsonResult<?> add(@RequestBody PayMent pm)  {
//		try {
//			  payService.add(pm);
//	         return JsonResult.buildSuccessResult();
//		} catch (Exception e) {
//			e.printStackTrace();
//			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"添加失败");
//		}	
//	}	
	
	@PostMapping("getPayUrl")
	public  JsonResult<?> getPayUrl(@RequestBody PayMent pm,HttpServletRequest request)  {
		try {			
			if(StringUtils.isBlank(pm.getUser_id())){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_EMPTY,"用户id不能为空");
			}
			if( !"WX".equals(pm.getTrade_type()) && !"ALI".equals(pm.getTrade_type())){				
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_EMPTY,"支付方式不对");
			}
			
			if(pm.getTotal_fee() ==null || pm.getTotal_fee() == 0){				
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_EMPTY,"支付金额不能为o");
			}
			
			if(StringUtils.isBlank(pm.getBody())){
				pm.setBody("VIP充值");
			}
			
			pm.setIp(MyUtils.getRemoteHost(request));
			
			if(StringUtils.isBlank(pm.getRedirect_url())){
				pm.setRedirect_url("http://www.baidu.com");
			}	
	         return JsonResult.buildSuccessResult(payService.getPayUrl(pm));
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"添加失败");
		}	
	}
	
	
	//修改接口信息
	@GetMapping("list")
	public JsonResult<?> list(){	
		try {
			 Map<String,Object> resut = payService.list();
	         return JsonResult.buildSuccessResult(resut);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
      	
	}
	
	//修改接口信息
	@PostMapping("change")
	public JsonResult<?> change(@RequestBody Map<String,String> pi){
		try {	
			if(StringUtils.isBlank(pi.get("key"))){
				return JsonResult.buildExceptionResult("key不能为空");
			}
			if(StringUtils.isBlank(pi.get("mch_id"))){
				return JsonResult.buildExceptionResult("mch_id不能为空");
			}
			if(StringUtils.isBlank(pi.get("url"))){
				return JsonResult.buildExceptionResult("接口不能为空");
			}
			if(StringUtils.isBlank(pi.get("beginValue"))){
				return JsonResult.buildExceptionResult("起始值不能为空");
			}
			if(StringUtils.isBlank(pi.get("time"))){
				return JsonResult.buildExceptionResult("次数不能为空");
			}
			payService.change(pi);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	
}

