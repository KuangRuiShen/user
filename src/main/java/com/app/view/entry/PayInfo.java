package com.app.view.entry;

public class PayInfo {

	
	private String mch_id;
	//格式为 yyyyMMddHHmmss  --实际支付时间
	private String payment_time;
	
	private String end_time;//系统结束时间
	
	//金额
	private Integer total_fee;
	
	//订单号(客户支付的订单号)
	private String trade_no;

	//商户订单(自己生成)
	private String out_trade_no;
	

	public String getPayment_time() {
		return payment_time;
	}

	public void setPayment_time(String payment_time) {
		this.payment_time = payment_time;
	}

	public Integer getTotal_fee() {
		return total_fee;
	}

	public void setTotal_fee(Integer total_fee) {
		this.total_fee = total_fee;
	}

	public String getTrade_no() {
		return trade_no;
	}

	public void setTrade_no(String trade_no) {
		this.trade_no = trade_no;
	}

	public String getOut_trade_no() {
		return out_trade_no;
	}

	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}

	public String getMch_id() {
		return mch_id;
	}

	public void setMch_id(String mch_id) {
		this.mch_id = mch_id;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	
	

}
