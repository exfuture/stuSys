// JavaScript Document
/**Code3**/
/*
$(document).ready(function(){
	//�ҵ�ѧ����һ�е����е�Ԫ��
	//��Ϊѧ����һ�еĵ�Ԫ��������td�е�λ����ż����0,2,4,6��������ͨ��even�Ϳ���ɸѡ��td��ż��λ�ĵ�Ԫ��
	var numTd = $("tbody  td:even");
	
	//������Щtdʱ�������ı���
	numTd.click(function(){
		//�����ı������
		var inputobj = $("<input type='text'>");
		//��ȡ��ǰ����ĵ�Ԫ�����
		var tdobj = $(this);
		
		//ȥ���ı����border
		inputobj.css("border","0");
		//���ı���͵�Ԫ��Ŀ�ȱ���һ��
		inputobj.width(tdobj.width());
		//���ı��������͵�Ԫ��������Сһ��
		inputobj.css("font-size",tdobj.css("font-size"));
		//���ı���͵�Ԫ������屣��һ��
		inputobj.css("font-family",tdobj.css("font-family"));
		//���ı���͵�Ԫ��ı�������һ��
		inputobj.css("background-color",tdobj.css("background-color"));
		
		//appendTo�������ı�����ӵ�td��
		inputobj.appendTo(tdobj);
	});
});
*/
/**Code3**/

/**Code4**/
/*
$(document).ready(function(){
	//�ҵ�ѧ����һ�е����е�Ԫ��
	//��Ϊѧ����һ�еĵ�Ԫ��������td�е�λ����ż����0,2,4,6��������ͨ��even�Ϳ���ɸѡ��td��ż��λ�ĵ�Ԫ��
	var numTd = $("tbody  td:even");
	
	//������Щtdʱ�������ı���
	numTd.click(function(){
		//�����ı������
		var inputobj = $("<input type='text'>");
		//��ȡ��ǰ����ĵ�Ԫ�����
		var tdobj = $(this);
		//��ȡ��Ԫ���е��ı�
		var text = tdobj.html();
		
		//��յ�Ԫ����ı�
		tdobj.html("");
		
		//ȥ���ı����border
		inputobj.css("border","0");
		//���ı���͵�Ԫ��Ŀ�ȱ���һ��
		inputobj.width(tdobj.width());
		//���ı��������͵�Ԫ��������Сһ��
		inputobj.css("font-size",tdobj.css("font-size"));
		//���ı���͵�Ԫ������屣��һ��
		inputobj.css("font-family",tdobj.css("font-family"));
		//���ı���͵�Ԫ��ı�������һ��
		inputobj.css("background-color",tdobj.css("background-color"));
		inputobj.css("color","#C75F3E");
		
		//���ı���ֵ
		inputobj.val(text);
		
		//appendTo�������ı�����ӵ�td��
		inputobj.appendTo(tdobj);
	});
});
*/
/**Code4**/

/**Code5**/
/*
$(document).ready(function(){
	//�ҵ�ѧ����һ�е����е�Ԫ��
	//��Ϊѧ����һ�еĵ�Ԫ��������td�е�λ����ż����0,2,4,6��������ͨ��even�Ϳ���ɸѡ��td��ż��λ�ĵ�Ԫ��
	var numTd = $("tbody  td:even");
	
	//������Щtdʱ�������ı���
	numTd.click(function(){
		//�����ı������
		var inputobj = $("<input type='text'>");
		//��ȡ��ǰ����ĵ�Ԫ�����
		var tdobj = $(this);
		//��ȡ��Ԫ���е��ı�
		var text = tdobj.html();
		
		//��յ�Ԫ����ı�
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
	//�ҵ�ѧ����һ�е����е�Ԫ��
	//��Ϊѧ����һ�еĵ�Ԫ��������td�е�λ����ż����0,2,4,6��������ͨ��even�Ϳ���ɸѡ��td��ż��λ�ĵ�Ԫ��
	var numTd = $("tbody  td:even");
	
	//������Щtdʱ�������ı���
	numTd.click(function(){
		//�����ı������
		var inputobj = $("<input type='text'>");
		//��ȡ��ǰ����ĵ�Ԫ�����
		var tdobj = $(this);
		//��ȡ��Ԫ���е��ı�
		var text = tdobj.html();
		
		//�����ǰ��Ԫ�������ı��򣬾�ֱ����������
		//ע�⣺һ��Ҫ�ڲ����ı���ǰ�����ж�
		if(tdobj.children("input").length>0){
			return false;
		}
		//��յ�Ԫ����ı�
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
		//��ֹ�ı���ĵ���¼�
		inputobj.click(function(){
			return false;
		});
		
		
	});
});
*/
/**Code7**/


/**Code10**/
/*
		//�����ı����ϻس���esc�����Ĳ���
		//jQuery��ĳ���¼�������function���Զ���һ��event������jQuery������������Ĳ��죬���ݸ�����һ�����õ�event����
		inputobj.keyup(function(event){
			//��ȡ��ǰ�����ļ�ֵ
			//jQuery��event��������һ��which�����Կ��Ի�ü��̰����ļ�ֵ
			var keycode = event.which;
			//����س������
			if(keycode==13){
				//��ȡ��ǰ�ı��������
				var inputtext = $(this).val();
				//��td�������޸ĳ��ı����е�����
				tdobj.html(inputtext);
			}
			//����esc�����
			if(keycode == 27){
				//��td�е����ݻ�ԭ��text
				tdobj.html(text);
			}
		});
*/
/**Code10**/

/**Code11**/
$(document).ready(function(){
	//�ҵ�ѧ����һ�е����е�Ԫ��
	//��Ϊѧ����һ�еĵ�Ԫ��������td�е�λ����ż����0,2,4,6��������ͨ��even�Ϳ���ɸѡ��td��ż��λ�ĵ�Ԫ��
	var numTd = $("tbody  td:even");
	
	//������Щtdʱ�������ı���
	numTd.click(function(){
		//�����ı������
		var inputobj = $("<input type='text'>");
		//��ȡ��ǰ����ĵ�Ԫ�����
		var tdobj = $(this);
		//��ȡ��Ԫ���е��ı�
		var text = tdobj.html();
		
		//�����ǰ��Ԫ�������ı��򣬾�ֱ����������
		//ע�⣺һ��Ҫ�ڲ����ı���ǰ�����ж�
		if(tdobj.children("input").length>0){
			return false;
		}
		//��յ�Ԫ����ı�
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
		//��ֹ�ı���ĵ���¼�
		inputobj.click(function(){
			return false;
		});
		
		//�����ı����ϻس���esc�����Ĳ���
		//jQuery��ĳ���¼�������function���Զ���һ��event������jQuery������������Ĳ��죬���ݸ�����һ�����õ�event����
		inputobj.keyup(function(event){
			//��ȡ��ǰ�����ļ�ֵ
			//jQuery��event��������һ��which�����Կ��Ի�ü��̰����ļ�ֵ
			var keycode = event.which;
			//����س������
			if(keycode==13){
				//��ȡ��ǰ�ı��������
				var inputtext = $(this).val();
				//��td�������޸ĳ��ı����е�����
				tdobj.html(inputtext);
			}
			//����esc�����
			if(keycode == 27){
				//��td�е����ݻ�ԭ��text
				tdobj.html(text);
			}
		});
		
	});
});