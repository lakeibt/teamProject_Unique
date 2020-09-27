package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EduService {
	public void insertUser(HttpServletRequest req, Model model);
}
