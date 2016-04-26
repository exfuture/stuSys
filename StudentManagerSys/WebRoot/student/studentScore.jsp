<%@ page language="java" contentType="text/html;  charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="edu.sms.entity.Student"%>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>ÎÞ±êÌâÎÄµµ</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 24px}
.STYLE3 {font-size: x-large}
-->
table {
	width: 100%;
	margin: 0px auto;
	font: Georgia 11px;
	font-size: 12px;
	color: #333333;
	text-align: left;
	border-collapse: collapse; /*Ï¸Ïß±í¸ñ´úÂë*/
}

table td {
	border: 1px solid #999; /*Ï¸Ïß±í¸ñÏßÌõÑÕÉ«*/
	height: 22px;
}

caption {
	text-align: center;
	font-size: 12px;
	font-weight: bold;
	margin: 0 auto;
}

tr.t1 td {
	background-color: #fff;
}

tr.t2 td {
	background-color: #eee;
}

tr.t3 td {
	background-color: #ccc;
}

th,tfoot tr td {
	font-weight: bold;
	text-align: center;
	background: #c5c5c5;
}

th {
	line-height: 30px;
	height: 30px;
}

tfoot tr td {
	background: #fff;
	line-height: 26px;
	height: 26px;
}

thead {
	border: 1px solid #999;
}

thead tr td {
	text-align: center;
}

#page {
	text-align: center;
	float: right;
}

#page a,#page a:visited {
	width: 60px;
	height: 22px;
	line-height: 22px;
	border: 1px black solid;
	display: block;
	float: left;
	margin: 0 3px;
	background: #c9c9c9;
	text-decoration: none;
}

#page a:hover {
	background: #c1c1c1;
	text-decoration: none;
}

.grayr {
	padding: 2px;
	font-size: 11px;
	background: #fff;
	float: right;
}

.grayr a {
	padding: 2px 5px;
	margin: 2px;
	color: #000;
	text-decoration: none;;
	border: 1px #c0c0c0 solid;
}

.grayr a:hover {
	color: #000;
	border: 1px orange solid;
}

.grayr a:active {
	color: #000;
	background: #99ffff
}

.grayr span.current {
	padding: 2px 5px;
	font-weight: bold;
	margin: 2px;
	color: #303030;
	background: #fff;
	border: 1px orange solid;
}

.grayr span.disabled {
	padding: 2px 5px;
	margin: 2px;
	color: #797979;
	background: #c1c1c1;
	border: 1px #c1c1c1 solid;
}
</style>
</head>
<script type="text/javascript">
	//°´Å¥Ö±½Ó¼Ó»òÕß¿Û·Ö
	function cut(cut,reason) {
		var stuNo=document.getElementById("stuNo").value;	
		var studentScore=document.getElementById("studentScore").value;   	
		reason=encodeURI(reason);
//		reason=encodeURI(reason);
		if(cDate.value==""){
			alert("ÇëÌîÐ´ÈÕÆÚ");
			cDate.focus();
		}else{
			if(confirm("ÊÇ·ñÈ·¶¨Òª½øÐÐ¼Ó/¿Û·Ö"))
		    {	//Èç¹ûÊÇtrue £¬
		    	var stuNo=document.getElementById("stuNo").value;	   	
				var url = "student!cut.action?stuNo="+stuNo+"&chooseDate="+cDate.value+"&cut="+cut+"&reason="+reason+"&studentScore="+studentScore;
				window.location.href = url;
		     }
   		 	else
		    {
		    //·ñÔòËµÃ÷ÏÂÁË£¬ºÕºÕ		
		      alert("Äã°´ÁËÈ¡Ïû£¬ÄÇ¾ÍÊÇ·µ»Øfalse");		
		    }
		}
	}
	//ÌîÐ´¿Û·Ö
	function cut1(ca,name,reason) {
		var cDate=document.getElementById("cDate");
		var caScore=document.getElementById(name);
		reason=encodeURI(reason);
		if(cDate.value==""){
			alert("ÇëÌîÐ´ÈÕÆÚ");
			cDate.focus();
		}else if(caScore.value==""){
			alert("ÇëÊäÈë·ÖÊý");
		}else{
			if(confirm("ÊÇ·ñÈ·¶¨Òª½øÐÐ¼Ó/¿Û·Ö"))
		    {	//Èç¹ûÊÇtrue £¬
		    	var stuNo=document.getElementById("stuNo").value;	
		    	var studentScore=document.getElementById("studentScore").value;   	
				var url = "student!cut.action?stuNo="+stuNo+"&chooseDate="+cDate.value+"&cut="+ca+caScore.value+"&reason="+reason+"&studentScore="+studentScore;
				window.location.href = url;
		     }
   		 	else
		    {
		    //·ñÔòËµÃ÷ÏÂÁË
		      alert("Äã°´ÁËÈ¡Ïû£¬ÄÇ¾ÍÊÇ·µ»Øfalse");		
		    }
		}
	}
</script>

<body>
<% 
	Student s=(Student)request.getAttribute("stu1"); 
	
 %>
<input type="hidden" id="stuNo" name="stuNo" value="<%=s.getStuNo()%>">
<input type="hidden" id="studentScore" name="studentScore" value="<%=s.getStudentScore()%>">
<table width="866" border="1">
  <tr>
    <td colspan="6"><span class="STYLE3">ÐÅÏ¢¹¤³ÌÏµÆóÒµ»¯Ñ§Éú¹ÜÀíÄ£Ê½¿¼ºËÃ÷Ï¸±í</span></td>
  </tr>
  <tr>
    <td width="29" height="46">ÐÕÃû</td>
    <td width="154"><%=s.getStuName()%> </td>
    <td width="73"><p>ÉÏÑ§ÆÚ</p>
    <p>³É¼¨ÅÅÃû¼°³É¼¨</p>
    
    </td>
    <td width="159"><p></>°à¼¶ÅÅÃû<%=s.getLastTermRank()%> </p>
    <p><a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=s.getStuNo()%>">²éÑ¯±¾Ñ§ÆÚ¼Ó¿Û·ÖÇé¿ö</a></p></td>
    <td width="302"> <input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>&lt;- µãÎÒµ¯³öÈÕÆÚ¿Ø¼þ</font></td>
    <td width="109">×Ü·Ö</td>
  </tr>
  <tr>
    <td rowspan="18"><p class="STYLE1">¿Û</p>
    <p class="STYLE1">·Ö</p>
    <p class="STYLE1">Ïî</p></td>
    <td colspan="3">³Ùµ½£¨Ã¿´Î¿ÛÒ»·Ö£©</td>
    <td><label>
      <input name="cut1" type="button" value="¿Û1·Ö" onclick="cut('-1','³Ùµ½¿ÛÒ»·Ö');"/>
    </label></td>
    <td rowspan="28">&nbsp;<%=s.getStudentScore()%></td>
  </tr>
  <tr>
    <td colspan="3">¿õ¿Î£¨Ã¿Ò»´ÎÃ¿Ñ§Ê±¿Û2·Ö£¬ÒÔºóÃ¿Ñ§Ê±¿Û¡°´ÎÊý+1¡±·Ö£©</td>
    <td>¿Û
      <label>
      <input id="kuangKe" name="kuangKe" type="text" maxlength="2" />
    ·Ö
    <input type="button" name="kk" value="Ìá½»" onclick="cut1('-','kuangKe','¿õ¿Î¿Û·Ö');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">¿ÎÌÃÎ¥¼Í£¨Ã¿´Î¿Û1·Ö£©£¨°üÀ¨ÍæÊÖ»ú¡¢Ë¯¾õ¡¢ËæÒâ×ß¶¯µÈ£©</td>
    <td><label>
      <input name="Submit3" type="button" value="¿Û1·Ö" onclick="cut('-1','¿ÎÌÃÎ¥¼Í¿ÛÒ»·Ö')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">ÇÞÊÒÎ¥¼Í£¨Ã¿´Î1-2·Ö£©£¨°üÀ¨¾ÍÇÞ¡¢Æð´²¡¢¼ÍÂÉµÈ£©</td>
    <td>¿Û
      <label>
      <input type="text" id="qswj" name="qswj" />
    ·Ö
    <input type="submit" name="button" value="Ìá½»" onclick="cut1('-','qswj','ÇÞÊÒÎ¥¼Í¿Û·Ö');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">¿õÇÞ£¨Ã¿´Î¿Û10·Ö£©</td>
    <td><input name="kq" type="button" value="¿Û10·Ö" onclick="cut('-10','¿õÇÞ¿ÛÊ®·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">ÇÞÊÒÎÀÉú²»ºÏ¸ñ£¨Ã¿´Î¿Û1·Ö£©</td>
    <td><input name="Submit5" type="button" value="¿Û1·Ö" onclick="cut('-1','ÇÞÊÒÎÀÉú²»ºÏ¸ñ¿ÛÒ»·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">°à¼¶ÖµÈÕ²»ºÏ¸ñ£¨Ã¿´Î¿Û1·Ö£©</td>
    <td><label>
      <input name="Submit6" type="button" value="¿Û1·Ö" onclick="cut('-1','°à¼¶ÖµÈÕ²»ºÏ¸ñ¿ÛÒ»·Ö')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">·¢ÐÍ·þÊÎ²»ºÏ¸ñ£¨Ã¿´Î¿Û2·Ö£©</td>
    <td><label>
      <input name="Submit7" type="button" value="¿Û2·Ö" onclick="cut('-2','·¢ÐÍ·þÊÎ²»ºÏ¸ñ¿Û¶þ·Ö')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">¿Î¼äÐú»©´òÄÖ£¨Ã¿´Î¿Û0.5-1·Ö£©</td>
    <td>¿Û
      <label>
      <input type="text" id="kjxhdn" name="kjxhdn" />
    ·Ö
    <input type="button" name="aaa" value="Ìá½»" onclick="cut1('-','kjxhdn','¿Î¼äÐú»©´òÄÖ¿Û·Ö');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">ÆÆ»µ¹«Îï£¨ÊÓÇé¿ö¿Û1-5·Ö£©</td>
    <td>¿Û
      <label>
      <input type="text" id="phgw" name="phgw" />
·Ö
<input type="button" name="Submit82" value="Ìá½»" onclick="cut1('-','phgw','ÆÆ»µ¹«Îï¿Û·Ö');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">´ò¼ÜÂîÈË£¨ÊÓÇé¿ö¿Û1-5·Ö£©</td>
    <td>¿Û
      <label>
      <input type="text" id="djmr" name="djmr" />
·Ö
<input type="button" name="Submit83" value="Ìá½»" onclick="cut1('-','djmr','´ò¼ÜÂîÈË¿Û·Ö');"/>
      </label></td>
  </tr>
   <tr>
    <td colspan="3">²»×ðÖØÀÏÊ¦£¨ÊÓÇé¿ö¿Û3-10·Ö£©</td>
    <td>¿Û
      <label>
      <input type="text" id="bzzls" name="bzzls" />
·Ö
<input type="button" name="bzzls1" value="Ìá½»" onclick="cut1('-','bzzls','²»×ðÖØÀÏÊ¦¿Û·Ö');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">²¹¿¼£¨Ã¿¿Æ¿Û2·Ö£©</td>
    <td><input name="Submit72" type="button" value="¿Û2·Ö" onclick="cut('-2','²¹¿¼¿Û¶þ·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">¿¼ÊÔ×÷±×£¨Ã¿´Î¿Û3·Ö£©</td>
    <td><input name="Submit73" type="button" value="¿Û3·Ö" onclick="cut('-3','¿¼ÊÔ×÷±×¿ÛÈý·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">ÊÂ¼Ù£¨ÊÓÇé¿ö¿Û0.5-1·Ö£©</td>
    <td>¿Û
      <label>
      <input type="text" id="sj" name="sj" />
·Ö
<input type="button" name="Submit832" value="Ìá½»" onclick="cut1('-','sj','ÊÂ¼Ù¿Û·Ö');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">ÎüÑÌ£¨¿Û10·Ö£©</td>
    <td><input name="Submitxy" type="button" value="¿Û10·Ö" onclick="cut('-10','ÎüÑÌ¿ÛÊ®·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">ºÈ¾Æ£¨¿Û15·Ö£©</td>
    <td><input name="Submithj" type="button" value="¿Û15·Ö" onclick="cut('-15','ºÈ¾Æ¿ÛÊ®Îå·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">¹ã³¡Îè¿¼ºË£¨¿Û5·Ö£©</td>
    <td><input name="Submitgcw" type="button" value="¿Û5·Ö" onclick="cut('-5','¹ã³¡Îè¿¼ºË¿ÛÎå·Ö')"/></td>
  </tr>
  <tr>
    <td rowspan="10"><p class="STYLE1">¼Ó</p>
    <p class="STYLE1">·Ö</p>
    <p class="STYLE1">Ïî</p></td>
    <td colspan="3">Ñ§Éú¸É²¿¹¤×÷½±Àø£¨Ã¿ÔÂÄ©ÊÓ¹¤×÷Çé¿ö¼Ó1-3·Ö£©</td>
    <td>¼Ó
      <label>
      <input type="text" id="xsgbgzjl" name="xsgbgzjl" />
·Ö
<input type="button" name="Submit833" value="Ìá½»" onclick="cut1('','xsgbgzjl','Ñ§Éú¸É²¿¹¤×÷½±Àø')";/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">Ñ§ÉúÂÄÐÐ×ÔÉíÔðÈÎ£¨Ã¿ÔÂÄ©ÊÓÍê³ÉÇé¿ö¼Ó0.5-2·Ö£©</td>
    <td>¼Ó
      <label>
      <input type="text" id="xslxzszr" name="xslxzszr" />
·Ö
<input type="button" name="Submit834" value="Ìá½»" onclick="cut1('','xslxzszr','Ñ§ÉúÂÄÐÐ×ÔÉíÔðÈÎ¼Ó·Ö')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">Ã¿ÔÂÈ«ÇÚ½±£¨Ã¿ÔÂÄ©¼Ó3·Ö£©</td>
    <td><input name="Submit732" type="button" value="¼Ó3·Ö"  onclick="cut('3','È«ÇÚ½±¼ÓÈý·Ö')"/></td>
  </tr>
  <tr>
    <td colspan="3">Ë«Ö¤»ñÈ¡£¨Ã¿Ö¤¼Ó10·Ö£©</td>
    <td><label>
      <input name="Submit8342" type="button" value="¼Ó10·Ö" onclick="cut('10','Ë«Ö¤»ñÈ¡¼ÓÊ®·Ö')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">ÀÍ¶¯»ý·Ö£¨Ã¿´Î¼Ó1-5·Ö£©£¨°üÀ¨»ú·¿·þÎñ¡¢¼ÆËã»úÎ¬»¤µÈ£©</td>
    <td>¼Ó
      <label>
      <input type="text" id="ldjf" name="ldjf" />
·Ö
<input type="button" name="Submit8343" value="Ìá½»" onclick="cut1('','ldjf','ÀÍ¶¯»ý·Ö¼Ó·Ö')"/>
      </label></td>
  </tr>
    <tr>
    <td colspan="3">²Î¼Ó»î¶¯»ý¼«£¨Ã¿´Î¼Ó1-2·Ö£©£¨°üÀ¨ÔºÏµ¸÷ÖÖ±ÈÈü»î¶¯µÈ£©</td>
    <td>¼Ó
      <label>
      <input type="text" id="cjhdjj" name="cjhdjj" />
·Ö
<input type="button" name="Submitcjhdjj" value="Ìá½»" onclick="cut1('','cjhdjj','²Î¼Ó»î¶¯»ý¼«¼Ó·Ö')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">¸÷ÖÖ»î¶¯¡¢±ÈÈü»ñ½±£¨Ã¿´Î¼Ó3-5·Ö£©</td>
    <td>¼Ó
      <label>
      <input type="text" id="gzhdbs" name="gzhdbs" />
·Ö
<input type="button" name="Submit8344" value="Ìá½»" onclick="cut1('','gzhdbs','¸÷ÖÖ»î¶¯¡¢±ÈÈü»ñ½±¼Ó·Ö')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">×ÔÖÎÇø¼¶ÒÔÏÂ¸÷¼¶ÈÙÓþ»ñµÃ£¨Ã¿´Î¼Ó3-5·Ö£©</td>
    <td>¼Ó
      <label>
      <input type="text"  id="zzqjry"name="zzqjry" />
·Ö
<input type="button" name="Submit8345" value="Ìá½»" onclick="cut1('','zzqjry','×ÔÖÎÇø¼¶ÒÔÏÂ¸÷¼¶ÈÙÓþ»ñµÃ¼Ó·Ö')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">ËÞÉáÎÀÉú»ñ±íÑï£¨Ã¿´Î¼Ó1-2·Ö£©</td>
    <td>¼Ó
      <label>
      <input type="text" id="ssws" name="ssws" />
·Ö
<input type="button" name="Submit8346" value="Ìá½»" onclick="cut1('','ssws','ËÞÉáÎÀÉú»ñ±íÑï¼Ó·Ö')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">¸÷Àà×÷Æ··¢±í¡¢Éç»á¹±Ï×¼°ÆäËü£¨ÊÓÇé¿ö¼Ó·Ö£©</td>
    <td>¼Ó
      <label>
      <input type="glzpfb" id="glzpfb" name="glzpfb" />
·Ö
<input type="button" name="Submit8347" value="Ìá½»" onclick="cut1('','glzpfb','¸÷Àà×÷Æ··¢±í¡¢Éç»á¹±Ï×¼°ÆäËü¼Ó·Ö')"/>
      </label></td>
  </tr>
</table>
</body>

<SCRIPT LANGUAGE="JavaScript">


</SCRIPT>
</html>


