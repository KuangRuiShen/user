package com.app.view.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.app.view.entry.PayInfo;
import com.app.view.entry.PayMent;
import com.app.view.entry.Setmeal;
import com.app.view.mapper.AppUserMapper;
import com.app.view.mapper.PayMapper;
import com.app.view.mapper.SetmealMapper;
import com.app.view.pojo.AppUser;
import com.app.view.service.AppUserService;
import com.app.view.service.CccePayService;
import com.app.view.service.PayService;
import com.app.view.util.BuckleUitl;
import com.app.view.util.MyUtils;
import com.app.view.util.pay.MD5;
import com.app.view.util.pay.SignUtils;
import com.app.view.vo.CccePayVO;

/**
 * @author krs
 * @date 创建时间 2018年6月12日 下午10:10:31
 * @describe
 */
@Service
public class PayServiceImple implements PayService {

	@Value("${ip}")
	private String ip;

	@Autowired
	private PayMapper payMapper;

	@Autowired
	private AppUserService appUserService;

	@Autowired
	private AppUserMapper appUserMapper;

	@Autowired
	private SetmealMapper setmealMapper;// 套餐信息
	
	@Autowired
	private CccePayService cccePayService;//新支付

	@Override
	public void add(PayMent pm) {
		pm.setStart_time(MyUtils.dateToString(new Date()));
		pm.setResult("0");
		if (StringUtils.isBlank(pm.getRole_id())) {
			pm.setRole_id("1");
		}
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
		Map<String, Object> pay_info = this.getPayInfo();
		String mch_id = pay_info.get("mch_id").toString();
		String key = pay_info.get("key").toString();
		String url = pay_info.get("url").toString();
//		String key="cbd4f10f115673f0e76d223168bf99d3";//秘钥	
		String out_trade_no = System.currentTimeMillis() + "";// 客户支付的订单号
		pm.setOut_trade_no(out_trade_no);
		String total_fee = pm.getTotal_fee() + "";
		String body = pm.getBody();
		String trade_type = pm.getTrade_type();
		String redirect_url = pm.getRedirect_url();
		// 获取套餐
		List<Setmeal> datas = setmealMapper.list(new Setmeal());
		for (Setmeal s : datas) {
			if (s.getOne().equals(pm.getTotal_fee())) {
				pm.setRole_id(s.getId());
				break;
			}
		}

		// 保存充值记录
		this.add(pm);
		Map<String, String> params = new HashMap<String, String>();
		params.put("mch_id", mch_id);// 商户/
		params.put("out_trade_no", out_trade_no);// 商户订单
		params.put("body", body);// 商品
		params.put("total_fee", total_fee);// 总价
		params.put("spbill_create_ip", pm.getIp());// 客户端ip
		params.put("notify_url", "http://" + ip + "/api/pay/result");// 服务器通知地址
		params.put("redirect_url", redirect_url);// 前端跳转地址
		params.put("trade_type", trade_type);// 支付方式

		StringBuilder buf = new StringBuilder((params.size() + 1) * 10);
		SignUtils.buildPayParams(buf, params, false);
		String preStr = buf.toString();
		String signRecieve = MD5.sign(preStr, "&key=" + key, "utf-8");

		String httUrl = url + "?sign=" + signRecieve + "&" + preStr;
		return httUrl;
	}

	// 商户信息
	public Map<String, Object> getPayInfo() {
		List<Map<String, Object>> datas = payMapper.getPayInfo();
		return datas.get(0);
	}

	@Override
	public void changeUser(PayInfo pm) {
		// 保存订单
		pm.setPayment_time(MyUtils.mYdateFrom(pm.getPayment_time()));
		pm.setEnd_time(MyUtils.dateToString(new Date()));
		// 设置参数
		int time = Integer.parseInt(this.getInfoByName("time"));
		pm.setType(BuckleUitl.getType(time));
		payMapper.saveMoneyInfo(pm);

		// 获取用户id
		PayMent payMent = payMapper.findByTradeNo(pm.getOut_trade_no());
		if (!payMent.getResult().equals("1") && payMent != null) {
			// 修改
			AppUser user = appUserMapper.findById(payMent.getUser_id());
			String role_id = user.getRole_id();

			// 套餐1
			Date d = new Date();
			user.setRecharge_time(d);
			if (StringUtils.isNotBlank(role_id)) {
				Date valid_time = d;
				int newrole = Integer.parseInt(role_id);

				// 如果用户本身有等级
				if (newrole > 0) {
					valid_time = MyUtils.StringToDate(user.getValid_time());
				}
				// 查询套餐
				List<Setmeal> datas = setmealMapper.list(new Setmeal());
				for (Setmeal s : datas) {
					if (s.getOne().equals(pm.getTotal_fee()) && !s.getId().equals(user.getRole_id())) {
						valid_time = MyUtils.RechargeDate(valid_time, s.getId());
						user.setRole_id(s.getId());
						break;
					}
				}
				// 如果等级为5以上
				if (newrole >= 5) {
					user.setRole_id(role_id);
				}
				user.setValid_time(valid_time);
				// 修改用户状态
				appUserMapper.update(user);
			}

			// 修改订单成功
			payMapper.changePay(pm);

			// 刷新定时清理用户表数据
			appUserService.getMange();

		} else {
			// 修改充值时间
			if (payMent != null) {
				appUserMapper.updateRecharge_time(payMent);
			}
		}

	}

	@Override
	public Map<String, Object> list() {
		return this.getPayInfo();
	}

	@Override
	public void change(Map<String, String> pi) {
		payMapper.changePayInfo(pi);
	}

	@Override
	public String getInfoByName(String name) {
		return this.getPayInfo().get(name).toString();
	}

	@Override
	public String getRandomUrl(PayMent pm) {
		String user = getInfoByName("used");
		if(user.equals("1")) {
			return getPayUrl(pm);
		}else {
			return getcccePayUrl(pm);
		}	
	}

	private String getcccePayUrl(PayMent pm) {
		//新支付
		CccePayVO cccepay= cccePayService.queryVO();
		String merno = cccepay.getWmerno();
		String key = cccepay.getWkey();
		String url = cccepay.getUrl();
		
		String sn =  MyUtils.getPreAllTime();
		String money = MyUtils.getMenoy(pm.getTotal_fee());
		String acode = pm.getTrade_type();
		if (!pm.getTrade_type().equals("WX")) {
			acode = "ZFB";
			merno = cccepay.getZmerno();
			key = cccepay.getZkey();
		}
		String urlCallback = "http://" + ip + "/api/pay/cccePayresult";
		// 获取套餐
		List<Setmeal> datas = setmealMapper.list(new Setmeal());
		for (Setmeal s : datas) {
			if (s.getOne().equals(pm.getTotal_fee())) {
				pm.setRole_id(s.getId());
				break;
			}
		}
		// 保存充值记录
		pm.setOut_trade_no(sn);
		this.add(pm);	
		Map<String, String> params = new HashMap<String, String>();
		params.put("acode", acode);// 交易方式
		params.put("merno", merno);// 商户/
		params.put("sn", sn);// 商户订单
		params.put("money", money);// 总价
		params.put("urlCallback", urlCallback);// 前端跳转地址
		StringBuilder buf = new StringBuilder((params.size() + 1) * 10);
		SignUtils.buildPayParams(buf, params, false);
		String preStr = buf.toString();
		String signRecieve = MD5.sign(preStr, key, "utf-8");
		String httUrl = url + "?sign=" + signRecieve + "&" + preStr;
		return httUrl;
	}

}
