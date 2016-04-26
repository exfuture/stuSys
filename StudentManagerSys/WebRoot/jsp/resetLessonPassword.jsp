<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>无标题文档</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->

</head>

<body>

  <script type="text/javascript">
function checkPassword(){
	var p1=document.getElementById("pswd1").value;
	var p2=document.getElementById("pswd2").value;
	if(p1!=p2){
	alert("密码输入不一致请重新输入！");
	
	}


}
  
  
  </script>
<form action="teachingProgram!ResetLessonLoginPassword.action" method="post"><div align="right"> 
  </div><div align="center"><div align="right"> 
    </div><table width="445" border="0" height="174">
    <tr>
    	<td width="127" align="right">请输入原密码：</td>
    	<td align="left"><input name="oldpassword" id="oldpassword" type="password" /></td>
    
    </tr>
      <tr>
        <td width="127" align="right">请输入新密码：</td>
        <td align="left"> <input name="resetpassword1" id="pswd1" type="password" /></td>
  </tr>
      <tr>
        <td width="140" align="right">请重新输入密码：</td>
        <td align="left"> <input name="resetpassword2" id="pswd2" type="password"  onchange="checkPassword();"/></td>
  </tr>
      <tr>
        
        <td width="127">&nbsp;</td>
        <td width="127" align="left">
          <input type="submit" name="Submit" value="确定" />  
         &nbsp;&nbsp;
          <input type="reset" name="Reset" value="取消" /> 
        </td>
      </tr>
    </table>
  </div>

</form>



</body>
</html>
