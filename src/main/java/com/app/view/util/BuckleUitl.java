package com.app.view.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BuckleUitl {
	
	
	public static String getType(int time){
		 Random ra =new Random(); 
//		 String[] datas = {"1","1","1","1","0"};
		 List<String> data= new ArrayList<String>();
		 if( time >0 ){
			 for(int i=0;i<time;i++){
				 data.add("0");
			 }	 
			 for(int i=0;i<10-time;i++){
				 data.add("1");
			 }	 
		 }else{
			 return "1";
		 }
		return data.get(ra.nextInt(data.size()));
	}
}
