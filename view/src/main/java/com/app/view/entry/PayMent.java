package com.app.view.entry;

//接受金额实体

public class PayMent {
	
	//商户号-由平台分配(12字符)
	private String mch_id;
	
	//格式为 yyyyMMddHHmmss
	private String payment_time;
	
	//金额
	private Integer total_fee;
	
	//订单号
	private String trade_no;
	//支付方式
	private String trade_type;
	
	private String body;
	
	//商户订单
//	private String out_trade_no;
	
	private String result;
	
	private String start_time;
	
	private String end_time;
	
	private String user_id;
	

	public String getMch_id() {
		return mch_id;
	}

	public void setMch_id(String mch_id) {
		this.mch_id = mch_id;
	}

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

//	public String getOut_trade_no() {
//		return out_trade_no;
//	}
//
//	public void setOut_trade_no(String out_trade_no) {
//		this.out_trade_no = out_trade_no;
//	}

	public String getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(String trade_type) {
		this.trade_type = trade_type;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	
	
}
