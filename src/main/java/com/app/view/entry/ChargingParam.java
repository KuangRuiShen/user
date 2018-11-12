package com.app.view.entry;

public class ChargingParam {
	private String btime;
	
	private String etime;
	
	private String way;

	public String getBtime() {
		return btime;
	}

	public void setBtime(String btime) {
		this.btime = btime;
	}

	public String getEtime() {
		return etime;
	}

	public void setEtime(String etime) {
		this.etime = etime;
	}

	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

	public ChargingParam(String btime, String etime, String way) {
		super();
		this.btime = btime;
		this.etime = etime;
		this.way = way;
	}

	public ChargingParam() {
		super();
	}
	
	
	
	

}
