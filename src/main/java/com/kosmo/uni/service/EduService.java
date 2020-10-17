package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EduService {
	public void findPwd(HttpServletRequest req, Model model);

	public void setPwd(HttpServletRequest req, Model model);
}
