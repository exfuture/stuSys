<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="superTables.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="jquery-1.4.4.min.js" ></script>

<script type="text/javascript" src="jFixed.min.js"></script>

<script language="javascript">
//var tabProduct = document.getElementById("tabProduct");
//  
// ���ñ���ɱ༭
// ��һ�����ö�������磺EditTables(tb1,tb2,tb2,......)
//EditTables(tabProduct);
    $(function() {
       
        var i = 1;
        var da = { pkey: [{ key: "num", value: i}], value: [[{ key: 1, value: '' }, { key: 2, value: i }, { key: 1, value: 'A' }, { key: 1, value: '3' }, { key: 1, value: '4' }, { key: 1, value: '5'}]] }
;
        var op = { data: da, headerRows: 2};
        $.jtool.loaddata("tabProduct", op);
        //$("#tabProduct").toSuperTable({ fixedCols:1,width: "500px",height: "200px", headerRows: 2});
        $("#tabProduct").jFixedtable({ colums: [{ name: "num"}], fixedCols: 2, width: "550", height: "300", headerRows: 2, pkey: ["num"], edit: true });
        //$("#tabProduct").jGrid({ ftb: { headerRows: 3,  width: "500"} });
        //$("#tabProduct").jGrid();
        //$("#tabProduct").TableLock({lockRow:2,lockColumn:2,width:600,height:250});
        //$.jtool.addRow('tabProduct', op);
        i += 1
        $("#add").click(function() {
            var da = { pkey: [{ key: "num", value: i}], value: [[{ key: 1, value: '' }, { key: 2, value: i }, { key: 1, value: 'A' }, { key: 1, value: '3' }, { key: 1, value: '4' }, { key: 1, value: '5'}]] }
;
            var op = { data: da };
            i++;
            $.jtool.addRow('tabProduct', op);
        });
    });

    function gettr() {
        var trs = $.jtool.getchangetr();
        for (var i = 0; i < trs.length; i++) {
            var tr = trs[i]; 
             
			var pk = eval(tr.pkey);
            for (var j = 0; j < pk.length; j++) {
                alert("�޸���������"+pk[j].key+"="+pk[j].value);
            }
            var values = tr.values;
        }
    }

    function del(key) {
        //alert(key.length);
        for (var i = 0; i < key.length; i++) {
            var pkey = key[i];
            for (var j = 0; j < pkey.length; j++) {
                alert(pkey[j].key + ":" + pkey[j].value);
            }
        }
        return true;       
    }
</script>
<title>�༭��������</title>
<style type="text/css">
<!--
body,div,p,ul,li,font,span,td,th{
font-size:10pt;
line-height:155%;

}

table{
border-top-width: 1px;
border-right-width: 1px;
border-bottom-width: 0px;
border-left-width: 1px;
border-top-style: solid;
border-right-style: solid;
border-bottom-style: none;
border-left-style: solid;
border-top-color: #CCCCCC;
border-right-color: #CCCCCC;
border-bottom-color: #CCCCCC;
border-left-color: #CCCCCC;
border:1px solid #CCCCCC;
}
td{
border-bottom-width: 1px;
border-bottom-style: solid;
border-bottom-color: #CCCCCC;
border:1px solid #CCCCCC;
}

.EditCell_TextBox {
width: 90%;
border:1px solid #0099CC;
}
.EditCell_DropDownList {
width: 90%;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
<h3>�̶����пɱ༭�ı���</h3>
<div>
<h3>���ܣ�</h3>
<ul>
<li>�̶�����</li>
<li>�����ڱ���ֱ�ӱ༭</li>
<li>ʹ��ajax�����ݲ���</li>
<li>ʹ��tab���ڿɱ༭���л�</li>
</ul>
</div>
����
<table  width="608"  id="tabProduct">
    <tr>
      <td width="20" style="text-align:center;"  align="center"  rowspan="2" bgcolor="#EFEFEF" Name="Num"><input type="checkbox" name="checkbox" value="checkbox" /></td>
      <td width="60" style="text-align:center;"  bgcolor="#EFEFEF" Name="Num" rowspan="2"  style=" text-align:center">���</td>
      <td width="478" style="text-align:center;"  bgcolor="#EFEFEF" colspan="4" >�ϼ�</td>   
    </tr>
    <tr>
      <td width="152" bgcolor="#EFEFEF" style="text-align:center;"  Name="ProductName" EditType="DropDownList" DataItems="{text:'A',value:'a'},{text:'B',value:'b'},{text:'C',value:'c'},{text:'D',value:'d'}">��Ʒ����</td>
      <td width="103" bgcolor="#EFEFEF" style="text-align:center;" Name="Amount" EditType="TextBox">����</td>
      <td width="103" bgcolor="#EFEFEF" style="text-align:center;"  Name="Price" EditType="TextBox">����</td>
      <td width="120" bgcolor="#EFEFEF" style="text-align:center;"  Name="SumMoney" Expression="Amount*Price" Format="#,###.00">�ϼ�</td>
    </tr>
    
     
</table>

<p><br />
    <input id="add" type="button" name="add" value="����"/>
    <input type="button" name="Submit2" value="ɾ��" onclick="$.jtool.deleteRow('tabProduct',del)" />
    <input type="button" name="Submit2" value="�޸�����Ϣ" onclick="gettr();" />
    <input type="button" name="Submit22" value="����" onclick="window.location.reload()" />
    <input type="submit" name="Submit3" value="�ύ" onclick="return false;" />
</p>

</form>




</body>
</html>
