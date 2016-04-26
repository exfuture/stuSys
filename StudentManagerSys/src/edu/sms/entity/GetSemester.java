package edu.sms.entity;

import java.sql.Date;
import java.util.Calendar;

public class GetSemester {
	public String Cursemester() throws Exception{
		 
		 Calendar calendar=Calendar.getInstance();
		 int year=calendar.get(Calendar.YEAR);
	     int month=calendar.get(Calendar.MONTH)+1;
	     String startyear="";
	     String endyear="";
	     String semester="";
		 if(month<8)
		 {
			 startyear=String.valueOf(year-1).trim() ;
			 endyear=String.valueOf(year).trim() ;
			 semester=startyear+"/"+endyear+"-"+"2";
		 }
		 else
		 {
			 startyear=String.valueOf( year).trim() ;
			 endyear=String.valueOf( year+1).trim();
			 semester=startyear+"/"+endyear+"-"+"1";
		 }
		return semester;
	}
	}


