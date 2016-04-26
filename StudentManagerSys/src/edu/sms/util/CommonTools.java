package edu.sms.util;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonTools {
	/*
	 * 获取当前时间
	 */
	public static String getCurrentTime(){
		Date d=new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return df.format(d);
	}
	
	/*
	 * 中文乱码
	 */
	public static String changeCodeMethod(String s){
		try {
			s=new String(s.getBytes("iso-8859-1"), "GBK");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	/*
	 * 计数+1
	 */
	public static String addOne(String s){
		return Integer.toString(Integer.parseInt(s)+1);
	}
	/*
	 * 计数-1
	 */
	public static String cutOne(String s){
		return Integer.toString(Integer.parseInt(s)-1);
	}
	
}
