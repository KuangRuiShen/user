package com.app.view.pojo;

import java.util.Date;

import com.app.view.util.MyUtils;

public class Charging {
	private String id;
	
	private Date recharge_time;
	
	private Date valid_time;
	
	private String invite_id;
	
	private String name;//推广人
	
	private String trade_type;
	
	private Integer total;
	
	private String role_id;
	
	private String roleText;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRecharge_time() {
		if(recharge_time !=null ){
			return MyUtils.dateToString(recharge_time);
		}
		return "";
	}

	public void setRecharge_time(Date recharge_time) {
		this.recharge_time = recharge_time;
	}

	public String getValid_time() {
		if(valid_time !=null ){
			return MyUtils.dateToString(valid_time);
		}
		return "";
	}

	public void setValid_time(Date valid_time) {
		this.valid_time = valid_time;
	}

	public String getInvite_id() {
		return invite_id;
	}

	public void setInvite_id(String invite_id) {
		this.invite_id = invite_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(String trade_type) {
		this.trade_type = trade_type;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	public String getRoleText() {
		return roleText;
	}

	public void setRoleText(String roleText) {
		this.roleText = roleText;
	}
	
	
	
	
	
}
