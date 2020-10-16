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
	
	@RequestMapping("/")
	public String home() {	
		logger.info("url ==> /");
		
		return "guest/login";
	}
	
	// 로그인 페이지로 이동
	@RequestMapping("/guest/login")
	public String gue_login() {
		logger.info("url ==> login");
		
		return "guest/login";
	}
	
	// 로그인 페이지로 이동
	@RequestMapping("/guest/login2")
	public String gue_login2() {
		logger.info("url ==> login2");
		
		return "guest/login2";
	}
	
	// 로그인 페이지로 이동
	@RequestMapping("/guest/toMain")
	public String gue_toMain() {
		logger.info("url ==> toMain");
		
		return "guest/toMain";
	}
	
	@RequestMapping("/guest/logout")
	public String gue_logout(HttpSession session, HttpServletRequest req) {
		logger.info("url ==> logout");
		session.invalidate();
		
		return "redirect:login";
	}
	
	@RequestMapping("/guest/main")
	public String gue_main(HttpServletRequest req, Model model) {
		logger.info("url ==> main");
		
		return "redirect:login";
	}
	
	// 프로젝트 마무리 시 삭제 시작
	@RequestMapping("/guest/bcrypt")
	public String bcrypt() {
		logger.info("url ==> bcrypt");
		
		return "guest/bcrypt";
	}
	
	@RequestMapping("/guest/bcrypt2")
	public String bcrypt2(HttpServletRequest req, Model model) {
		logger.info("url ==> bcrypt2");
		
		String pwd = req.getParameter("pwd");
		System.out.println(pwd);
		String enc_pwd = passwordEncoder.encode(pwd);
		
		model.addAttribute("enc_pwd", enc_pwd);
		
		return "guest/bcrypt2";
	}
	// 프로젝트 마무리 시 삭제 끝
	
	@RequestMapping("/guest/denied")
	public String denied() {
		logger.info("url ==> denied");
		
		return "guest/denied";
	}
	
}
