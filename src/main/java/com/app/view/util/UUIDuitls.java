package com.app.view.util;

import java.util.UUID;
/**
 * 重写UUID方法
 *
 */
public class UUIDuitls {
	
	/**
	 * 随机取的UUID值
	 */
	public static String getUUID(){
		String id = UUID.randomUUID().toString();
		id = id.replace("-", ""); 
		return id;
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
