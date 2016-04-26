package edu.sms.page;


import java.util.ArrayList;
import java.util.List;

public class Page {

	//当前请求页
	private int pageNo = 1;
	//每页显示的条数
	private int pageSize = 10;
	//总页数
	private int pageCount;
	//总条数
	private int rowCount;
	//首页
	private int pageOne=1;
	//尾页
	private int pageEnd;
	//上页
	private int pageLast;
	//下页
	private int pageNext;
	//从哪条开始显示
	private int beginShow;
	//到哪条截止
	private int endShow;

	
	//计算页数
	public int pageCount(){
		
		if( rowCount % pageSize == 0 ){
			pageCount = rowCount / pageSize ;
		}else{
			pageCount = rowCount / pageSize +1 ;
		}
		return pageCount;
	}
	
	//显示哪些条
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
	 * Page的构造函数，需要两个参数当前页数(pageNo)，和每页显示的条数(pageSize)
	 * 和共有多少条数rowCount
	 * 通过Page的构造函数能够构造出所需要的Page的整体概况。
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
		System.out.println("当前页是********************"+pageNo);
		System.out.println("每页显示的最大条数是*********"+pageSize);
		System.out.println("总条数是********************"+rowCount);
		System.out.println("总页数是********************"+pageCount);
		System.out.println("首页是**********************"+pageOne);
		System.out.println("尾页是**********************"+pageEnd);
		System.out.println("上页是**********************"+pageLast);
		System.out.println("下页是**********************"+pageNext);
		System.out.println("从哪条开始显示**************"+beginShow);
		System.out.println("到哪条截止******************"+endShow);
			
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
