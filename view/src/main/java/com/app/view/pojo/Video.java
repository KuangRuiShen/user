package com.app.view.pojo;

import java.util.ArrayList;
import java.util.List;

public class Video {

	private String id;
	
	private String name;
	
	private String remark;
	
	private String videourl;
	
	private String cid;
	
	private Integer px;
	
	private List<String> imgs = new ArrayList<String>();

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

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getVideourl() {
		return videourl;
	}

	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public Integer getPx() {
		return px;
	}

	public void setPx(Integer px) {
		this.px = px;
	}

	public List<String> getImgs() {
		return imgs;
	}

	public void setImgs(List<String> imgs) {
		this.imgs = imgs;
	}
	
	
	
	
}
