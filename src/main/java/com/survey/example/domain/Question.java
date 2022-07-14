package com.survey.example.domain;

import java.util.List;

public class Question {
	private int qIdx;
	private String qNum;
	private String qContent;
	private String aType;
	private int sIdx;

	private List<Answer> qAnswerlist;
	
	public int getqIdx() {
		return qIdx;
	}
	public void setqIdx(int qIdx) {
		this.qIdx = qIdx;
	}
	public String getqNum() {
		return qNum;
	}
	public void setqNum(String qNum) {
		this.qNum = qNum;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getaType() {
		return aType;
	}
	public void setaType(String aType) {
		this.aType = aType;
	}
	public int getsIdx() {
		return sIdx;
	}
	public void setsIdx(int sIdx) {
		this.sIdx = sIdx;
	}
	public List<Answer> getqAnswerlist() {
		return qAnswerlist;
	}
	public void setqAnswerlist(List<Answer> qAnswerlist) {
		this.qAnswerlist = qAnswerlist;
	}

}
