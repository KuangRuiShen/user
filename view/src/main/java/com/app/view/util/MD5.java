package com.app.view.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author krs
 * @date 创建时间2017年8月10日 上午11:51:58 
 * @describe MD5加密密码
 */
public class MD5 {
	
	private final static Logger logger = LoggerFactory.getLogger(MD5.class);
//	private static char[] base64EncodeChars = new char[] { 'A', 'B', 'C', 'D',  
//	        'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q',  
//	        'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',  
//	        'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q',  
//	        'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3',  
//	        '4', '5', '6', '7', '8', '9', '+', '/', };  
	  
//	private static byte[] base64DecodeBytes = new byte[] { -1, -1, -1, -1, -1,  
//	        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  
//	        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  
//	        -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59,  
//	        60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,  
//	        10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1,  
//	        -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,  
//	        38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1,  
//	        -1, -1 };  
	
	/**
	 * 
	 *@describe md5加密
	 *@param password
	 *@return
	 */
	 public static String enc(String password) {  	  
	        try {  
	            // 得到一个信息摘要器  
	            MessageDigest digest = MessageDigest.getInstance("md5");  
	            byte[] result = digest.digest(password.getBytes());  
	            StringBuffer buffer = new StringBuffer();  
	            // 把没一个byte 做一个与运算 0xff;  
	            for (byte b : result) {  
	                // 与运算  
	                int number = b & 0xff;// 加盐  
	                String str = Integer.toHexString(number);  
	                if (str.length() == 1) {  
	                    buffer.append("0");  
	                }  
	                buffer.append(str);  
	            }  
	            // 标准的md5加密后的结果  
	            return buffer.toString();  
	        } catch (NoSuchAlgorithmException e) {  
	        	logger.info("用户密码加密异常");
	            e.printStackTrace();  
	            return "";  
	        }  
	  
	    }  
	 
	 /**
	  * 
	  * @describe  加密base64
	  * @param str
	  * @return
	  */
	  public static String getBase64(String str){  
	        byte[] b=null;  
	        String s=null;  
	        try {  
	        
	            b = str.getBytes("utf-8");  
	        } catch (UnsupportedEncodingException e) {  
	            e.printStackTrace();  
	        }  
	        if(b!=null){  
	        	Base64.Encoder encoder = Base64.getEncoder();
	            s = encoder.encodeToString(b);
	        }  
	        return s;  
	    }  
	/**
	 * 
	 * @describe base64解密
	 * @param s
	 * @return
	 */
	    public static String decoDecode64(String s) {    
	        byte[] b = null;    
	        String result = null;    
	        if (s != null) {    
	        	 Base64.Decoder decoder = Base64.getDecoder();
//	            BASE64Decoder decoder = new BASE64Decoder();    
	            try {    
	                b = decoder.decode(s);  
	                result = new String(b, "utf-8");    
	            } catch (Exception e) {    
	                e.printStackTrace();    
	            }    
	        }    
	        return result;    
	    }    
	 
	 
	 
	 
	 public static void main(String[] args) {
		 System.out.println(MD5.decoDecode64("a3VhbmcxMjM="));
		 System.out.println(MD5.getBase64("kuang123"));
	}

}
