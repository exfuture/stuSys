<%@ page language="java" contentType="text/html;  charset=gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="edu.sms.entity.Student"%>
<LINK href="<%= request.getContextPath()%>/frame/style.css" type=text/css rel=stylesheet>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>无标题文档</title>
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
	border-collapse: collapse; /*细线表格代码*/
}

table td {
	border: 1px solid #999; /*细线表格线条颜色*/
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
	//按钮直接加或者扣分
	function cut(cut,reason) {
		var stuNo=document.getElementById("stuNo").value;	
		var studentScore=document.getElementById("studentScore").value;   	
		reason=encodeURI(reason);
//		reason=encodeURI(reason);
		if(cDate.value==""){
			alert("请填写日期");
			cDate.focus();
		}else{
			if(confirm("是否确定要进行加/扣分"))
		    {	//如果是true ，
		    	var stuNo=document.getElementById("stuNo").value;	   	
				var url = "student!cut.action?stuNo="+stuNo+"&chooseDate="+cDate.value+"&cut="+cut+"&reason="+reason+"&studentScore="+studentScore;
				window.location.href = url;
		     }
   		 	else
		    {
		    //否则说明下了，赫赫		
		      alert("你按了取消，那就是返回false");		
		    }
		}
	}
	//填写扣分
	function cut1(ca,name,reason) {
		var cDate=document.getElementById("cDate");
		var caScore=document.getElementById(name);
		reason=encodeURI(reason);
		if(cDate.value==""){
			alert("请填写日期");
			cDate.focus();
		}else if(caScore.value==""){
			alert("请输入分数");
		}else{
			if(confirm("是否确定要进行加/扣分"))
		    {	//如果是true ，
		    	var stuNo=document.getElementById("stuNo").value;	
		    	var studentScore=document.getElementById("studentScore").value;   	
				var url = "student!cut.action?stuNo="+stuNo+"&chooseDate="+cDate.value+"&cut="+ca+caScore.value+"&reason="+reason+"&studentScore="+studentScore;
				window.location.href = url;
		     }
   		 	else
		    {
		    //否则说明下了
		      alert("你按了取消，那就是返回false");		
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
    <td colspan="6"><span class="STYLE3">信息工程系企业化学生管理模式考核明细表</span></td>
  </tr>
  <tr>
    <td width="29" height="46">姓名</td>
    <td width="154"><%=s.getStuName()%> </td>
    <td width="73"><p>上学期</p>
    <p>成绩排名及成绩</p>
    
    </td>
    <td width="159"><p></>班级排名<%=s.getLastTermRank()%> </p>
    <p><a href="<%=request.getContextPath()%>/student!getStudentSituation.action?stuNo=<%=s.getStuNo()%>">查询本学期加扣分情况</a></p></td>
    <td width="302"> <input type="text" id="cDate" name="cDate"  onClick="WdatePicker()"> <font color=red>&lt;- 点我弹出日期控件</font></td>
    <td width="109">总分</td>
  </tr>
  <tr>
    <td rowspan="18"><p class="STYLE1">扣</p>
    <p class="STYLE1">分</p>
    <p class="STYLE1">项</p></td>
    <td colspan="3">迟到（每次扣一分）</td>
    <td><label>
      <input name="cut1" type="button" value="扣1分" onclick="cut('-1','迟到扣一分');"/>
    </label></td>
    <td rowspan="28">&nbsp;<%=s.getStudentScore()%></td>
  </tr>
  <tr>
    <td colspan="3">旷课（每一次每学时扣2分，以后每学时扣“次数+1”分）</td>
    <td>扣
      <label>
      <input id="kuangKe" name="kuangKe" type="text" maxlength="2" />
    分
    <input type="button" name="kk" value="提交" onclick="cut1('-','kuangKe','旷课扣分');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">课堂违纪（每次扣1分）（包括玩手机、睡觉、随意走动等）</td>
    <td><label>
      <input name="Submit3" type="button" value="扣1分" onclick="cut('-1','课堂违纪扣一分')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">寝室违纪（每次1-2分）（包括就寝、起床、纪律等）</td>
    <td>扣
      <label>
      <input type="text" id="qswj" name="qswj" />
    分
    <input type="submit" name="button" value="提交" onclick="cut1('-','qswj','寝室违纪扣分');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">旷寝（每次扣10分）</td>
    <td><input name="kq" type="button" value="扣10分" onclick="cut('-10','旷寝扣十分')"/></td>
  </tr>
  <tr>
    <td colspan="3">寝室卫生不合格（每次扣1分）</td>
    <td><input name="Submit5" type="button" value="扣1分" onclick="cut('-1','寝室卫生不合格扣一分')"/></td>
  </tr>
  <tr>
    <td colspan="3">班级值日不合格（每次扣1分）</td>
    <td><label>
      <input name="Submit6" type="button" value="扣1分" onclick="cut('-1','班级值日不合格扣一分')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">发型服饰不合格（每次扣2分）</td>
    <td><label>
      <input name="Submit7" type="button" value="扣2分" onclick="cut('-2','发型服饰不合格扣二分')"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">课间喧哗打闹（每次扣0.5-1分）</td>
    <td>扣
      <label>
      <input type="text" id="kjxhdn" name="kjxhdn" />
    分
    <input type="button" name="aaa" value="提交" onclick="cut1('-','kjxhdn','课间喧哗打闹扣分');"/>
    </label></td>
  </tr>
  <tr>
    <td colspan="3">破坏公物（视情况扣1-5分）</td>
    <td>扣
      <label>
      <input type="text" id="phgw" name="phgw" />
分
<input type="button" name="Submit82" value="提交" onclick="cut1('-','phgw','破坏公物扣分');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">打架骂人（视情况扣1-5分）</td>
    <td>扣
      <label>
      <input type="text" id="djmr" name="djmr" />
分
<input type="button" name="Submit83" value="提交" onclick="cut1('-','djmr','打架骂人扣分');"/>
      </label></td>
  </tr>
   <tr>
    <td colspan="3">不尊重老师（视情况扣3-10分）</td>
    <td>扣
      <label>
      <input type="text" id="bzzls" name="bzzls" />
分
<input type="button" name="bzzls1" value="提交" onclick="cut1('-','bzzls','不尊重老师扣分');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">补考（每科扣2分）</td>
    <td><input name="Submit72" type="button" value="扣2分" onclick="cut('-2','补考扣二分')"/></td>
  </tr>
  <tr>
    <td colspan="3">考试作弊（每次扣3分）</td>
    <td><input name="Submit73" type="button" value="扣3分" onclick="cut('-3','考试作弊扣三分')"/></td>
  </tr>
  <tr>
    <td colspan="3">事假（视情况扣0.5-1分）</td>
    <td>扣
      <label>
      <input type="text" id="sj" name="sj" />
分
<input type="button" name="Submit832" value="提交" onclick="cut1('-','sj','事假扣分');"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">吸烟（扣10分）</td>
    <td><input name="Submitxy" type="button" value="扣10分" onclick="cut('-10','吸烟扣十分')"/></td>
  </tr>
  <tr>
    <td colspan="3">喝酒（扣15分）</td>
    <td><input name="Submithj" type="button" value="扣15分" onclick="cut('-15','喝酒扣十五分')"/></td>
  </tr>
  <tr>
    <td colspan="3">广场舞考核（扣5分）</td>
    <td><input name="Submitgcw" type="button" value="扣5分" onclick="cut('-5','广场舞考核扣五分')"/></td>
  </tr>
  <tr>
    <td rowspan="10"><p class="STYLE1">加</p>
    <p class="STYLE1">分</p>
    <p class="STYLE1">项</p></td>
    <td colspan="3">学生干部工作奖励（每月末视工作情况加1-3分）</td>
    <td>加
      <label>
      <input type="text" id="xsgbgzjl" name="xsgbgzjl" />
分
<input type="button" name="Submit833" value="提交" onclick="cut1('','xsgbgzjl','学生干部工作奖励')";/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">学生履行自身责任（每月末视完成情况加0.5-2分）</td>
    <td>加
      <label>
      <input type="text" id="xslxzszr" name="xslxzszr" />
分
<input type="button" name="Submit834" value="提交" onclick="cut1('','xslxzszr','学生履行自身责任加分')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">每月全勤奖（每月末加3分）</td>
    <td><input name="Submit732" type="button" value="加3分"  onclick="cut('3','全勤奖加三分')"/></td>
  </tr>
  <tr>
    <td colspan="3">双证获取（每证加10分）</td>
    <td><label>
      <input name="Submit8342" type="button" value="加10分" onclick="cut('10','双证获取加十分')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">劳动积分（每次加1-5分）（包括机房服务、计算机维护等）</td>
    <td>加
      <label>
      <input type="text" id="ldjf" name="ldjf" />
分
<input type="button" name="Submit8343" value="提交" onclick="cut1('','ldjf','劳动积分加分')"/>
      </label></td>
  </tr>
    <tr>
    <td colspan="3">参加活动积极（每次加1-2分）（包括院系各种比赛活动等）</td>
    <td>加
      <label>
      <input type="text" id="cjhdjj" name="cjhdjj" />
分
<input type="button" name="Submitcjhdjj" value="提交" onclick="cut1('','cjhdjj','参加活动积极加分')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">各种活动、比赛获奖（每次加3-5分）</td>
    <td>加
      <label>
      <input type="text" id="gzhdbs" name="gzhdbs" />
分
<input type="button" name="Submit8344" value="提交" onclick="cut1('','gzhdbs','各种活动、比赛获奖加分')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">自治区级以下各级荣誉获得（每次加3-5分）</td>
    <td>加
      <label>
      <input type="text"  id="zzqjry"name="zzqjry" />
分
<input type="button" name="Submit8345" value="提交" onclick="cut1('','zzqjry','自治区级以下各级荣誉获得加分')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">宿舍卫生获表扬（每次加1-2分）</td>
    <td>加
      <label>
      <input type="text" id="ssws" name="ssws" />
分
<input type="button" name="Submit8346" value="提交" onclick="cut1('','ssws','宿舍卫生获表扬加分')"/>
      </label></td>
  </tr>
  <tr>
    <td colspan="3">各类作品发表、社会贡献及其它（视情况加分）</td>
    <td>加
      <label>
      <input type="glzpfb" id="glzpfb" name="glzpfb" />
分
<input type="button" name="Submit8347" value="提交" onclick="cut1('','glzpfb','各类作品发表、社会贡献及其它加分')"/>
      </label></td>
  </tr>
</table>
</body>

<SCRIPT LANGUAGE="JavaScript">


</SCRIPT>
</html>


