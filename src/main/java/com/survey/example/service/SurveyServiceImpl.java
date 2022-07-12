package com.survey.example.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.survey.example.domain.Answer;
import com.survey.example.domain.Pagination;
import com.survey.example.domain.Question;
import com.survey.example.domain.Survey;
import com.survey.example.mapper.SurveyMapper;


@Service("SurveyServiceImpl")
public class SurveyServiceImpl implements SurveyService {
	@Autowired SurveyMapper surveymapper;
	
	@Override
	public List<Survey> selectSurveyList(Pagination pagination){
		return surveymapper.selectSurveyList(pagination);
	}
	
	@Override
	public void registSurvey(Survey survey) {
		surveymapper.registSurvey(survey);
	}
	
	@Override
	public void registQuestion(Question question) {
		surveymapper.registQuestion(question);
	}
	
	@Override
	public void registAnswer(Answer answer) {
		surveymapper.registAnswer(answer);
	}
	
	@Override
	public int boardcount() {
		return surveymapper.boardcount();
	}
	
	@Override
	public Survey detailboard(Survey survey) {
		return surveymapper.detailboard(survey);
	}
	
	@Override
	public List<Question> detailquestion(Survey survey){
		return surveymapper.detailquestion(survey);
	}
	
	@Override
	public List<Answer> detailanswer(Question question){
		return surveymapper.detailanswer(question);
	}
}
