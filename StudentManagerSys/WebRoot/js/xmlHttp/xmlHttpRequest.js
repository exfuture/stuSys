
/**
 *�����������ݲ��ӷ�����ȡ��ѯ�������
 */
 
var xmlHttp = XmlHttp.create();
var r0e0s0D0a0t0a0="";

function getResponseData(urlString){    
	var urlStr=urlString;	
	xmlHttp.open("POST", urlStr, false);
	xmlHttp.onreadystatechange =handleHttpResponse;
	xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xmlHttp.send("");		
	return 	r0e0s0D0a0t0a0;
}

function handleHttpResponse(){
    if(xmlHttp.readyState == 4){
		if(xmlHttp.status == 200){		    			
	       r0e0s0D0a0t0a0=xmlHttp.responseText;		   					
	    }
	    else{
			 alert("���������ҳ�淢���쳣�����ܻ�Ӱ���������ҳ����Ϣ��");
	    }
     }
 }

