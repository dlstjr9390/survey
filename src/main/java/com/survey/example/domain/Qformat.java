package com.survey.example.domain;

import java.util.List;

public class Qformat {

	private Question question;
	private List<Answer> qAnswerlist;
	
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public List<Answer> getqAnswerlist() {
		return qAnswerlist;
	}
	public void setqAnswerlist(List<Answer> qAnswerlist) {
		this.qAnswerlist = qAnswerlist;
	}
	
	
}
