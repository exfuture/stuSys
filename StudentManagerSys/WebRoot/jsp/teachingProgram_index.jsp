<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<HTML>
	<HEAD>
		<TITLE>教学大纲</TITLE>
		<link rel="shortcut icon" href="favicon.ico" >
		<link rel="bookmark" href="favicon.ico" >
		<META content="MSHTML 6.00.2800.1276" name=GENERATOR>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META http-equiv=Content-Style-Type content=text/css>
		<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<script language="javascript" src="script/public.js"></script>
<script type="text/javascript">
		
		
lastclickid = 0;
	
function content_onclick(obj)
{
        if (lastclickid %2 == 0) {
	        eval("d" +lastclickid).className = "TableDetail2";
        } else {
	        eval("d" +lastclickid).className = "TableDetail1";
        }
        obj.className = "selectLine"; 
      	var check_length = document.all.checkBox.length;
       if(check_length==undefined)
       {
          if (!document.all.checkBox.checked)
          { 
          	document.all.checkBox.checked=true;
          }
          else
          {
          	document.all.checkBox.checked=false;
          }
        }
        else
        {
        	currentIndex = obj.id.substring(obj.id.indexOf("d")+1,obj.id.length);
			num = parseInt(currentIndex);
        	if (lastclickid!=currentIndex)
        	{	
        		document.all.checkBox[currentIndex].checked = true;
        		document.all.checkBox[lastclickid].checked = false;
        		obj.className = "selectLine";
        	}
       	 	else
        	{	
				 if (!document.all.checkBox[currentIndex].checked)
          		 { 
          			document.all.checkBox[currentIndex].checked=true;
          		 }
          		else
          		{
          			document.all.checkBox[currentIndex].checked=false;
          		}
       	
       	 	}
        lastclickid=currentIndex;
        }
}
function checkAll() {
	var count = document.all.checkBox.length;
	 if(count==undefined)
       {
          if (!document.all.checkBox.checked)
          { 
          	document.all.checkBox.checked=true;
          }
          else
          {
          	document.all.checkBox.checked=false;
          }
        }
	if (count > 0) {
		if (document.all.selectAll.checked) {
			for (var i = 0; i < count; i++) {
				document.all.checkBox[i].checked = true;
			}
		} else {
			for (var i = 0; i < count; i++) {
				document.all.checkBox[i].checked = false;
			}
		}
	}
}
function submitChoice(select)
{	
	var item=select.value;
	var url="traceTemplate.do?method=approveTemplateIn&classDetailId="+item;
	//alert(url);
	window.location.href=url;
}


function addTeachingProgramInput()
{
	var item=document.all.lessonCode.value;
	
	
	var url="teachingProgram!addTeachingProgramInput.action";
		//alert(url);
		window.location.href=url;
}
function go (index)
{	  if(index=="1")
   	  	{
      		
           		var url="traceTemplate.do?method=selectTemplateType&indexId=${traceTemplateForm.indexId }";
           
        }
}



function goBack()
{

var url="traceTemplate.do?method=approveManageIn";
	//alert(url);
	window.location.href=url;
}



	function mouseout(rowIndex,i){
 var table=document.getElementById("workItemList");
 
 if (rowIndex==0)
    table.rows(i).style.backgroundColor="#F1F1F1";
 else
    table.rows(i).style.backgroundColor="#ffffff";
}
	function cb(obj)
{
    if (event.srcElement.type!="checkbox")
        obj.childNodes[0].childNodes[0].checked=obj.childNodes[0].childNodes[0].checked?false:true;
}
	
		</script>

		<script charset="UTF-8" src="workflowmaker/index.js"
			language="javascript"></script>
		<LINK href="lxoa/css/CN/BLUE/mainWin.css" type=text/css media=screen
			rel=stylesheet>
		<LINK href="lxoa/css/CN/BLUE/query.css" type=text/css media=screen
			rel=stylesheet>
		<LINK href="style/mainWin.css" type=text/css media=screen
			rel=stylesheet>
		<link href="style/eas_css.css" rel="stylesheet" type="text/css">
		<base target="_self">
	</HEAD>
	<s:action id="lesson" name="lesson"/>
	<body marginwidth="0" topmargin="0" leftmargin="0 marginheight="0">

		<form name="actForm" action="teachingProgram!addTeachingProgramInput.action" method="post">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="5">
				<tr>
					<td width="455">
						<img src="images/iecool_arrow_007.gif" width="17" height="17">
						制定教学大纲					</td>
						<s:select label="按课程名称查询"
						       name="lessonCode"
						       list="#lesson.query()"
						       listKey="code"
						       listValue="name"	
						/>	
	
					<td width=106 height="21" align="center" valign="middle"
						nowrap="nowrap" 
						>
						<input type="submit" value="制定教学大纲"/>
					</td>
				</tr>
		  </table>


			<table id="workItemList" width="100%" border="1" cellspacing="0"
				bordercolor="DDDDDD"
				style="table-layout: fixed; word-break: break-all;" class="db">
				<TR ALIGN=CENTER>
					<TD WIDTH=20 ALIGN=CENTER class="tabletitle">
						<INPUT TYPE=CHECKBOX NAME=selectAll ONCLICK=checkAll();>
					</TD>
					<TD width="80" class="tabletitle" ALIGN=CENTER>
						课程代码
					</TD>
					<TD WIDTH="100" class="tabletitle" ALIGN=CENTER>
						课程名称
					</TD>
					<TD WIDTH="140" class="tabletitle" ALIGN=CENTER>
						适用专业
					</TD>
					<TD WIDTH="100" class="tabletitle" ALIGN=CENTER>
						开课院系
					</TD>
					<TD WIDTH="100" class="tabletitle" ALIGN=CENTER>
						版本
					</TD>
				</TR>				
			</TABLE>

		</form>

	</body>
</HTML>

