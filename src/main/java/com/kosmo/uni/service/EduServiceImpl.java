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
		//
		Map<String,Object>  map = new HashMap<String, Object>();
		map.put("strId", id);
		int selectCnt =0;
		StudentVO vo= null;
		if(check == 1) {
			vo = eduDAO.getStudentInfo(id);
			selectCnt = 1;
		}
		model.addAttribute("vo",vo);
		model.addAttribute("selectCnt",selectCnt);
	}

	@Override
	public void studentModifyPro(HttpServletRequest req, Model model) {
		StudentVO vo = new StudentVO();
		vo.setId((String)req.getSession().getAttribute("memId"));
		String tel = req.getParameter("student_tel");
		vo.setTel(tel);
		// email
		String email = req.getParameter("student_email");
		String address = req.getParameter("address");
		String De_address = req.getParameter("de_address");
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setDe_address(De_address);
		int updateCnt = eduDAO.updateStudentInfo(vo);
		// request나 ssesion으로 처리 결과를 저장
		model.addAttribute("updateCnt", updateCnt);
		System.out.println("updateCnt: " + updateCnt);
	}

}
