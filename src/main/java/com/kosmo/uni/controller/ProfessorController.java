package com.kosmo.uni.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfessorController {
	private static final Logger logger = LoggerFactory.getLogger(ProfessorController.class);
	
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
}
