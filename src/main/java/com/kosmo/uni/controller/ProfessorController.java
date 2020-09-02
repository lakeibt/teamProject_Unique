package com.kosmo.uni.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfessorController {
	private static final Logger logger = LoggerFactory.getLogger(ProfessorController.class);
	
	@RequestMapping("/professor/main")
	public String pro_main() {
		logger.info("url ==> main");
		
		return "professor/main";
	}
	
	@RequestMapping("/professor/myPage")
	public String pro_myPage() {
		logger.info("url ==> myPage");
		
		return "professor/myPage";
	}
	
	@RequestMapping("/professor/course")
	public String pro_course() {
		logger.info("url ==> course");
		
		return "professor/course";
	}
	
	@RequestMapping("/professor/course_register")
	public String pro_course_register() {
		logger.info("url ==> course_register");
		
		return "professor/course_register";
	}
	
	@RequestMapping("/professor/course_modify")
	public String pro_course_modify() {
		logger.info("url ==> course_modify");
		
		return "professor/course_modify";
	}
	
	@RequestMapping("/professor/course_delete")
	public String pro_course_delete() {
		logger.info("url ==> course_delete");
		
		return "professor/course_delete";
	}
	
	@RequestMapping("/professor/score")
	public String pro_score() {
		logger.info("url ==> score");
		
		return "professor/score";
	}
	
	@RequestMapping("/professor/score_register")
	public String pro_score_register() {
		logger.info("url ==> score_register");
		
		return "professor/score_register";
	}
	
	@RequestMapping("/professor/score_modify")
	public String pro_score_modify() {
		logger.info("url ==> score_modify");
		
		return "professor/score_modify";
	}
	
	@RequestMapping("/professor/note")
	public String pro_note() {
		logger.info("url ==> note");
		
		return "professor/note";
	}
}
