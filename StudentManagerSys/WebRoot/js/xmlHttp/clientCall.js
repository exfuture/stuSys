

/**
 *客户程序员调用方法
 */
function sendHttpRequest(urlString){   
	var responseData = getResponseData(urlString);	
	return responseData;
}

function addOptions(selectObject,returnDataString){
	with(selectObject){
		var resultData=new ResultData();
		resultData.queryStringResultData(returnDataString)
		var optionCount = resultData.rowCount;		
		if(optionCount > 0){
		    oldSelectLength=selectObject.length;		    
			selectObject.length =optionCount+oldSelectLength;			
			for(var i = 0;i < optionCount;i++){
				selectObject[oldSelectLength+i].value = resultData.optionValue[i];
				selectObject[oldSelectLength+i].text  = resultData.optionName[i];
			}
		}		
	}
}

