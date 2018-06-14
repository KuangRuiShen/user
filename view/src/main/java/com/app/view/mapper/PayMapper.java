package com.app.view.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.app.view.entry.PayMent;

/**
 * @author krs
 * @date 创建时间  2018年6月12日 下午10:10:53
 * @describe
 */
public interface PayMapper {

	void add(PayMent pm);

	@Update(" update order_info set result='1',end_time = #{end_time},"
			+ "out_trade_no=#{out_trade_no} where trade_no = #{trade_no}")
	void changePay(PayMent pm);

	@Select(" select * from order_info where trade_no where trade_no = #{trade_no} ")
	PayMent findByTradeNo(@Param("trade_no")String trade_no);

}
