<%@page contentType="text/html;charset=GBK"%>
<html>
<HEAD>
<TITLE>教学质量评估管理系统</TITLE>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
</HEAD>
<FRAMESET frameSpacing=0 rows=55,5,* frameBorder=NO>
	<FRAME name=top11 src="<%=request.getContextPath() %>/jsp/dagang/top.jsp" scrolling=no target="_self">
	<FRAME name=top12 src="<%=request.getContextPath() %>/frame/top2.jsp" scrolling=no target="_self">
	<FRAMESET id=bbsArea name=main frameSpacing=0 frameBorder=NO cols=170,*>
			<FRAME id=_leftup name=left01 src="<%=request.getContextPath() %>/jsp/dagang/lesson.jsp" scrolling=no target="right01" noresize>
			
			<FRAME name=right01 src="<%=request.getContextPath() %>/jsp/dagang/right.jsp" scrolling=yes>
	</FRAMESET>
</FRAMESET>
</HTML>

