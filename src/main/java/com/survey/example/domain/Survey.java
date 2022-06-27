package com.survey.example.domain;

public class Survey {
	private int sNum;
	private String sTitle;
	private String sContent;
	private int sViews;
	private String sDatetime;
	
	public int getsNum() {
		return sNum;
	}
	public void setsNum(int sNum) {
		this.sNum = sNum;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}
	public String getsContent() {
		return sContent;
	}
	public void setsContent(String sContent) {
		this.sContent = sContent;
	}
	public int getsViews() {
		return sViews;
	}
	public void setsViews(int sViews) {
		this.sViews = sViews;
	}
	public String getsDatetime() {
		return sDatetime;
	}
	public void setsDatetime(String sDatetime) {
		this.sDatetime = sDatetime;
	}
	
	
}