package com.survey.example.service;

import java.util.List;

import com.survey.example.domain.Question;
import com.survey.example.domain.Survey;

public interface SurveyService {
	public List<Survey> selectSurveyList();
	public void registSurvey(Survey survey);
	public void registQuestion(List<Question> question);
}
