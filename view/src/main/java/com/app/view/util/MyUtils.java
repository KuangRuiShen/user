package com.app.view.util;

import java.text.SimpleDateFormat;
import java.util.UUID;

/**
 * 重写UUID方法
 * @author krs
 *
 */
public class MyUtils {
	
	/**
	 * 随机取的UUID值
	 */
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	
	
	
	public static String getPreTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(System.currentTimeMillis());
	}
	/**
	 * 
	 * @describe 转回原始的uuid
	 * @param id 32uuid
	 * @return  返回原始的36位uuid
	 */
	public static String getOriginalID(String uuid){
		String id = uuid.toLowerCase();
	    return id.substring(0, 8)+"-"+id.substring(8, 12)+"-"+id.substring(12, 16)+"-"+id.substring(16, 20)+"-"+id.substring(20);	 
	}
	

}
