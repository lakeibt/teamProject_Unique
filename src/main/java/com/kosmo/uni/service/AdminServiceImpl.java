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

		String a = req.getParameter("sd");
		search_Cnt = dao.getAttendance_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("search_Cnt : " + search_Cnt);

		List<AdminVO> dtos = dao.getAttendance_List(map);
		System.out.println("dtos" + dtos);
		model.addAttribute("dtos", dtos);
		model.addAttribute("search_Cnt", search_Cnt);
		System.out.println("aaaaa"+a);
	}
	
	@Override
	public void attendance_Search(HttpServletRequest req, Model model) {
		int search_Cnt = 0;
		String st = req.getParameter("st");
		String et = req.getParameter("et");
		
		search_Cnt = dao.getAttendance_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("st", st);
		map.put("et", et);
		System.out.println("search_Cnt : " + search_Cnt);

		List<AdminVO> dtos = dao.getAttendance_List_Search(map);
		System.out.println("dtos" + dtos);
		
		 for (String key : map.keySet()) {
	            String value = (String) map.get(key);
	            System.out.println("[key]:" + key + ", [value]:" + value);
	        }
		
		model.addAttribute("dtos", dtos);
		model.addAttribute("search_Cnt", search_Cnt);

	}

	@Override
	public void salary_list_human(HttpServletRequest req, Model model) {
		int salary_list_cnt = 0;

		salary_list_cnt = dao.getSalary_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		List<AdminVO> dtos = dao.getSalary_list_human(map);
		System.out.println("dtos" + dtos);
		model.addAttribute("dtos", dtos);
		model.addAttribute("salary_list_cnt", salary_list_cnt);
	}

	@Override
	public void human_Search(HttpServletRequest req, Model model) {
		int salary_list_cnt = 0;
		String name = req.getParameter("name");
		
		salary_list_cnt = dao.getSalary_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		List<AdminVO> dtos = dao.getSalary_list_human_Search(map);
		System.out.println("dtos" + dtos);
		
		 for (String key : map.keySet()) {
	            String value = (String) map.get(key);
	            System.out.println("[key]:" + key + ", [value]:" + value);
	        }
		
		model.addAttribute("dtos", dtos);
		model.addAttribute("salary_list_cnt", salary_list_cnt);
		
	}

	@Override
	public void salary_list_month(HttpServletRequest req, Model model) {
		int salary_list_cnt = 0;

		salary_list_cnt = dao.getSalary_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		List<AdminVO> dtos = dao.getSalary_list_month(map);
		System.out.println("dtos" + dtos);
		model.addAttribute("dtos", dtos);
		model.addAttribute("salary_list_cnt", salary_list_cnt);
	}

	@Override
	public void month_Search(HttpServletRequest req, Model model) {
		int salary_list_cnt = 0;
		String sm = req.getParameter("sm");
		String em = req.getParameter("em");
		
		salary_list_cnt = dao.getSalary_Cnt();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sm", sm);
		map.put("em", em);
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		List<AdminVO> dtos = dao.getSalary_list_month_Search(map);
		System.out.println("dtos" + dtos);
		
		 for (String key : map.keySet()) {
	            String value = (String) map.get(key);
	            System.out.println("[key]:" + key + ", [value]:" + value);
	        }
		
		model.addAttribute("dtos", dtos);
		model.addAttribute("salary_list_cnt", salary_list_cnt);
	}

}
