package com.survey.example.service;

import java.util.List;

import com.survey.example.domain.Answer;
import com.survey.example.domain.Pagination;
import com.survey.example.domain.Question;
import com.survey.example.domain.Survey;

public interface SurveyService {
	public List<Survey> selectSurveyList(Pagination pagination);
	public void registSurvey(Survey survey);
	public void registQuestion(Question question);
	public void registAnswer(Answer answer);
	public int boardcount();
}
