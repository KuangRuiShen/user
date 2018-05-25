package com.app.view.pojo;

import javax.validation.constraints.NotNull;

/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:32:28
 * @describe
 */
public class User {
	
	private String id;
	
	private String name;
	
	@NotNull(message="用户名不能为空")
	private String username;
	
	@NotNull(message="密码不能为空")
	private String password;
	
	private String role_id;
	
	private String creat_time;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	public String getCreat_time() {
		return creat_time;
	}

	public void setCreat_time(String creat_time) {
		this.creat_time = creat_time;
	}
	
	
}
