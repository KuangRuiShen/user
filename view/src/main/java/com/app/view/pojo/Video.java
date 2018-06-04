package com.app.view.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotNull;

public class Video {

	private String id;
	
	@NotNull(message="视频名不能为空")
	private String name;
	
	private String cname;
	
	private String quality;
	
	private String remark;
	
	private String imgurl;
	
	private String videourl;
	
	@NotNull(message="类型不能为空")
	private String cid;
	
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

	public Integer getWatch() {
		return watch;
	}

	public void setWatch(Integer watch) {
		this.watch = watch;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
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
	
	
	
}
