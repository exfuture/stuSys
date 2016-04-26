
/**
 *select语句查询结果对象,解析查询结果数据
 */
function ResultData(){
	this.optionName = null;
	this.optionValue = null;	
	this.rowCount = null;
}
ResultData.prototype.queryStringResultData = function(queryStrResultData){
	var tmpName = new Array();
	var tmpValue = new Array();
	var tmprow = queryStrResultData.split(";");
	for(var i = 0;i < tmprow.length;i++){
		var tmpcolumn = tmprow[i].split(",");
		tmpName[i]= tmpcolumn[0];
		tmpValue[i] = tmpcolumn[1];
	}
	this.optionName = tmpName;
	this.optionValue = tmpValue;
	this.rowCount = tmprow.length;	
};

