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
	BCryptPasswordEncoder encoder;
	
	public static final String COLLECTION_NAME = "teamUnique_Spring";

	@Override
	public void findPwd(HttpServletRequest req, Model model) {
		String position = req.getParameter("position");
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		
		int selectId = eduDAO.findId(position, id);
		System.out.println(id);
		System.out.println(selectId);
		int confirmId = 0;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("name", name);
		map.put("tel", tel);
		map.put("email", email);
		
		if(selectId == 1) {
			confirmId = eduDAO.confirmId(position, map);
		} else {
			model.addAttribute("result", 2);	// 아이디가 존재하지 않습니다.
			req.setAttribute("result", confirmId);
			return;
		}
		
		if(confirmId == 1) {
			model.addAttribute("id", id);
			req.setAttribute("result", confirmId);
			model.addAttribute("position", position);
		}
		req.setAttribute("result", confirmId);
		model.addAttribute("result", confirmId);	// 입력하신 정보에 맞는 계정이 존재하지 않습니다
	}

	@Override
	public void setPwd(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		String pwd = encoder.encode(req.getParameter("pwd"));
		String position = req.getParameter("position");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("position", position);
		
		int result = eduDAO.setPwd(map);
		if(result == 0) {
			model.addAttribute("id", id);
			model.addAttribute("position", position);
			model.addAttribute("updateFail", "비밀번호 입력이 실패했습니다.");
		}
		req.setAttribute("result", result);
	}

}