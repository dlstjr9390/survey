package com.survey.example.mapper;

import java.util.List;

import com.survey.example.domain.Survey;

public interface SurveyMapper {
	public List<Survey> selectSurveyList();
}
