package edu.sms;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	     Calendar ca = Calendar.getInstance();
	      int year = ca.get(Calendar.YEAR);//获取年份
	      int month=ca.get(Calendar.MONTH)+1;//获取月份
	      int day=ca.get(Calendar.DATE);//获取日
	      int minute=ca.get(Calendar.MINUTE);//分
	      int hour=ca.get(Calendar.HOUR_OF_DAY);//小时
	      int second=ca.get(Calendar.SECOND);//秒
	      int WeekOfYear = ca.get(Calendar.DAY_OF_WEEK)-1;
	      
	      
	      System.out.println("用Calendar.getInstance().getTime()方式显示时间: " + ca.getTime());
	      System.out.println("用Calendar获得日期是：" + year +"年"+ month +"月"+ day + "日");
	      
	      System.out.println("用Calendar获得时间是：" + hour +"时"+ minute +"分"+ second +"秒");
	      System.out.println(WeekOfYear);//
	      Date t = ca.getTime ( );
	      String week1 = new String("日一二三四五六");
	      String week2=week1.substring(WeekOfYear, WeekOfYear+1);
	      String x = new String( );
	      x = "现在是："+year+"年"+month+"月"+day+"日，星期"+week2;
	      System.out.println("现在是："+t);
	      System.out.println(x); 
	      
	      String s=year+"-"+month+"-"+day+" 14:05";
	      DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	      
	      try {
			System.out.println(t.before(df.parse(s)));;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
