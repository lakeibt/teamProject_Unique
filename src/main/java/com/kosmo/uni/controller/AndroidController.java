package com.kosmo.uni.controller;

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
import com.kosmo.uni.vo.Member;

@Controller
public class AndroidController {
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	AndDAO andDao;
	
	//	앱 로그인
		@ResponseBody	// 웹(스프링)에서 안드로이드로 값(json)을 전달하기 위한 어노테이션
		@RequestMapping("/androidSignIn")
		public Map<String, String> androidSignIn(HttpServletRequest req){
			log.info("androidSignIn()");
			
			// 안드로이드에서 전달할 값
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
			
			System.out.println(id);
			System.out.println(pwd);
			
			// 로그인
			HashMap<String, String> map = andDao.confirmIdPwd(id);
			System.out.println("--------------");
			System.out.println(map.get("USERID"));
			System.out.println(map.get("USERNAME"));
			System.out.println(map.get("PASSWORD"));
			System.out.println(map.get("ENABLED"));
			System.out.println(map.get("AUTHORITY"));
			
			// 웹에서 안드로이드로 전달할 값
			Map<String, String> out = new HashMap<String, String>();
			if(checkPass(pwd, map.get("PASSWORD"))) {
				log.info("로그인 성공 : " + map.get("USERID"));
				out.put("member_id", id);
				out.put("username", map.get("USERNAME"));
				out.put("authority", map.get("AUTHORITY"));
				out.put("password", map.get("PASSWORD"));
			} else {
				log.info("로그인 실패");
				out.put("member_id", null);
			}
			
			return out;
		}
		
	
	// 앱 마이페이지
	@ResponseBody
	@RequestMapping("/androidMyPageMain")
	public Map<String, Object> androidMyPageMain(HttpServletRequest req) {
		log.info("androidMyPageMain()");
	
		
		// 안드로이드에서 전달한 id값
		String id = req.getParameter("id");
		
		System.out.println("id : " + id);
		
		// 회원정보 조회
		Member m = andDao.getMemberInfo(id);
		
		System.out.println("m : " + m);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data1", m.getId());
		map.put("data2", m.getName());
		map.put("data3", m.getAuthority());
		map.put("member", m);
	
		return map;
	}
	
	private boolean checkPass(String pwd, String encPwd) {
		if (BCrypt.checkpw(pwd, encPwd)) {
			return true;
		} else {
			return false;
		}
	}
}

