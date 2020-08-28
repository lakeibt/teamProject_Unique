package com.kosmo.uni.persistence;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EduDAO {

	public int insertUser(Map<String, String> map);

	public void test(HttpServletRequest req, Model model);
	
}
