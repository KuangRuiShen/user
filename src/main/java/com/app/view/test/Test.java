package com.app.view.test;

import java.util.Random;

public class Test {

	public static void main(String[] args) {	
//		String value = "ABCa";

//		String name =  Optional.ofNullable(value).map(String::toUpperCase).orElse("NONE");
////		name.orElse("为空");
//		System.out.println(name);
		 Random ra =new Random(); 
		 String[] datas = {"1","1","1","1","0"};
		 for(int i = 0 ; i<10;i++){
			 System.out.println(datas[ra.nextInt(datas.length)]);
		 }
	
		
	}
	
	

}
