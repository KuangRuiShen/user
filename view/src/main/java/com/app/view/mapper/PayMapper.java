package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.app.view.entry.PayInfo;
import com.app.view.entry.PayMent;

/**
 * @author krs
 * @date 创建时间  2018年6月12日 下午10:10:53
 * @describe
 */
public interface PayMapper {

	void add(PayMent pm);

	@Update(" update user_order set result='1' where out_trade_no = #{out_trade_no}")
	void changePay(PayInfo pm);

	@Select(" select * from user_order where out_trade_no = #{out_trade_no} ")
	PayMent findByTradeNo(@Param("out_trade_no")String out_trade_no);

	
	void saveMoneyInfo(PayInfo pm);
	//获取商户信息
	@Select(" select `key`,mch_id,url from pay_info ")
	List<Map<String, Object>> getPayInfo();
	
	//修改支付信息
	void changePayInfo(Map<String, String> pi);

}
