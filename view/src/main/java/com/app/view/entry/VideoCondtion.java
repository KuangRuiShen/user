package com.app.view.entry;
/**
 * @author krs
 * @date 创建时间  2018年6月9日 下午7:17:39
 * @describe
 */
public class VideoCondtion {
	
	private String user_id;
	
	private String name;//名称
	
	private String type;//首页类型，首页，vip,试看区
	
	private String cid;//类型id
	
	private String sid;//明星id
	
	private String level;//会员等级
	
	public String getName() {	
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	

}
