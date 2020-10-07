package com.kosmo.uni.controller;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.uni.persistence.ProfessorDAO;
import com.kosmo.uni.service.ProfessorService;

@Controller
public class ProfessorController {
	private static final Logger logger = LoggerFactory.getLogger(ProfessorController.class);
	
	@Autowired
	ProfessorService proService;
	
	@Autowired
	ProfessorDAO proDAO;
	
	// 메인
	@RequestMapping("/professor/main")
	public String pro_main() {
		logger.info("url ==> main");
		
		return "professor/main";
	}
	
	// 내정보
	@RequestMapping("/professor/myPage")
	public String pro_myPage(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage");
		proService.getProfessorProfile(req, model);
		return "professor/myPage";
	}
	
	// 강의관리
	@RequestMapping("/professor/course")
	public String pro_course(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		proService.courseData(req, model);
		
		return "professor/course";
	}
	
	// 강의등록
	@RequestMapping("/professor/course_register")
	public String pro_course_register() {
		logger.info("url ==> course_register");
		
		return "professor/course_register";
	}
	
	// 강의수정
	@RequestMapping("/professor/course_modify")
	public String pro_course_modify() {
		logger.info("url ==> course_modify");
		
		return "professor/course_modify";
	}
	
	// 강의 삭제
	@RequestMapping("/professor/course_delete")
	public String pro_course_delete() {
		logger.info("url ==> course_delete");
		
		return "professor/course_delete";
	}
	
	// 성적관리
	@RequestMapping("/professor/score")
	public String pro_score() {
		logger.info("url ==> score");
		
		return "professor/score";
	}
	
	// 성적등록
	@RequestMapping("/professor/score_register")
	public String pro_score_register() {
		logger.info("url ==> score_register");
		
		return "professor/score_register";
	}
	
	// 성적수정
	@RequestMapping("/professor/score_modify")
	public String pro_score_modify() {
		logger.info("url ==> score_modify");
		
		return "professor/score_modify";
	}
	
	// 쪽지 간단히 가져오기
	@RequestMapping("/professor/messageSimple")
	public String pro_messageSimple(HttpServletRequest req, Model model) {
		logger.info("url ==> messageSimple");
		
		proService.messageSimple(req, model);
		
		return "professor/messageList_simple";
	}
	
	// 쪽지 전체 가져오기
	@RequestMapping("/professor/messageList_form")
	public String pro_messageList_form(HttpServletRequest req, Model model) {
		logger.info("url ==> messageList_form");
		proService.messageList(req, model);
		
		return "professor/messageList_form";
	}

	// 쪽지 상세보기
	@RequestMapping("/professor/message_form")
	public String pro_message_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_form");
		
		proService.message(req, model);
		
		return "professor/message_form";
	}
	
	// 쪽지 보내기 폼
	@RequestMapping("/professor/message_send_form")
	public String pro_message_send_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_send_form");
		
		return "professor/message_send_form";
	}	

	// 쪽지 보내기
	@RequestMapping("/professor/messageSend")
	public int pro_messageSend(HttpServletRequest req, Model model) {
		logger.info("url ==> messageSend");
		int insertCnt = proService.messageSend(req, model);
		
		return insertCnt;
	}	
		
	@RequestMapping("/professor/myPageModify")
	public String myPageModify(HttpServletRequest req, Model model) {
		logger.info("url ==> myPageModify");
		
		proService.myPageModify(req, model);
		
		return "professor/myPage";
	}
	
	// 연습
	@RequestMapping("/professor/test")
	public String test(HttpServletRequest req, Model model) {
		logger.info("url ==> test");
		
		proService.messageSimple(req, model);
		
		return "professor/test";
	}	
}
