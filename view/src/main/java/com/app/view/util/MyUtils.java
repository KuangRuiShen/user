package com.app.view.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;

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
	
	
	/**
	 * 获取当前时间
	 * @describe 
	 * @return
	 */
	public static String getPreTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(System.currentTimeMillis());
	}
	/**
	 * 时间转字符
	 * @describe 
	 * @param d
	 * @return
	 */
	public static String dateToString(Date d ){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(d);
	}
	
	/**
	 * yyyyMMddHHmmss转字符
	 * @describe 
	 * @param d
	 * @return
	 */
	public static String mYdateFrom(String d ){
		Date date1 = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		if(StringUtils.isBlank(d) || d.length() != 12){
			return d;
		}else{
			try {
				date1 = sdf.parse(d);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return MyUtils.dateToString(date1);
	}
	
	
	/**
	 * 让时间加一，看传什么类型
	 * @describe 
	 * @param a
	 * @param type
	 * @return
	 */
	public static Date RechargeDate(Date a,String type){
		Calendar cal = Calendar.getInstance();
		switch (type) {
		case "1":
			cal.add(Calendar.DAY_OF_YEAR, 1);
			break;
		case "2":
			cal.add(Calendar.MONTH, 1);
			break;
		case "3":
			cal.add(Calendar.YEAR, 1);
			break;
		default:// day
			cal.add(Calendar.DAY_OF_YEAR, 1);
		}
		return cal.getTime();		
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
	
	//解析url
	public static Map<String,String> praseparam(String url){	
		Map<String,String> result =  new HashMap<>();
		try {
			String[] params = url.split("&");
			for(String param :params){
				String[] p =  param.split("=");
				if(p.length == 2){
					result.put(p[0], p[1]);
				}
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}					
		return result;
	}

	

}
