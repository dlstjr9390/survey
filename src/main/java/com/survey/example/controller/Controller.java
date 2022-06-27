package com.survey.example.controller;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class Controller {
	@RequestMapping("/")
	public String home() {
		return "/index";
	}
	
	@RequestMapping("/Before_registSurvey")
	public String Before_registSurvey() {
		
		return "/registSurvey";
	}
	
	@RequestMapping("/main")
	public String joinSurvey() {
		
		
		return "/main";
	}
}
