package com.kosmo.uni.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.EduDAO;
import com.kosmo.uni.vo.StudentVO;

@Service
public class EduServiceImpl implements EduService {

	@Autowired
	EduDAO eduDAO;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public void insertUser(HttpServletRequest req, Model model) {
		String userid = req.getParameter("userID");
		String passwd = req.getParameter("userPWD");
		String username = req.getParameter("userName");
		String authority = req.getParameter("authority");
		
		String enc_pwd = passwordEncoder.encode(passwd);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("passwd", enc_pwd);
		map.put("username", username);
		map.put("authority", authority);
		
		int insertCnt = eduDAO.insertUser(map);
		model.addAttribute("insertCnt", insertCnt);
	}

	@Override
	public void test(HttpServletRequest req, Model model) {
		eduDAO.test(req, model);
	}

	@Override
	public void studentinfo(HttpServletRequest req, Model model) {
		String id = (String)req.getSession().getAttribute("memId");
		// users 아이디 값과 student 아이디 값이 일치 하는지 확인한다.
		int check = eduDAO.studentIdCheck(id);
		System.out.println("회원아이디 ==> "+ id);
		System.out.println("check : " +check);
		//
		Map<String,Object>  map = new HashMap<String, Object>();
		map.put("strId", id);
		int selectCnt =0;
		StudentVO vo= null;
		if(check == 1) {
			vo = eduDAO.getStudentInfo(id);
			System.out.println("modifyViewService=> vo : "  + vo);
			selectCnt = 1;
		}
		// request나 ssesion으로 처리 결과를 저장
		model.addAttribute("vo",vo);
		model.addAttribute("selectCnt",selectCnt);
	}

}
