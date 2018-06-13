package com.app.view.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import com.app.view.entry.PayMent;

/**
 * @author krs
 * @date 创建时间  2018年6月12日 下午10:10:53
 * @describe
 */
public interface PayMapper {

	void add(PayMent pm);

	@Update(" update order_info set result='1',end_time = now() where trade_no = #{trade_no}")
	void changePay(@Param("trade_no") String trade_no);

}
