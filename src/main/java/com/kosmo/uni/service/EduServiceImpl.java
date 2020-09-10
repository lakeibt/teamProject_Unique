package com.kosmo.uni.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.EduDAO;

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

}
