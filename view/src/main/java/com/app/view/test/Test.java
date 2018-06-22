package com.app.view.test;

public class Test {

	public static void main(String[] args) {	
		String text= "1123a13121";
		try {
			Integer.parseInt(text);
			text = "";
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println(text);
	}
	

}
