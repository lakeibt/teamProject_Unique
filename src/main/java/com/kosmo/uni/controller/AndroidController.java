package com.kosmo.uni.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger; // 수정
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.uni.persistence.AndroidDAO;
import com.kosmo.uni.service.AndroidService;
import com.kosmo.uni.vo.ConsultVO;
import com.kosmo.uni.vo.InClassHowVO;
import com.kosmo.uni.vo.ShopVO;
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

	// 앱 학생 강의 정보 - 리스트
	@ResponseBody
	@RequestMapping("/android/stuCourse")
	public List<Map<String, Object>> androidStudentCourse(HttpServletRequest req) {
		logger.info("androidStudentCourse()");
		
		return andService.StuCourse(req);
	}

	// 앱 학생 성적 정보 - 리스트
	@ResponseBody
	@RequestMapping("/android/stuScore")
	public List<Map<String, Object>> androidStudentScore(HttpServletRequest req) {
		logger.info("androidStudentScore()");
		
		return andService.StuScore(req);
	}
	
	// nfc 태그
	@ResponseBody
	@RequestMapping("/android/androidNfcTag")
	public Map<String, String> androidNfcTag(HttpServletRequest req) {
		logger.info("androidNfcTag()");
		Map<String, String> out = andService.NfcTag(req);
		return out;
	}
	//주차
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
	
	//ADM정보조회
	@ResponseBody
	@RequestMapping("/android/maninfo")
	public Map<String, Object> androidManinfo(HttpServletRequest req){
		logger.info("androidManinfo()");
		
		Map<String, Object> out = andService.maninfo(req);
		
		return out;
	}
	
	//ADM정보 수정
	@ResponseBody
	@RequestMapping("/android/maninfosave")
	public Map<String, Object> androidManinfoSave(HttpServletRequest req){
		logger.info("androidManinfoSave()");
		
		Map<String, Object> out = andService.maninfosave(req);
		
		return out;
	}
	
	//STU정보 수정
	@ResponseBody
	@RequestMapping("/android/stuinfo")
	public Map<String, Object> androidStuinfo(HttpServletRequest req){
		logger.info("androidStuinfo()");
		
		Map<String, Object> out = andService.stuinfo(req);
		
		return out;
	}
	
	//STU정보 수정
	@ResponseBody
	@RequestMapping("/android/stuinfosave")
	public Map<String, Object> androidStuinfoSave(HttpServletRequest req){
		logger.info("androidStuinfoSave()");
		
		Map<String, Object> out = andService.stuinfosave(req);
		
		return out;
	}
	
	//PRO정보조회
	@ResponseBody
	@RequestMapping("/android/proinfo")
	public Map<String, Object> androidProinfo(HttpServletRequest req){
		logger.info("androidProinfo()");
		
		Map<String, Object> out = andService.proinfo(req);
		
		return out;
	}
	
	//PRO정보 수정
	@ResponseBody
	@RequestMapping("/android/proinfosave")
	public Map<String, Object> androidProinfoSave(HttpServletRequest req){
		logger.info("androidProinfoSave()");
		
		Map<String, Object> out = andService.proinfosave(req);
		
		return out;
	}
	
	//상담 정보 불러오기
	@ResponseBody
	@RequestMapping("/android/consultList")
	public ArrayList<ConsultVO> androidConsultList(HttpServletRequest req) throws InterruptedException, ExecutionException{
		logger.info("consultList()");
		
		ArrayList<ConsultVO> out = andService.getConsultList(req);
		return out;
	}
	
	// 앱 교수 강의 정보 - 리스트
	@ResponseBody
	@RequestMapping("/android/proCourse")
	public List<Map<String, Object>> androidProfessorCourse(HttpServletRequest req) {
		logger.info("androidProfessorCourse()");
		
		return andService.proCourse(req);
	}
	
	//강의 정보 불러오기
	@ResponseBody
	@RequestMapping("/android/proclasscheck")
	public ArrayList<InClassHowVO> androidProclasscheck(HttpServletRequest req) throws InterruptedException, ExecutionException{
		logger.info("androidProclasscheck()");
		
		ArrayList<InClassHowVO> out = andService.getClassInHow(req);
		
		return out;
	}
	
	//강의 정보 불러오기
	@ResponseBody
	@RequestMapping("/android/proclasschecknext")
	public ArrayList<InClassHowVO> androidProclasschecknext(HttpServletRequest req) throws InterruptedException, ExecutionException{
		logger.info("androidProclasschecknext()");
		
		ArrayList<InClassHowVO> out = andService.getClassInHowNext(req);	
		return out;
	}
	
	//당근나라 정보 불러오기
	@ResponseBody
	@RequestMapping("/android/shoplist")
	public ArrayList<ShopVO> androidShoplist() throws InterruptedException, ExecutionException{
		logger.info("androidShoplist()");
		
		ArrayList<ShopVO> out = andService.getShopList();	
		return out;
	}
	
	//당근나라 정보 불러오기2
	@ResponseBody
	@RequestMapping("/android/shoplistnext")
	public ArrayList<ShopVO> androidShoplistnext(HttpServletRequest req) throws InterruptedException, ExecutionException{
		logger.info("androidShoplistnext()");
		
		ArrayList<ShopVO> out = andService.getShopListnext(req);	
		return out;
	}
	
	//당근나라 판매 완료
	@ResponseBody
	@RequestMapping("/android/shoplistclear")
	public Map<String, Object> androidShoplistclear(HttpServletRequest req){
		logger.info("androidShoplistclear()");
		
		Map<String, Object> out = andService.getShopListclear(req);
		
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
