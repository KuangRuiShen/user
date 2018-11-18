package com.app.view.util;

import java.util.Random;

public class BuckleUitl {
	
	
	public static String getType(){
		 Random ra =new Random(); 
		 String[] datas = {"1","1","1","1","0"};
		return datas[ra.nextInt(datas.length)];
	}
}
