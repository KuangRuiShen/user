package com.app.view.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotNull;

public class Video {

	private String id;
	
	@NotNull(message="视频名不能为空")
	private String name;
	
	private String sid;//明星
	
	private String sname;//名称
	
	private String quality;
	
	private String remark;
	
	private String imgurl;
	
	private String videourl;
	
	private List<String> cids =new ArrayList<>();
	
	private List<Category> categorys =new ArrayList<>();
	
	private Integer px;
	
	private Integer watch;
	
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



	public List<String> getCids() {
		return cids;
	}

	public void setCids(List<String> cids) {
		this.cids = cids;
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

	public Integer getWatch() {
		return watch;
	}

	public void setWatch(Integer watch) {
		this.watch = watch;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getQuality() {
		return quality;
	}

	public void setQuality(String quality) {
		this.quality = quality;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public List<Category> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	
	
	
	
}
