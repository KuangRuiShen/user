package com.app.view.pojo;

import java.util.Date;

import com.app.view.util.MyUtils;

/**
 * @author krs
 * @date 创建时间  2018年6月11日 下午9:50:37
 * @describe
 */
public class AppUser {
	
	private String id;
	
	public Date valid_time;
	
	//充值时间
	private Date recharge_time;
	
	private String invite_id;
	
	//角色编号
	private String role_id;
	
	private String roleText;
	
	private Integer money;
	
	private Date create_time;
	
	private String bTime;
	
	private String eTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getRecharge_time() {
		if(recharge_time !=null ){
			return MyUtils.dateToString(recharge_time);
		}
		return "";
	}
	

	public String getCreate_time() {
		if(create_time !=null ){
			return MyUtils.dateToString(create_time);
		}
		return "";
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public void setRecharge_time(Date recharge_time) {
		this.recharge_time = recharge_time;
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

	public String getInvite_id() {
		return invite_id;
	}

	public void setInvite_id(String invite_id) {
		this.invite_id = invite_id;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public String getbTime() {
		return bTime;
	}

	public void setbTime(String bTime) {
		this.bTime = bTime;
	}

	public String geteTime() {
		return eTime;
	}

	public void seteTime(String eTime) {
		this.eTime = eTime;
	}


	
	
}
