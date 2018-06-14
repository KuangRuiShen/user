package com.app.view.test;
import java.util.HashMap;
import java.util.Map;

import com.app.view.util.pay.MD5;
import com.app.view.util.pay.SignUtils;

public class PayDemo {
	public static void main(String[] args) {
		String key="cbd4f10f115673f0e76d223168bf99d3";//秘钥
		Map<String, String> params = new HashMap<String, String>();
		params.put("mch_id", "gxtttooo");//商户/
		params.put("out_trade_no",System.currentTimeMillis()+"");//商户订单
		params.put("body", "vip");//商品
		params.put("total_fee", "1");//总价
		params.put("spbill_create_ip", "192.168.1.1");//客户端ip
		params.put("notify_url", "http://101.132.170.212/api/pay/result");//服务器通知地址
		params.put("redirect_url", "http://www.baidu.com");//前端跳转地址
		params.put("trade_type", "WX");//支付方式
		
		StringBuilder buf = new StringBuilder((params.size() + 1) * 10);
		SignUtils.buildPayParams(buf, params, false);
		String preStr = buf.toString();
		String signRecieve = MD5.sign(preStr, "&key=" + key, "utf-8");
		String httUrl = "http://weixin.vvjvv.cn/platform/pay/unifiedorder/video?sign=" + signRecieve + "&" + preStr;
		System.err.println("请复制到手机浏览器中访问:"+httUrl);
	}
}
