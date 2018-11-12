package com.app.view.pojo;

import org.hibernate.validator.constraints.NotBlank;

/**
  *  标签
 * @author Administrator
 *
 */
public class Label {
	
	private Integer id;
	
	@NotBlank(message="标签不能为空")
	private String name; //标签名

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	
	

}
