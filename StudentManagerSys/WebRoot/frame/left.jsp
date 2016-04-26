<%@ page language="java" contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import = "java.util.*" %>
<HTML>
<HEAD>
<link href="<%= request.getContextPath() %>/css/dtree.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>

	<%
		
		Calendar currentCalendars= Calendar.getInstance();
		int years= currentCalendars.get(Calendar.YEAR);
		String year=String.valueOf(years);
		int months= currentCalendars.get(Calendar.MONTH)+1;
		String month=String.valueOf(months);
		int days= currentCalendars.get(Calendar.DAY_OF_MONTH);
		String day1=String.valueOf(days);
		int d=currentCalendars.get(Calendar.DAY_OF_WEEK);
		String ddd="";
		if(d==1)
		ddd="日";
		if(d==2)
		ddd="一";
		if(d==3)
		ddd="二";
		if(d==4)
		ddd="三";
		if(d==5)
		ddd="四";
		if(d==6)
		ddd="五";
		if(d==7)
		ddd="六";
	%>
</HEAD>
<s:action id="lesson" name="lesson"/>
<s:action id="login" name="login"/>



<BODY bgColor=#DDF0FB leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">

<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" >
	<tr>
		<td>
			<font size="2.8">
			 <%=year%>年<%=month%>月<%=day1%>日 星期<%=ddd%>
	  			<br><br>
	  			<s:property value="#login.luser().TEACHERNAME"/>您好。
			</font>
		</td>
	</tr>
	<tr>
	<td>
	<div class="dtree">
	<script type="text/javascript">
	
		d = new dTree('d','<%= request.getContextPath() %>');
		d.add('0','-1','企业化学生管理')
	<s:iterator id="a"  value="#login.queryFunction()">	
		<s:if test='%{#a.ACTIONNAME.length()==0}'>
		d.add('<s:property value="ID"/>','<s:property value="PARENT_ID"/>','<s:property value="NAME"/>');	
		</s:if>	
		<s:else>	
		d.add('<s:property value="ID"/>','<s:property value="PARENT_ID"/>','<s:property value="NAME"/>','<%=request.getContextPath()%>${ACTIONNAME}','','right');
		</s:else>	
	</s:iterator>	
	document.write(d);
	</script>
	</div>

	</td>
	</tr>
</table>

</BODY>
</HTML>
      