<%@ page language="java" contentType="text/html;charset=GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<HTML>
<HEAD>
<link href="<%= request.getContextPath() %>/css/dtree.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
</HEAD>
<s:action id="lesson" name="lesson"/>
<s:action id="login" name="login"/>



<BODY bgColor=#DDF0FB leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">

<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" >
	<tr>
	<td>
	<div class="dtree">
	<script type="text/javascript">
	d = new dTree('d','<%= request.getContextPath() %>');
	d.add('0','-1','ËùÓÐ¿Î³Ì')
	<s:iterator value="#lesson.query()">			
		d.add('<s:property value="code"/>','0','<s:property value="name"/>','<%=request.getContextPath()%>/lesson!queryTeachingProgram.action?lessonCode=<s:property value="code"/>','','right01');	
	</s:iterator>	
	document.write(d);
	</script>
	</div>

	</td>
	</tr>
</table>

</BODY>
</HTML>
      