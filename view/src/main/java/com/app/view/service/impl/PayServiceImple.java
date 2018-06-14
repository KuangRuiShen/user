package com.app.view.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.entry.PayMent;
import com.app.view.mapper.PayMapper;
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
	
	
	@Override
	public void add(PayMent pm) {
		pm.setStart_time(MyUtils.dateToString(new Date()));
		pm.setResult("0");
		payMapper.add(pm);		
	}


	@Override
	public void changeUser(PayMent pm) {		
		String trade_no = pm.getTrade_no();
		PayMent payMent = payMapper.findByTradeNo(trade_no);
//		appUserService.update("ddd");
		if(payMent!=null){
			pm.setEnd_time(MyUtils.mYdateFrom(pm.getEnd_time()));		
			//修改
			if( !payMent.getResult().equals("1") ){
				payMapper.changePay(pm);
				appUserService.update(payMent.getUser_id());
			}
		}
		
	}


	@Override
	public String getPayUrl(PayMent pm) {
		String key="cbd4f10f115673f0e76d223168bf99d3";//秘钥	
		String out_trade_no = System.currentTimeMillis()+"";//客户支付的订单号	
		pm.setTrade_no(out_trade_no);
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
		params.put("spbill_create_ip", "101.132.170.212");//客户端ip
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

}
