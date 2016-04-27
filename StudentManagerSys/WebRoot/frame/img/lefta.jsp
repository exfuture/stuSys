<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import = "java.util.*" %>
<%@ page import = "edu.sms.entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="css/editTable.css" media="all"/>
<script type="text/javascript" src="<%= request.getContextPath()%>/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/js/editTable.js"></script>
</head>

<body>

	<table>
    	<thead>
        	<tr>
            	<th colspan="2">鼠标点击表格就可以编辑</th>
            </tr>
        </thead>
        <tbody>
        <s:iterator id="a"  value="#session.stus" status="st"  >	
		 
		<tr><td><s:property value='st.stuName'/></td><td><s:property value='#a.classNo'/></td></tr>	
		 
	
	
		</s:iterator>
        	
        	
        	<tr>
            	<th>学号</th>
                <th>姓名</th>
            </tr>
            <tr>
            	<td>000001</td>
                <td>张三</td>
            </tr>
            <tr>
            	<td>000002</td>
                <td>李四</td>
            </tr>
            <tr>
            	<td>000003</td>
                <td>王五</td>
            </tr>
            <tr>
            	<td>000004</td>
                <td>赵六</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
