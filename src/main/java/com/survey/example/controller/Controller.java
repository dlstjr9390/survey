package com.survey.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.survey.example.domain.Answer;
import com.survey.example.domain.Pagination;
import com.survey.example.domain.Question;
import com.survey.example.domain.Response;
import com.survey.example.domain.Survey;
import com.survey.example.domain.User;
import com.survey.example.service.SurveyService;
import com.survey.example.service.UserService;


@org.springframework.stereotype.Controller
public class Controller {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired UserService userservice;
	@Autowired SurveyService surveyservice;
	


	
	@RequestMapping("/")
	public String home() {
		
		return "/index";
	}
	
	@RequestMapping("/beforeSignUp")
	public String beforeSignUp() {
		return "/signup";
	}
	
	@RequestMapping("/signup")
	public String signup(User user) {
		//비밀번호 암호화
		String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
		
		user.setPassword(encodedPassword);
		user.setAccountNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setAuthorites(AuthorityUtils.createAuthorityList("ROLE_USER"));
		
		userservice.createUser(user);
		userservice.createAuthority(user);
		
		return "/login";
	}
	
	@RequestMapping("/login")
	public String BeforeLogin(Model model) {
		return "/login";
	}
	
	@Secured({"ROLE_ADMIN"})
		@RequestMapping(value="/admin")
		public String admin(Model model) {
			return "/admin";
	}
		@Secured({"ROLE_USER"})
		@RequestMapping(value="/user/info")
		public String userInfo(Model model) {
			return "/user_info";
		}
		
		@RequestMapping(value="/denied")
		public String denied(Model model) {
			return "/denied";
		}
	
	@RequestMapping("/Before_registSurvey")
	public String Before_registSurvey() {
		
		return "/registSurvey";
	}
	
	@RequestMapping("/registSurvey")
	public String registSurvey(Model model,@RequestBody Survey survey) {

		Answer answer = new Answer();
		List<Question> questionlist = survey.getQuestionlist();
		List<Answer> aList = new ArrayList<Answer>();
		int aNum = 1;
		
		surveyservice.registSurvey(survey);
		
		for(Question q : questionlist) {
			q.setsIdx(survey.getsIdx());
			surveyservice.registQuestion(q);
			aList = q.getqAnswerlist();
			
			for(Answer a : aList) {
				
				if(aList.size()>1) {
					if(q.getqIdx() == answer.getqIdx()) {
						answer.setaNum(aNum);
						aNum++;
					} else {
						aNum = 1;
						answer.setaNum(aNum);
						aNum ++;
						
					}
					
				} else {
					aNum = 0;
					answer.setaNum(aNum);
					aNum++;
				}
				answer.setaContent(a.getaContent());
				answer.setqIdx(q.getqIdx());
				
				surveyservice.registAnswer(answer);
				
			}
		}
		
		
		return "/index";
	}
	
	@RequestMapping("/ParticipateSurvey")
	public String ParticipateSurvey(Model model,Pagination pagination) {
		int page=1;
		
		int count = surveyservice.boardcount();
		if(pagination.getPage()>0) {
			page = pagination.getPage();
		}
		pagination.setCount(count);
		pagination.setPage(page);
		pagination.init();
		
		List<Survey> list = surveyservice.selectSurveyList(pagination);
		
		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);
		
		return "/surveyList";
	}
	
	@RequestMapping("/surveyDetail")
	public String surveyDetail(Model model,Survey survey) {

		Survey detailboard = surveyservice.detailboard(survey);

		model.addAttribute("survey", detailboard);

		
		return "/surveyDetail";
	}
	
	@RequestMapping("/responseSurvey")
	public String responseSurvey(Model model,@RequestBody Survey survey) {
		
		List<Question> questionlist = survey.getQuestionlist();
		for(Question q : questionlist) {
			List<Answer> aList = q.getqAnswerlist();
			for(Answer a : aList) {
				a.setsIdx(survey.getsIdx());
				a.setqIdx(q.getqIdx());
				surveyservice.registResponse(a);
			}
		}
		surveyservice.updateRes(survey);
		return "/index";
	}
	
	@RequestMapping("/surveyStatistic")
	public String surveyStatistic(Model model, Pagination pagination) {
		int page=1;
		
		int count = surveyservice.statboardcount(pagination);
		if(pagination.getPage()>0) {
			page = pagination.getPage();
		}
		pagination.setCount(count);
		pagination.setPage(page);
		pagination.init();
		
		List<Survey> list = surveyservice.selectStatList(pagination);
		
		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);
		
		return "/MysurveyList";
	}
	
	@RequestMapping("/statisticDetail")
	public String statisticDetail(Model model, Survey survey) {
		
		survey = surveyservice.detailboard(survey);
		List<Question> questionlist = survey.getQuestionlist();
		for(Question q : questionlist) {
			List<Answer> aList = q.getqAnswerlist();
			for(Answer a: aList) {
				a.setCount(surveyservice.responsecount(a));
			}
		}
		List<Response> responselist = surveyservice.statdetail(survey);
		
		
		model.addAttribute("responselist",responselist);
		model.addAttribute("survey",survey);
		
		return "/statistic";
	}
}
