// JavaScript Document
/**Code3**/
/*
$(document).ready(function(){
	//找到学号这一列的所有单元格
	//因为学号这一列的单元格在所有td中的位置是偶数（0,2,4,6），所以通过even就可以筛选到td中偶数位的单元格
	var numTd = $("tbody  td:even");
	
	//单击这些td时，创建文本框
	numTd.click(function(){
		//创建文本框对象
		var inputobj = $("<input type='text'>");
		//获取当前点击的单元格对象
		var tdobj = $(this);
		
		//去除文本框的border
		inputobj.css("border","0");
		//让文本框和单元格的宽度保持一致
		inputobj.width(tdobj.width());
		//让文本框的字体和单元格的字体大小一样
		inputobj.css("font-size",tdobj.css("font-size"));
		//让文本框和单元格的字体保持一致
		inputobj.css("font-family",tdobj.css("font-family"));
		//让文本框和单元格的背景保持一致
		inputobj.css("background-color",tdobj.css("background-color"));
		
		//appendTo方法把文本框添加到td中
		inputobj.appendTo(tdobj);
	});
});
*/
/**Code3**/

/**Code4**/
/*
$(document).ready(function(){
	//找到学号这一列的所有单元格
	//因为学号这一列的单元格在所有td中的位置是偶数（0,2,4,6），所以通过even就可以筛选到td中偶数位的单元格
	var numTd = $("tbody  td:even");
	
	//单击这些td时，创建文本框
	numTd.click(function(){
		//创建文本框对象
		var inputobj = $("<input type='text'>");
		//获取当前点击的单元格对象
		var tdobj = $(this);
		//获取单元格中的文本
		var text = tdobj.html();
		
		//清空单元格的文本
		tdobj.html("");
		
		//去除文本框的border
		inputobj.css("border","0");
		//让文本框和单元格的宽度保持一致
		inputobj.width(tdobj.width());
		//让文本框的字体和单元格的字体大小一样
		inputobj.css("font-size",tdobj.css("font-size"));
		//让文本框和单元格的字体保持一致
		inputobj.css("font-family",tdobj.css("font-family"));
		//让文本框和单元格的背景保持一致
		inputobj.css("background-color",tdobj.css("background-color"));
		inputobj.css("color","#C75F3E");
		
		//给文本框赋值
		inputobj.val(text);
		
		//appendTo方法把文本框添加到td中
		inputobj.appendTo(tdobj);
	});
});
*/
/**Code4**/

/**Code5**/
/*
$(document).ready(function(){
	//找到学号这一列的所有单元格
	//因为学号这一列的单元格在所有td中的位置是偶数（0,2,4,6），所以通过even就可以筛选到td中偶数位的单元格
	var numTd = $("tbody  td:even");
	
	//单击这些td时，创建文本框
	numTd.click(function(){
		//创建文本框对象
		var inputobj = $("<input type='text'>");
		//获取当前点击的单元格对象
		var tdobj = $(this);
		//获取单元格中的文本
		var text = tdobj.html();
		
		//清空单元格的文本
		tdobj.html("");
		
		inputobj.css("border","0")
				.css("font-size",tdobj.css("font-size"))
				.css("font-family",tdobj.css("font-family"))
				.css("background-color",tdobj.css("background-color"))
				.css("color","#C75F3E")
				.width(tdobj.width())
				.val(text)
				.appendTo(tdobj);
		
		inputobj.click(function(){
			return false;
		});
	});
});
*/
/**Code5**/

/**Code6**/
/*
inputobj.click(function(){
			return false;
		});
*/
/**Code6**/

/**Code7**/
/*
$(document).ready(function(){
	//找到学号这一列的所有单元格
	//因为学号这一列的单元格在所有td中的位置是偶数（0,2,4,6），所以通过even就可以筛选到td中偶数位的单元格
	var numTd = $("tbody  td:even");
	
	//单击这些td时，创建文本框
	numTd.click(function(){
		//创建文本框对象
		var inputobj = $("<input type='text'>");
		//获取当前点击的单元格对象
		var tdobj = $(this);
		//获取单元格中的文本
		var text = tdobj.html();
		
		//如果当前单元格中有文本框，就直接跳出方法
		//注意：一定要在插入文本框前进行判断
		if(tdobj.children("input").length>0){
			return false;
		}
		//清空单元格的文本
		tdobj.html("");
		
		inputobj.css("border","0")
				.css("font-size",tdobj.css("font-size"))
				.css("font-family",tdobj.css("font-family"))
				.css("background-color",tdobj.css("background-color"))
				.css("color","#C75F3E")
				.width(tdobj.width())
				.val(text)
				.appendTo(tdobj);
				
		inputobj.get(0).select();
		//阻止文本框的点击事件
		inputobj.click(function(){
			return false;
		});
		
		
	});
});
*/
/**Code7**/


/**Code10**/
/*
		//处理文本框上回车和esc按键的操作
		//jQuery中某个事件方法的function可以定义一个event参数，jQuery会屏蔽浏览器的差异，传递给我们一个可用的event对象
		inputobj.keyup(function(event){
			//获取当前按键的键值
			//jQuery的event对象上有一个which的属性可以获得键盘按键的键值
			var keycode = event.which;
			//处理回车的情况
			if(keycode==13){
				//获取当前文本框的内容
				var inputtext = $(this).val();
				//将td的内容修改成文本框中的内容
				tdobj.html(inputtext);
			}
			//处理esc的情况
			if(keycode == 27){
				//将td中的内容还原成text
				tdobj.html(text);
			}
		});
*/
/**Code10**/

/**Code11**/
$(document).ready(function(){
	//找到学号这一列的所有单元格
	//因为学号这一列的单元格在所有td中的位置是偶数（0,2,4,6），所以通过even就可以筛选到td中偶数位的单元格
	var numTd = $("tbody  td:even");
	
	//单击这些td时，创建文本框
	numTd.click(function(){
		//创建文本框对象
		var inputobj = $("<input type='text'>");
		//获取当前点击的单元格对象
		var tdobj = $(this);
		//获取单元格中的文本
		var text = tdobj.html();
		
		//如果当前单元格中有文本框，就直接跳出方法
		//注意：一定要在插入文本框前进行判断
		if(tdobj.children("input").length>0){
			return false;
		}
		//清空单元格的文本
		tdobj.html("");
		
		inputobj.css("border","0")
				.css("font-size",tdobj.css("font-size"))
				.css("font-family",tdobj.css("font-family"))
				.css("background-color",tdobj.css("background-color"))
				.css("color","#C75F3E")
				.width(tdobj.width())
				.val(text)
				.appendTo(tdobj);
				
		inputobj.get(0).select();
		//阻止文本框的点击事件
		inputobj.click(function(){
			return false;
		});
		
		//处理文本框上回车和esc按键的操作
		//jQuery中某个事件方法的function可以定义一个event参数，jQuery会屏蔽浏览器的差异，传递给我们一个可用的event对象
		inputobj.keyup(function(event){
			//获取当前按键的键值
			//jQuery的event对象上有一个which的属性可以获得键盘按键的键值
			var keycode = event.which;
			//处理回车的情况
			if(keycode==13){
				//获取当前文本框的内容
				var inputtext = $(this).val();
				//将td的内容修改成文本框中的内容
				tdobj.html(inputtext);
			}
			//处理esc的情况
			if(keycode == 27){
				//将td中的内容还原成text
				tdobj.html(text);
			}
		});
		
	});
});