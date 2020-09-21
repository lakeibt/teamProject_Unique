package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.uni.service.EduService;

@Controller
public class EduController {
	private static final Logger logger = LoggerFactory.getLogger(EduController.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;  // 비밀번호 암호화 객체
	
	@Autowired
	EduService eduService;
	
	// HomeController.java는 주석처리
	@RequestMapping("/")
	public String home() {
		logger.info("url ==> home");
		
		return "guest/main";
	}
	
	// 로그인 페이지로 이동d
	@RequestMapping("/guest/login")
	public String gue_login() {
		logger.info("url ==> login");
		
		return "guest/login";
	}
	
	@RequestMapping("/guest/main")
	public String gue_main(HttpServletRequest req, Model model) {
		logger.info("url ==> main");
		
		return "guest/main";
	}
	
	@RequestMapping("/guest/myPage")
	public String gue_myPage() {
		logger.info("url ==> myPage");
		
		return "guest/myPage";
	}
	
	@RequestMapping("/guest/myPage_modify")
	public String gue_myPage_modify(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage_modify");
		
		eduService.studentinfo(req, model);
		return "guest/myPage_modify";
	}
	@RequestMapping("/guest/myPage_modifyPro")
	public String gue_myPage_modifyPro(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage_modifyPro");
		eduService.studentModifyPro(req, model);
		return "guest/myPage_modifyPro";
	}
	@RequestMapping("/guest/course_register")
	public String gue_course_register() {
		logger.info("url ==> course_register");
		
		return "guest/course_register";
	}
	
	@RequestMapping("/guest/course_timeTable")
	public String gue_course_timeTable(HttpServletRequest req, Model model) {
		logger.info("url ==> course_timeTable");
		
		eduService.studentList(req, model);
		return "guest/course_timeTable";
	}
	@RequestMapping("/guest/course")
	public String gue_course(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		eduService.courseList(req, model);
		return "guest/course";
	}
	
	@RequestMapping("/guest/score")
	public String gue_score(HttpServletRequest req, Model model) {
		logger.info("url ==> score");
		eduService.studentinfo(req, model);
		return "guest/score";
	}
	@RequestMapping("/guest/scoreInfo")
	public String gue_scoreInfo(HttpServletRequest req, Model model) {
		logger.info("url ==> scoreInfo");
		eduService.studentGradeList(req, model);
		return "guest/scoreInfo";
	}
	@RequestMapping("/guest/employment")
	public String gue_employment() {
		logger.info("url ==> employment");
		
		return "guest/employment";
	}
	
	@RequestMapping("/guest/message")
	public String gue_message() {
		logger.info("url ==> message");
		
		return "guest/message";
	}
	
	@RequestMapping("/guest/testSignIn")
	public String testSignIn() {
		return "guest/testSignIn";
	}
	
	@RequestMapping("/guest/testSignInPro")
	public String testSignInPro(HttpServletRequest req, Model model) {
		eduService.insertUser(req, model);
		
		return "guest/main";
	}
	
	@RequestMapping("/guest/deniedTest")
	public String denied() {
		return "guest/deniedTest";
	}
}
