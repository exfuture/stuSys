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
	      int year = ca.get(Calendar.YEAR);//��ȡ���
	      int month=ca.get(Calendar.MONTH)+1;//��ȡ�·�
	      int day=ca.get(Calendar.DATE);//��ȡ��
	      int minute=ca.get(Calendar.MINUTE);//��
	      int hour=ca.get(Calendar.HOUR_OF_DAY);//Сʱ
	      int second=ca.get(Calendar.SECOND);//��
	      int WeekOfYear = ca.get(Calendar.DAY_OF_WEEK)-1;
	      
	      
	      System.out.println("��Calendar.getInstance().getTime()��ʽ��ʾʱ��: " + ca.getTime());
	      System.out.println("��Calendar��������ǣ�" + year +"��"+ month +"��"+ day + "��");
	      
	      System.out.println("��Calendar���ʱ���ǣ�" + hour +"ʱ"+ minute +"��"+ second +"��");
	      System.out.println(WeekOfYear);//
	      Date t = ca.getTime ( );
	      String week1 = new String("��һ����������");
	      String week2=week1.substring(WeekOfYear, WeekOfYear+1);
	      String x = new String( );
	      x = "�����ǣ�"+year+"��"+month+"��"+day+"�գ�����"+week2;
	      System.out.println("�����ǣ�"+t);
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
