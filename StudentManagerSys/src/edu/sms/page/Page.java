package edu.sms.page;


import java.util.ArrayList;
import java.util.List;

public class Page {

	//��ǰ����ҳ
	private int pageNo = 1;
	//ÿҳ��ʾ������
	private int pageSize = 10;
	//��ҳ��
	private int pageCount;
	//������
	private int rowCount;
	//��ҳ
	private int pageOne=1;
	//βҳ
	private int pageEnd;
	//��ҳ
	private int pageLast;
	//��ҳ
	private int pageNext;
	//��������ʼ��ʾ
	private int beginShow;
	//��������ֹ
	private int endShow;

	
	//����ҳ��
	public int pageCount(){
		
		if( rowCount % pageSize == 0 ){
			pageCount = rowCount / pageSize ;
		}else{
			pageCount = rowCount / pageSize +1 ;
		}
		return pageCount;
	}
	
	//��ʾ��Щ��
	public List showList(List list){
		
		List l=new ArrayList();
		for (int i = getBeginShow()-1; i < getEndShow(); i++) {
			if (list!=null&&list.size()>0) {
				l.add(list.get(i));
			}
		}
		return l;
	}
	
	public Page(){
		
	}
	
	/*
	 * 
	 * Page�Ĺ��캯������Ҫ����������ǰҳ��(pageNo)����ÿҳ��ʾ������(pageSize)
	 * �͹��ж�������rowCount
	 * ͨ��Page�Ĺ��캯���ܹ����������Ҫ��Page������ſ���
	 */
	
	public Page(int pageNo,int pageSize,int rowCount){				
		
		this.pageNo=pageNo;
		this.pageSize=pageSize;
		this.rowCount=rowCount;
		this.pageCount=pageCount();
		this.pageOne=1;
		this.pageEnd=pageCount();
		if (pageNo==1) {
			this.pageLast=1;
		}else{
			this.pageLast=pageNo-1;
		}
		if(pageNo==pageEnd) {
			this.pageNext=pageEnd;
		}else{
			this.pageNext=pageNo+1;
		}	
		this.beginShow=(pageNo-1)*pageSize+1;
		if(pageNo==this.pageEnd) {
			endShow=rowCount;
		}else{
			endShow=beginShow+pageSize-1;
		}
		System.out.println("��ǰҳ��********************"+pageNo);
		System.out.println("ÿҳ��ʾ�����������*********"+pageSize);
		System.out.println("��������********************"+rowCount);
		System.out.println("��ҳ����********************"+pageCount);
		System.out.println("��ҳ��**********************"+pageOne);
		System.out.println("βҳ��**********************"+pageEnd);
		System.out.println("��ҳ��**********************"+pageLast);
		System.out.println("��ҳ��**********************"+pageNext);
		System.out.println("��������ʼ��ʾ**************"+beginShow);
		System.out.println("��������ֹ******************"+endShow);
			
		}		
	    public static void main(String[] args) {		 
		  Page p=new Page(26,20,513);
		}


		public int getPageNo() {
			return pageNo;
		}


		public int getPageSize() {
			return pageSize;
		}


		public int getPageCount() {
			return pageCount;
		}


		public int getRowCount() {
			return rowCount;
		}


		public int getPageOne() {
			return pageOne;
		}


		public int getPageEnd() {
			return pageEnd;
		}


		public int getPageLast() {
			return pageLast;
		}


		public int getPageNext() {
			return pageNext;
		}


		public int getBeginShow() {
			return beginShow;
		}


		public int getEndShow() {
			return endShow;
		}
	
}
