<%@ page language="java" contentType="text/html;  charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="edu.sms.entity.Student"%>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>�ޱ����ĵ�</title>
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
	border-collapse: collapse; /*ϸ�߱�����*/
}

table td {
	border: 1px solid #999; /*ϸ�߱��������ɫ*/
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
	//��ťֱ�Ӽӻ��߿۷�
	function cut(cut,reason) {
		var stuNo=document.getElementById("stuNo").value;	
		var studentScore=document.getElementById("studentScore").value;   	
		reason=encodeURI(reason);
//		reason=encodeURI(reason);
		if(cDate.value==""){
			alert("����д����");
			cDate.focus();
		}else{
			if(confirm("�Ƿ�ȷ��Ҫ���м�/�۷�"))
		    {	//�����true ��
		    	var stuNo=document.getElementById("stuNo").value;	   	
				var url = "student!cut.action?stuNo="+stuNo+"&chooseDate="+cDate.value+"&cut="+cut+"&reason="+reason+"&studentScore="+studentScore;
				window.location.href = url;
		     }
   		 	else
		    {
		    //����˵�����ˣ��պ�		
		      alert("�㰴��ȡ�����Ǿ��Ƿ���false");		
		    }
		}
	}
	//��д�۷�
	function cut1(ca,name,reason) {
		var cDate=document.getElementById("cDate");
		var caScore=document.getElementById(name);
		reason=encodeURI(reason);
		if(cDate.value==""){
			alert("����д����");
			cDate.focus();
		}else if(caScore.value==""){
			alert("���������");
		}else{
			if(confirm("�Ƿ�ȷ��Ҫ���м�/�۷�"))
		    {	//�����true ��
		    	var stuNo=document.getElementById("stuNo").value;	
		    	var studentScore=document.getElementById("studentScore").value;   	
				var url = "student!cut.action?stuNo="+stuNo+"&chooseDate="+cDate.value+"&cut="+ca+caScore.value+"&reason="+reason+"&studentScore="+studentScore;
				window.location.href = url;
		     }
   		 	else
		    {
		    //����˵������
		      alert("�㰴��ȡ�����Ǿ��Ƿ���false");		
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
    <td colspan="6"><span class="STYLE3">��Ϣ����ϵ��ҵ��ѧ������ģʽ������ϸ��</span></td>
  </tr>
  <tr>
    <td width="29" height="46">����</td>
    <td width="154"><%=s.getStuName()%> </td>
    <td width="73"><p>��ѧ��</p>
    <p>�ɼ��������ɼ�</p>
    
    </td>
    <td width="159"><p></>�༶����<%=s.getLastTermRank()%> </p>
    <p><a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=s.getStuNo()%>">��ѯ��ѧ�ڼӿ۷����</a></p></td>
    <td width="302"> <input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>&lt;- ���ҵ������ڿؼ�</font></td>
    <td width="109">�ܷ�</td>
  </tr>
  <tr>
    <td rowspan="18"><p class="STYLE1">��</p>
    <p class="STYLE1">��</p>
    <p class="STYLE1">��</p></td>
    <td colspan="3">�ٵ���ÿ�ο�һ�֣�</td>
    <td><label>
      <input name="cut1" type="button" value="��1��" onclick="cut('-1','�ٵ���һ��');"/>
    </label></td>
    <td rowspan="28">&nbsp;<%=s.getStudentScore()%></td>
  </tr>
  <tr>
    <td colspan="3">���Σ�ÿһ��ÿѧʱ��2�֣��Ժ�ÿѧʱ�ۡ�����+1���֣�</td>
    <td>��
      <label>
      <input id="kuangKe" name="kuangKe" type="text" maxlength="2" />
    ��
    <input type="button" name="kk" value="�ύ" onclick="cut1('-','kuangKe','���ο۷�');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">����Υ�ͣ�ÿ�ο�1�֣����������ֻ���˯���������߶��ȣ�</td>
    <td><label>
      <input name="Submit3" type="button" value="��1��" onclick="cut('-1','����Υ�Ϳ�һ��')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">����Υ�ͣ�ÿ��1-2�֣����������ޡ��𴲡����ɵȣ�</td>
    <td>��
      <label>
      <input type="text" id="qswj" name="qswj" />
    ��
    <input type="submit" name="button" value="�ύ" onclick="cut1('-','qswj','����Υ�Ϳ۷�');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">���ޣ�ÿ�ο�10�֣�</td>
    <td><input name="kq" type="button" value="��10��" onclick="cut('-10','���޿�ʮ��')"/></td>
  </tr>
  <tr>
    <td colspan="3">�����������ϸ�ÿ�ο�1�֣�</td>
    <td><input name="Submit5" type="button" value="��1��" onclick="cut('-1','�����������ϸ��һ��')"/></td>
  </tr>
  <tr>
    <td colspan="3">�༶ֵ�ղ��ϸ�ÿ�ο�1�֣�</td>
    <td><label>
      <input name="Submit6" type="button" value="��1��" onclick="cut('-1','�༶ֵ�ղ��ϸ��һ��')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">���ͷ��β��ϸ�ÿ�ο�2�֣�</td>
    <td><label>
      <input name="Submit7" type="button" value="��2��" onclick="cut('-2','���ͷ��β��ϸ�۶���')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">�μ��������֣�ÿ�ο�0.5-1�֣�</td>
    <td>��
      <label>
      <input type="text" id="kjxhdn" name="kjxhdn" />
    ��
    <input type="button" name="aaa" value="�ύ" onclick="cut1('-','kjxhdn','�μ��������ֿ۷�');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">�ƻ�����������1-5�֣�</td>
    <td>��
      <label>
      <input type="text" id="phgw" name="phgw" />
��
<input type="button" name="Submit82" value="�ύ" onclick="cut1('-','phgw','�ƻ�����۷�');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">������ˣ��������1-5�֣�</td>
    <td>��
      <label>
      <input type="text" id="djmr" name="djmr" />
��
<input type="button" name="Submit83" value="�ύ" onclick="cut1('-','djmr','������˿۷�');"/>
      </label></td>
  </tr>
   <tr>
    <td colspan="3">��������ʦ���������3-10�֣�</td>
    <td>��
      <label>
      <input type="text" id="bzzls" name="bzzls" />
��
<input type="button" name="bzzls1" value="�ύ" onclick="cut1('-','bzzls','��������ʦ�۷�');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">������ÿ�ƿ�2�֣�</td>
    <td><input name="Submit72" type="button" value="��2��" onclick="cut('-2','�����۶���')"/></td>
  </tr>
  <tr>
    <td colspan="3">�������ף�ÿ�ο�3�֣�</td>
    <td><input name="Submit73" type="button" value="��3��" onclick="cut('-3','�������׿�����')"/></td>
  </tr>
  <tr>
    <td colspan="3">�¼٣��������0.5-1�֣�</td>
    <td>��
      <label>
      <input type="text" id="sj" name="sj" />
��
<input type="button" name="Submit832" value="�ύ" onclick="cut1('-','sj','�¼ٿ۷�');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">���̣���10�֣�</td>
    <td><input name="Submitxy" type="button" value="��10��" onclick="cut('-10','���̿�ʮ��')"/></td>
  </tr>
  <tr>
    <td colspan="3">�Ⱦƣ���15�֣�</td>
    <td><input name="Submithj" type="button" value="��15��" onclick="cut('-15','�Ⱦƿ�ʮ���')"/></td>
  </tr>
  <tr>
    <td colspan="3">�㳡�迼�ˣ���5�֣�</td>
    <td><input name="Submitgcw" type="button" value="��5��" onclick="cut('-5','�㳡�迼�˿����')"/></td>
  </tr>
  <tr>
    <td rowspan="10"><p class="STYLE1">��</p>
    <p class="STYLE1">��</p>
    <p class="STYLE1">��</p></td>
    <td colspan="3">ѧ���ɲ�����������ÿ��ĩ�ӹ��������1-3�֣�</td>
    <td>��
      <label>
      <input type="text" id="xsgbgzjl" name="xsgbgzjl" />
��
<input type="button" name="Submit833" value="�ύ" onclick="cut1('','xsgbgzjl','ѧ���ɲ���������')";/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">ѧ�������������Σ�ÿ��ĩ����������0.5-2�֣�</td>
    <td>��
      <label>
      <input type="text" id="xslxzszr" name="xslxzszr" />
��
<input type="button" name="Submit834" value="�ύ" onclick="cut1('','xslxzszr','ѧ�������������μӷ�')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">ÿ��ȫ�ڽ���ÿ��ĩ��3�֣�</td>
    <td><input name="Submit732" type="button" value="��3��"  onclick="cut('3','ȫ�ڽ�������')"/></td>
  </tr>
  <tr>
    <td colspan="3">˫֤��ȡ��ÿ֤��10�֣�</td>
    <td><label>
      <input name="Submit8342" type="button" value="��10��" onclick="cut('10','˫֤��ȡ��ʮ��')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">�Ͷ����֣�ÿ�μ�1-5�֣��������������񡢼����ά���ȣ�</td>
    <td>��
      <label>
      <input type="text" id="ldjf" name="ldjf" />
��
<input type="button" name="Submit8343" value="�ύ" onclick="cut1('','ldjf','�Ͷ����ּӷ�')"/>
      </label></td>
  </tr>
    <tr>
    <td colspan="3">�μӻ������ÿ�μ�1-2�֣�������Ժϵ���ֱ�����ȣ�</td>
    <td>��
      <label>
      <input type="text" id="cjhdjj" name="cjhdjj" />
��
<input type="button" name="Submitcjhdjj" value="�ύ" onclick="cut1('','cjhdjj','�μӻ�����ӷ�')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">���ֻ�������񽱣�ÿ�μ�3-5�֣�</td>
    <td>��
      <label>
      <input type="text" id="gzhdbs" name="gzhdbs" />
��
<input type="button" name="Submit8344" value="�ύ" onclick="cut1('','gzhdbs','���ֻ�������񽱼ӷ�')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">�����������¸���������ã�ÿ�μ�3-5�֣�</td>
    <td>��
      <label>
      <input type="text"  id="zzqjry"name="zzqjry" />
��
<input type="button" name="Submit8345" value="�ύ" onclick="cut1('','zzqjry','�����������¸���������üӷ�')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">������������ÿ�μ�1-2�֣�</td>
    <td>��
      <label>
      <input type="text" id="ssws" name="ssws" />
��
<input type="button" name="Submit8346" value="�ύ" onclick="cut1('','ssws','�������������ӷ�')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">������Ʒ������ṱ�׼�������������ӷ֣�</td>
    <td>��
      <label>
      <input type="glzpfb" id="glzpfb" name="glzpfb" />
��
<input type="button" name="Submit8347" value="�ύ" onclick="cut1('','glzpfb','������Ʒ������ṱ�׼������ӷ�')"/>
      </label></td>
  </tr>
</table>
</body>

<SCRIPT LANGUAGE="JavaScript">


</SCRIPT>
</html>


