package com.survey.example.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.survey.example.domain.Survey;

@Mapper
public interface SurveyMapper {
	public List<Survey> selectSurveyList();
}
