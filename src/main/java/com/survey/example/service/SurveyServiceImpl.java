package com.survey.example.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.survey.example.domain.Question;
import com.survey.example.domain.Survey;
import com.survey.example.mapper.SurveyMapper;


@Service("SurveyServiceImpl")
public class SurveyServiceImpl implements SurveyService {
	@Autowired SurveyMapper surveymapper;
	
	@Override
	public List<Survey> selectSurveyList(){
		return surveymapper.selectSurveyList();
	}
	
	@Override
	public void registSurvey(Survey survey) {
		surveymapper.registSurvey(survey);
	}
	
	@Override
	public void registQuestion(List<Question> question) {
		surveymapper.registQuestion(question);
	}
}
