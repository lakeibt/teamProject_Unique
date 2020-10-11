package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kosmo.uni.vo.ConsultVO;

public interface EduService {
	public void insertUser(HttpServletRequest req, Model model);
}
