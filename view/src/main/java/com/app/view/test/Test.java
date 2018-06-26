package com.app.view.test;

import java.util.Date;

import com.app.view.util.MyUtils;

public class Test {

	public static void main(String[] args) {	
		String text= "1123a13121";
		try {
			Integer.parseInt(text);
			text = "";
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		System.out.println(MyUtils.RechargeDate(new Date(), "5"));
	}
	

}
