package com.kosmo.uni.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger; // 수정
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.uni.persistence.AndroidDAO;
import com.kosmo.uni.service.AndroidService;
import com.kosmo.uni.vo.nfcVO;

@Controller
public class AndroidController {
	private static final Logger logger = LoggerFactory.getLogger(AndroidController.class);

	@Autowired
	AndroidDAO andDao;

	@Autowired
	AndroidService andService;

	// 앱 로그인
	@ResponseBody // 웹(스프링)에서 안드로이드로 값(json)을 전달하기 위한 어노테이션
	@RequestMapping("/android/androidSignIn")
	public Map<String, String> androidSignIn(HttpServletRequest req) {
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

	// nfc 태그
	@ResponseBody
	@RequestMapping("/android/androidNfcTag")
	public Map<String, String> androidNfcTag(HttpServletRequest req) {
		logger.info("androidNfcTag()");
		Map<String, String> out = andService.NfcTag(req);
		return out;
	}

	@ResponseBody
	@RequestMapping("/android/parking")
	public Map<String, String> androidParking(HttpServletRequest req) {
		logger.info("androidParking()");
		Map<String, String> out = andService.Parking(req);
		return out;
	}

	@ResponseBody
	@RequestMapping("/android/workcheck")
	public ArrayList<nfcVO> androidWorkcheck(HttpServletRequest req) {
		logger.info("androidWorkcheck()");

		ArrayList<nfcVO> out = andService.workcheck(req);
		return out;
	}

	// 지문인식
	@ResponseBody
	@RequestMapping("/android/android_bio_check")
	public Map<String, String> android_bio_check(HttpServletRequest req) {
		logger.info("android_bio_check()");
		
		Map<String, String> bio_Check = andService.bioCheck(req);
		return bio_Check;
	}

	// 지문인식
	@ResponseBody
	@RequestMapping("/android/android_bio_add")
	public Map<String, String> android_bio_add(HttpServletRequest req) {
		logger.info("android_bio_add()");
		
		Map<String, String> bio_add = andService.bioAdd(req);
		return bio_add;
	}
	
	// 지문인식
	@ResponseBody
	@RequestMapping("/android/android_bio_signCheck")
	public Map<String, Object> android_bio_signCheck(HttpServletRequest req) {
		logger.info("android_bio_signCheck()");
		
		Map<String, Object> map = andService.bioSignCheck(req);
		
		return map;
	}
	
}
