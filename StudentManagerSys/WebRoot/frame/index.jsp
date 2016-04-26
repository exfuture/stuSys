<%@page contentType="text/html;charset=GBK"%>
<html>
<HEAD>
<TITLE></TITLE>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
</HEAD>
<FRAMESET 
frameSpacing=0 rows=92,* frameBorder=NO>
	<FRAME name=top1 src="frame/top2.jsp" scrolling=no target="_self">
	<FRAMESET id=bbsArea name=main frameSpacing=0 frameBorder=NO cols=170,9,*>
		<FRAMESET id=_leftAll name=leftAll frameSpacing=0 rows=27,*,37 frameBorder=NO>
			<FRAME id=_leftup name=leftup src="frame/left1.htm" scrolling=no target="right" noresize>
			<FRAME id=_left name=left src="frame/left.jsp" scrolling=auto target="right">
			<FRAME id=_leftdown name=leftdown src="frame/left3.htm" scrolling=no target="right" noresize></FRAMESET>
			<FRAME name=control src="frame/control.htm" scrolling=no><FRAME name=right src="frame/right.htm" scrolling=yes>
		</FRAMESET>
	</FRAMESET>
</HTML>
