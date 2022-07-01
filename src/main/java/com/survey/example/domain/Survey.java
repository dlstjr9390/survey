package com.survey.example.domain;

import java.util.List;

public class Survey {
	private int sNum;
	private String sTitle;
	private String sDescription;
	private int sViews;
	private String sDatetime;
	
	private List<Question> QuestionList;
	
	public List<Question> getQuestionList() {
		return QuestionList;
	}
	public void setQuestionList(List<Question> questionList) {
		QuestionList = questionList;
	}
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

	public String getsDescription() {
		return sDescription;
	}
	public void setsDescription(String sDescription) {
		this.sDescription = sDescription;
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