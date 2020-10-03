package com.kosmo.uni.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;	// 수정
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.uni.persistence.AndroidDAO;
import com.kosmo.uni.service.AndroidService;

@Controller
public class AndroidController {
	private static final Logger logger = LoggerFactory.getLogger(AndroidController.class);
	
	@Autowired
	AndroidDAO andDao;
	
	@Autowired
	AndroidService andService;
	
	//	앱 로그인
	@ResponseBody	// 웹(스프링)에서 안드로이드로 값(json)을 전달하기 위한 어노테이션
	@RequestMapping("/android/androidSignIn")
	public Map<String, String> androidSignIn(HttpServletRequest req){
		logger.info("androidSignIn()");
		
		Map<String, String> out = andService.login(req);
		
		return out;
	}
		
	// 앱 마이페이지
	@ResponseBody
	@RequestMapping("/android/androidMyPageMain")
	public Map<String, Object> androidMyPageMain(HttpServletRequest req) {
		logger.info("androidMyPageMain()");
		Map<String, Object> map = andService.MyPage(req); 
		
		return map;
	}
	
//	앱 로그인
	@ResponseBody	// 웹(스프링)에서 안드로이드로 값(json)을 전달하기 위한 어노테이션
	@RequestMapping("/android/androidNfcTag")
	public Map<String, String> androidNfcTag(HttpServletRequest req){
		logger.info("androidNfcTag()");
		
		Map<String, String> out = andService.NfcTag(req);
		
		return out;
	}
	
	
	
}

