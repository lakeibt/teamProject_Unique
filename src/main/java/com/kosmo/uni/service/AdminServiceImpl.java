package com.kosmo.uni.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.AdminDAO;
import com.kosmo.uni.vo.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDAO dao;

	@Override
	public void attendance(HttpServletRequest req, Model model) {
		int search_Cnt = 0;
		
		search_Cnt = dao.getAttendance_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("search_Cnt : " + search_Cnt);
		
		List<AdminVO> dtos = dao.getAttendance_List(map);
		System.out.println("dtos" + dtos);
		model.addAttribute("dtos",dtos);
		model.addAttribute("search_Cnt",search_Cnt);
	}

	@Override
	public void salary_list_human(HttpServletRequest req, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<AdminVO> dtos = dao.getSalary_list_human(map);
		System.out.println("dtos" + dtos);
		model.addAttribute("dtos",dtos);
	}

}
