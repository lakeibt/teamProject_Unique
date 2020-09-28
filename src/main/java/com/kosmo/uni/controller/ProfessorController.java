package com.kosmo.uni.controller;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.uni.service.ProfessorService;

@Controller
public class ProfessorController {
	private static final Logger logger = LoggerFactory.getLogger(ProfessorController.class);
	
	@Autowired
	ProfessorService proService;
	
	@RequestMapping("/professor/main")
	public String pro_main() {
		logger.info("url ==> main");
		
		return "professor/main";
	}
	
	@RequestMapping("/professor/myPage")
	public String pro_myPage(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage");
		proService.getProfessorProfile(req, model);
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
	
	@RequestMapping("/professor/messageList")
	public String pro_messageList(HttpServletRequest req, Model model) {
		logger.info("url ==> messageList");
		
		proService.messageList(req, model);
		
		return "professor/messageList";
	}
	
	@RequestMapping("/professor/messageList_form")
	public String pro_messageList_form(HttpServletRequest req, Model model) {
		logger.info("url ==> messageList_form");
		proService.messageList(req, model);
		
		return "professor/messageList_form";
	}

	@RequestMapping("/professor/message")
	public String pro_message(HttpServletRequest req, Model model) {
		logger.info("url ==> message");
		
		proService.message(req, model);
		
		return "professor/message";
	}
	
	@RequestMapping("/professor/message_form")
	public String pro_message_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_form");
		
		return "professor/message_form";
	}	
	
	
	@RequestMapping("/professor/sample")
	public String sample(HttpServletRequest req, Model model) {
		logger.info("url ==> sample");
		
		return "professor/sample";
	}
	
	
	
	
	
	
	@RequestMapping("/professor/test")
	public String test(HttpServletRequest req, Model model) {
		logger.info("url ==> test");
		
		return "professor/test";
	}	
}
