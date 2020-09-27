package com.kosmo.uni.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;	// 수정
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.uni.persistence.AndDAO;
import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;

@Controller
public class AndroidController {
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	AndDAO andDao;
	
	
	//	앱 로그인
	@ResponseBody	// 웹(스프링)에서 안드로이드로 값(json)을 전달하기 위한 어노테이션
	@RequestMapping("/android/androidSignIn")
	public Map<String, String> androidSignIn(HttpServletRequest req){
		log.info("androidSignIn()");
		
		
		// 안드로이드에서 전달할 값
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		Map<String, String> out = new HashMap<String, String>();
		
		System.out.println(id);
		System.out.println(pwd);
		
		// 로그인
		if(id.substring(0,1).equals("s")) {
			HashMap<String, String> map = andDao.confirmIdPwdStu(id);
			System.out.println("--------------");
			System.out.println(map.get("ID"));
			System.out.println(map.get("NAME"));
			System.out.println(map.get("PWD"));
			// 웹에서 안드로이드로 전달할 값
			if(checkPass(pwd, map.get("PWD"))) {
				log.info("로그인 성공 : " + map.get("ID"));
				out.put("id", id);
				out.put("name", map.get("NAME"));
				out.put("pwd", map.get("PWD"));
				System.out.println("id : " + map.get("ID"));
				System.out.println("pwd : " +  map.get("PWD"));
				System.out.println("name : " +  map.get("NAME"));
			} else {
				log.info("로그인 실패");
				out.put("id", null);
			}
		} else if(id.substring(0,1).equals("a")) {
			HashMap<String, String> map = andDao.confirmIdPwdAdm(id);
			System.out.println("--------------");
			System.out.println(map.get("ID"));
			System.out.println(map.get("NAME"));
			System.out.println(map.get("PWD"));
			// 웹에서 안드로이드로 전달할 값
			if(checkPass(pwd, map.get("PWD"))) {
				log.info("로그인 성공 : " + map.get("ID"));
				out.put("id", id);
				out.put("name", map.get("NAME"));
				out.put("pwd", map.get("PWD"));
				System.out.println("id : " + map.get("ID"));
				System.out.println("pwd : " +  map.get("PWD"));
				System.out.println("name : " +  map.get("NAME"));
			} else {
				log.info("로그인 실패");
				out.put("id", null);
			}
		}
		
		return out;
	}
		
	
	// 앱 마이페이지
	@ResponseBody
	@RequestMapping("/android/androidMyPageMain")
	public Map<String, Object> androidMyPageMain(HttpServletRequest req) {
		log.info("androidMyPageMain()");
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 안드로이드에서 전달한 id값
		String id = req.getParameter("id");
		
		System.out.println("id : " + id);
		System.out.println("서브스트링 값 : "+ id.substring(0,1));
		
		// 회원정보 조회
		if(id.substring(0,1).equals("s")) {
			StudentVO s = andDao.getStudentInfo(id);
			System.out.println("s : " + s);
			
			map.put("data1", s.getId());
			map.put("data2", s.getName());
			System.out.println("m.id : " + s.getId());
			System.out.println("m.name : " + s.getName());
			
		} else if(id.substring(0,1).equals("a")) {
			Manager m = andDao.getAdminInfo(id);
			System.out.println("m : " + m);
			
			map.put("data1", m.getId());
			map.put("data2", m.getName());
			System.out.println("m.id : " + m.getId());
			System.out.println("m.name : " + m.getName());
			
		} 
		
		return map;
	}
	
	private boolean checkPass(String pwd, String encPwd) {
		if (BCrypt.checkpw(pwd, encPwd)) {
			return true;
		} else {
			return false;
		}
	}
	
//	앱 로그인
	@ResponseBody	// 웹(스프링)에서 안드로이드로 값(json)을 전달하기 위한 어노테이션
	@RequestMapping("/android/androidNfcTag")
	public Map<String, String> androidNfcTag(HttpServletRequest req){
		log.info("androidNfcTag()");
		SimpleDateFormat format1 = new SimpleDateFormat ("MM/dd");
		String today = format1.format (System.currentTimeMillis());
		// 안드로이드에서 전달할 값
		System.out.println("today오늘 : "+today);
		String phonenum = req.getParameter("phonenum");
		String tagid = req.getParameter("tagid");
		
		Map<String, String> out = new HashMap<String, String>();
		
		System.out.println("phonenum : " +phonenum);
		System.out.println("tagid : " +tagid);
		
		Map<String, String> going = new HashMap<String, String>();
		going.put("phonenum", phonenum);
		going.put("today", today);
		
		int what = andDao.whatNfc(going);
		System.out.println("what 있니?없니? : "+what);
		
		if(what == 1) {
			//값있음 update 퇴근
			//04F459A2816B80 <== 출근 스티커 아이디값
			if(phonenum != null && tagid.equals("04F459A2816B80") ) {
				
				Map<String, String> going2 = new HashMap<String, String>();
				going2.put("phonenum", phonenum);
				going2.put("today", today);
				//전화번호 서버로 보내기
				andDao.byeNfc(going2);
				System.out.println("--------------");
				// 웹에서 안드로이드로 전달할 값
				log.info("NFC 출석 태깅 성공 ");
				out.put("phonenum", phonenum);
				out.put("tagid", tagid);
			} else {
				log.info("값 없음 NFC 출석 태깅 실패");
				out.put("phonenum", null);
				out.put("tagid", null);
			}
		} else if(what == 0) {
			//값없음 신규로 등록 insert 출근
			//04F459A2816B80 <== 출근 스티커 아이디값
			if(phonenum != null && tagid.equals("04F459A2816B80") ) {
				//전화번호 서버로 보내기
				andDao.hiNfc(phonenum);
				System.out.println("--------------");
				// 웹에서 안드로이드로 전달할 값
				log.info("NFC 출석 태깅 성공 ");
				out.put("phonenum", phonenum);
				out.put("tagid", tagid);
			} else {
				log.info("값 없음 NFC 출석 태깅 실패");
				out.put("phonenum", null);
				out.put("tagid", null);
			}
		}
		
		return out;
	}
	
	
	
}

