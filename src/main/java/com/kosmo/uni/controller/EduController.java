package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		
		return "guest/login";
	}
	
	// 로그인 페이지로 이동
	@RequestMapping("/guest/login")
	public String gue_login() {
		logger.info("url ==> login");
		
		return "guest/login";
	}
	
	@RequestMapping("/guest/logout")
	public String gue_logout(HttpSession session, HttpServletRequest req) {
		session.invalidate();
		
		return "guest/login";
	}
	
	@RequestMapping("/guest/main")
	public String gue_main(HttpServletRequest req, Model model) {
		logger.info("url ==> main");
		return "guest/login";
	}
	
//	@RequestMapping("/guest/course")
//	public String gue_course(HttpServletRequest req, Model model) {
//		logger.info("url ==> course");
//		
//		eduService.studentList(req, model);
//		return "guest/course";
//	}
	
	@RequestMapping("/guest/sample")
	public String gue_sample() {
		logger.info("url ==> sample");
		
		return "guest/sample";
	}
	
	@RequestMapping("/guest/sample2")
	public String gue_sample2() {
		logger.info("url ==> sample2");
		
		return "guest/sample2";
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
	
	@RequestMapping("/guest/denied")
	public String denied() {
		logger.info("url ==> denied");
		
		return "guest/denied";
	}
	
	@RequestMapping("/guest/ttttt")
	public String ttttt(HttpServletRequest req, Model model) {
		
		return "guest/ttttt";
	}
}
