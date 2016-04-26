<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ºôÂ×±´¶ûÖ°Òµ¼¼ÊõÑ§ÔºÆóÒµ»¯°à¼¶¹ÜÀíÏµÍ³µÇÂ¼Ò³</title>
<style type="text/css">
<!--
body {
	background-image: url(image/bg.jpg);
	background-repeat: no-repeat;
}
.STYLE2 {color: #666666}
-->
</style>
</head>
<script type="text/javascript">
function checkForm(){
	var stuId = document.login.stuId.value;
	var stuPassword = document.login.stuPassword.value;
	if(stuId == ''){
		alert('ÇëÄúÊäÈëÓÃ»§Ãû£¡');
		return false;
	}
	if(stuPassword == ''){
		alert('ÇëÄúÊäÈëÃÜÂë£¡');
		return false;
	}
	return true;
}

function submit(){

	document.login.submit();
}
</script>
<body>
<blockquote>&nbsp;	</blockquote>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp; </p>
<p>&nbsp;</p>
<table width="835" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th width="492" height="83" scope="col">&nbsp;</th>
    <th width="341" scope="col"><table width="256" height="78" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" bgcolor="#CCCCCC">
      <tr>
        <th height="56" bordercolor="#CCCCCC" scope="col">
	  <form name=login action="<%=request.getContextPath()%>/login!login.action" method=post onSubmit="return checkForm();">
	  <table width="270" height="145" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
      <tr>
        <th width="76" height="31" scope="col">ÓÃ»§µÇÂ¼</th>
        <th width="188" bordercolor="#225084" scope="col">&nbsp;</th>
      </tr>
      <tr>
        <th height="47" scope="col"><span class="STYLE2">ÓÃ»§Ãû</span></th>
        <th scope="col">
          <label>
            <input type="text" name="username" />
            </label>
       
        </th>
      </tr>
      <tr>
        <th height="29" scope="col"><span class="STYLE2">ÃÜ Âë</span></th>
        <th scope="col">
          <label>
            <input type="password" name="password" />
            </label>
        
        </th>
      </tr>
      <tr>
        <th height="36" scope="col">&nbsp;</th>
        <th align="center" valign="bottom" scope="col"><img src="image/dl.gif" width="73" height="24" onclick="submit();" /></th>
      </tr>
    </table>
	</form>&nbsp;</th>
      </tr>
    </table></th>
  </tr>
</table>
</body>
</html>