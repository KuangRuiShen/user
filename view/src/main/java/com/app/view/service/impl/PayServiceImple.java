package com.app.view.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.entry.PayInfo;
import com.app.view.entry.PayMent;
import com.app.view.entry.Setmeal;
import com.app.view.mapper.AppUserMapper;
import com.app.view.mapper.PayMapper;
import com.app.view.mapper.SetmealMapper;
import com.app.view.pojo.AppUser;
import com.app.view.service.AppUserService;
import com.app.view.service.PayService;
import com.app.view.util.MyUtils;
import com.app.view.util.pay.MD5;
import com.app.view.util.pay.SignUtils;

/**
 * @author krs
 * @date 创建时间  2018年6月12日 下午10:10:31
 * @describe
 */
@Service
public class PayServiceImple implements PayService {
	
	@Autowired
	private PayMapper payMapper;
	
	@Autowired
	private AppUserService appUserService;
	
	@Autowired
	private AppUserMapper appUserMapper;
	
	
	@Autowired
	private SetmealMapper setmealMapper;
	
	@Override
	public void add(PayMent pm) {
		pm.setStart_time(MyUtils.dateToString(new Date()));
		pm.setResult("0");
		payMapper.add(pm);		
	}


//	@Override
//	public void changeUser(PayMent pm) {		
//		String out_trade_no = pm.getOut_trade_no();
//		PayMent payMent = payMapper.findByTradeNo(out_trade_no);
////		appUserService.update("ddd");
//		if(payMent!=null){
////			pm.setEnd_time(MyUtils.mYdateFrom(pm.getEnd_time()));		
//			//修改
//	
////				payMapper.changePay(pm);
////				appUserService.update(payMent.getUser_id());
////				//刷新定时清理用户表数据
////				appUserService.getMange();
//			
//		}
//		
//	}


	@Override
	public String getPayUrl(PayMent pm) {
		String key="cbd4f10f115673f0e76d223168bf99d3";//秘钥	
		String out_trade_no = System.currentTimeMillis()+"";//客户支付的订单号	
		pm.setOut_trade_no(out_trade_no);
		String total_fee = pm.getTotal_fee()+"";
		String body = pm.getBody();
		String trade_type = pm.getTrade_type();
		String redirect_url = pm.getRedirect_url();
		//保存充值记录
		this.add(pm);	
		Map<String, String> params = new HashMap<String, String>();
		params.put("mch_id", "gxtttooo");//商户/
		params.put("out_trade_no",out_trade_no);//商户订单
		params.put("body", body);//商品
		params.put("total_fee", total_fee);//总价
		params.put("spbill_create_ip", pm.getIp());//客户端ip
		params.put("notify_url", "http://101.132.170.212/api/pay/result");//服务器通知地址
		params.put("redirect_url", redirect_url);//前端跳转地址
		params.put("trade_type", trade_type);//支付方式
		
		StringBuilder buf = new StringBuilder((params.size() + 1) * 10);
		SignUtils.buildPayParams(buf, params, false);
		String preStr = buf.toString();
		String signRecieve = MD5.sign(preStr, "&key=" + key, "utf-8");
		String httUrl = "http://weixin.vvjvv.cn/platform/pay/unifiedorder/video?sign=" + signRecieve + "&" + preStr;	
		return httUrl;
	}


	@Override
	public void changeUser(PayInfo pm) {
		//保存订单
		pm.setPayment_time(MyUtils.mYdateFrom(pm.getPayment_time()));
		pm.setEnd_time(MyUtils.dateToString(new Date()));
		payMapper.saveMoneyInfo(pm);
		
		//获取用户id
		PayMent payMent = payMapper.findByTradeNo(pm.getOut_trade_no());
		if(!payMent.getResult().equals("1")){
			if(payMent!=null){
				  //修改
					String user_id = payMent.getUser_id();
					AppUser user = appUserMapper.findById(user_id);
					String role_id = user.getRole_id();
//					int role =  Integer.parseInt(role_id);
					//用户等级在1-3内 
							
					List<Setmeal> datas= setmealMapper.list(new Setmeal());
					//套餐1			
				    Date d = new Date();
					user.setRecharge_time(d);
					if(StringUtils.isNotBlank(role_id)){
						Date valid_time = d; 
						int newrole = Integer.parseInt(role_id)+1;
						if(newrole > 5){
							user.setRole_id(role_id);						
						}	else{
							user.setRole_id(newrole+"");		
						}
						
						if(newrole != 1){
							valid_time = MyUtils.StringToDate(user.getValid_time());
						}
					
						for(Setmeal s : datas){
							if(s.getOne() == pm.getTotal_fee()){
								valid_time = MyUtils.RechargeDate(valid_time, s.getId());
								break;
							}
						}
//						if(s.getOne() == pm.getTotal_fee()){
//							valid_time = MyUtils.RechargeDate(d, "1");
//						}else if(s.getTwo() == pm.getTotal_fee()){
//							valid_time =MyUtils.RechargeDate(d, "2");
//						}else if(s.getThree() == pm.getTotal_fee()){
//							valid_time = MyUtils.RechargeDate(d, "3");
//						}	else{
//							valid_time = MyUtils.RechargeDate(d, "1");
//						}
						user.setValid_time(valid_time);
						appUserMapper.update(user);
					}
					
//				}else{
//					Date d = new Date();
//					user.setRecharge_time(d);
//					int newrole = Integer.parseInt(role_id)+1;
//					if(newrole < 100){
//						user.setRole_id(newrole+"");
//					}	
//					user.setValid_time(MyUtils.RechargeDate(d, "1"));
//					appUserMapper.update(user);	
//				}
					//修改订单成功
					payMapper.changePay(pm);
					
					//刷新定时清理用户表数据
					appUserService.getMange();
				
			}	
		}
			
	}
}
