package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.WebAttributes;
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
	
	// 로그인 페이지로 이동
	@RequestMapping("/guest/main")
	public String main() {
		logger.info("url ==> main");
		
		return "guest/main";
	}
	
	@RequestMapping("/guest/guest")
	public String guest(HttpServletRequest req, Model model) {
		logger.info("url ==> guest");
		
		eduService.test(req, model);
		
		return "guest/guest";
	}
	
	@RequestMapping("/guest/main3")
	public String main3() {
		logger.info("url ==> main3");
		
		return "guest/main3";
	}
	
	@RequestMapping("/guest/main4")
	public String main4() {
		logger.info("url ==> main4");
		
		return "guest/main4";
	}
	
	@RequestMapping("/guest/main5")
	public String main5() {
		logger.info("url ==> main5");
		
		return "guest/main5";
	}
	
	@RequestMapping("/guest/main6")
	public String main6() {
		logger.info("url ==> main6");
		
		return "guest/main6";
	}
	
	@RequestMapping("/guest/main7")
	public String main7() {
		logger.info("url ==> main7");
		
		return "guest/main7";
	}
	
	@RequestMapping("/guest/main8")
	public String main8() {
		logger.info("url ==> main8");
		
		return "guest/main8";
	}
	
	@RequestMapping("/guest/main9")
	public String main9() {
		logger.info("url ==> main9");
		
		return "guest/main9";
	}
	
	@RequestMapping("/professor/pro_main")
	public String professor1() {
		logger.info("url ==> pro_main");
		
		return "professor/pro_main";
	}
	
	@RequestMapping("/professor/pro_main2")
	public String professor2() {
		logger.info("url ==> pro_main2");
		
		return "professor/pro_main2";
	}
	
	@RequestMapping("/professor/pro_main3")
	public String professor3() {
		logger.info("url ==> pro_main3");
		
		return "professor/pro_main3";
	}
	
	@RequestMapping("/professor/pro_main4")
	public String professor4() {
		logger.info("url ==> pro_main4");
		
		return "professor/pro_main4";
	}
	
	@RequestMapping("/professor/pro_main5")
	public String professor5() {
		logger.info("url ==> pro_main5");
		
		return "professor/pro_main5";
	}
	
	@RequestMapping("/professor/pro_main6")
	public String professor6() {
		logger.info("url ==> pro_main6");
		
		return "professor/pro_main6";
	}
	
	@RequestMapping("/professor/pro_main7")
	public String professor7() {
		logger.info("url ==> pro_main7");
		
		return "professor/pro_main7";
	}
	
	@RequestMapping("/professor/pro_main8")
	public String professor8() {
		logger.info("url ==> pro_main8");
		
		return "professor/pro_main8";
	}
	
	@RequestMapping("/professor/pro_main9")
	public String professor9() {
		logger.info("url ==> pro_main9");
		
		return "professor/pro_main9";
	}
	
	@RequestMapping("/professor/pro_main10")
	public String professor10() {
		logger.info("url ==> pro_main10");
		
		return "professor/pro_main10";
	}
	
	/*
	 * // 로그인 페이지로 이동
	 * 
	 * @RequestMapping("/guest/login") public String login() {
	 * logger.info("url ==> login");
	 * 
	 * return "guest/login"; }
	 * 
	 * // 회원가입 페이지로 이동
	 * 
	 * @RequestMapping("/guest/signIn") public String signIn() {
	 * logger.info("url ==> signIn");
	 * 
	 * return "guest/signIn"; }
	 * 
	 * // 회원가입 처리
	 * 
	 * @RequestMapping("/guest/insertUser") public String
	 * insertUser(HttpServletRequest req, Model model) {
	 * logger.info("url ==> insertUser");
	 * 
	 * eduService.insertUser(req, model);
	 * 
	 * return "user/login"; }
	 * 
	 * @RequestMapping("/guest/denied") public String denied(HttpServletRequest req,
	 * Model model, Authentication auth) {
	 * 
	 * logger.info("url ==> denied"); AccessDeniedException exception =
	 * (AccessDeniedException) req.getAttribute(WebAttributes.ACCESS_DENIED_403);
	 * model.addAttribute("errMsg", exception);
	 * 
	 * return "guest/denied"; }
	 * 
	 * // 관리자 페이지로 이동
	 * 
	 * @RequestMapping("/manager/main") public String admin() {
	 * logger.info("url => admin");
	 * 
	 * return "manager/main"; }
	 * 
	 * // 로그아웃 처리 // @RequestMapping("/guest/logout") // public String
	 * logout(HttpSession session) { // session.invalidate(); // // return
	 * "redirect:/"; // }
	 * 
	 * @RequestMapping("/guest/404") public String sa() { logger.info("url => 404");
	 * 
	 * return "guest/404"; }
	 * 
	 * @RequestMapping("/test/index6") public String test() {
	 * 
	 * return "test/index6"; }
	 * 
	 * @RequestMapping("/guest/main1") public String main1() { return "guest/main1";
	 * }
	 */
}
