package com.survey.example.domain;

import java.util.List;

public class Survey {
	private int sNum;
	private int sIdx;
	private String sTitle;
	private String sDesc;
	private String sDatetime;
	private String uId;
	private Question question;
	private Answer answer;
	private int rescount;
	
	List<Question> questionlist;
	List<Response> statlist; 
	
	public void SetSurvey(Survey survey) {
		this.sTitle = survey.getsDatetime();
		this.sDesc = survey.getsDesc();
		
	}
	
	
	public int getsIdx() {
		return sIdx;
	}
	public void setsIdx(int sIdx) {
		this.sIdx = sIdx;
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

	public String getsDesc() {
		return sDesc;
	}
	public void setsDesc(String sDesc) {
		this.sDesc = sDesc;
	}
	public String getsDatetime() {
		return sDatetime;
	}
	public void setsDatetime(String sDatetime) {
		this.sDatetime = sDatetime;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public Answer getAnswer() {
		return answer;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}


	public List<Question> getQuestionlist() {
		return questionlist;
	}


	public void setQuestionlist(List<Question> questionlist) {
		this.questionlist = questionlist;
	}


	public List<Response> getStatlist() {
		return statlist;
	}


	public void setStatlist(List<Response> statlist) {
		this.statlist = statlist;
	}


	public int getRescount() {
		return rescount;
	}


	public void setRescount(int rescount) {
		this.rescount = rescount;
	}
	
	
	
	
}