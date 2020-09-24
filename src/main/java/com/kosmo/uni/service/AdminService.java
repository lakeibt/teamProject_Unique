package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AdminService {
	
	public void attendance(HttpServletRequest req, Model model);
	
	public void salary_list_human(HttpServletRequest req, Model model);
	//급여등록 - 신규생성 
	public void salary_input(HttpServletRequest req, Model model);
	
	//급여대장 리스트 출력
	public void salaryList(HttpServletRequest req, Model model);
	
	//급여장 전체 계산 
	public void salaryInput(HttpServletRequest req, Model model);
}
