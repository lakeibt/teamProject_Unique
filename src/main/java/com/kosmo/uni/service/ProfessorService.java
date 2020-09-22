package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface ProfessorService {
	

	
	// 쪽지 목록
	public void messageList(HttpServletRequest req, Model model);
	
	// 쪽지 상세 확인
	public void message(HttpServletRequest req, Model model);
}
