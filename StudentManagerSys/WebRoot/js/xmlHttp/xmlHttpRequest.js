
/**
 *发送请求数据并从服务器取查询结果数据
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
			 alert("你所请求的页面发生异常，可能会影响你浏览该页的信息！");
	    }
     }
 }

