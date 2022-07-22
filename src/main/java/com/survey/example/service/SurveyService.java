package com.survey.example.service;

import java.util.List;

import com.survey.example.domain.Answer;
import com.survey.example.domain.Pagination;
import com.survey.example.domain.Question;
import com.survey.example.domain.Response;
import com.survey.example.domain.Survey;

public interface SurveyService {
	public List<Survey> selectSurveyList(Pagination pagination);
	public List<Survey> selectStatList(Pagination pagination);
	public void registSurvey(Survey survey);
	public void registQuestion(Question question);
	public void registAnswer(Answer answer);
	public int boardcount();
	public int statboardcount(Pagination pagination);
	public Survey detailboard(Survey survey);
	public List<Question> detailquestion(Survey survey);
	public List<Answer> detailanswer(Question question);
	public void registResponse(Answer answer);
	public List<Response> statdetail(Survey survey);
}
