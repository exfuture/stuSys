<%@ page language="java" contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<s:action id="login" name="login"/>
<style type="text/css">
 body{

            }

</style>

<script>
	function signIn(){
		window.location.href="teacher!signInDay.action" 	
	}
</script>
 <body  >
    <table width="100%" height="100%" >
		<tr >
			<td align="center" valign="center">
				<input style="width:300px;height:100px;color:black;background: #B2DFEE;font-size:30px"  type="button" value="签到" onclick="signIn();"/>
			</td>
		</tr>
    </table>
    
  </body>
</HEAD>
