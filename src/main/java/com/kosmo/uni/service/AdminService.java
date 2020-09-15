package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AdminService {
	
	public void attendance(HttpServletRequest req, Model model);
	
	public void salary_list_human(HttpServletRequest req, Model model);
	
}
