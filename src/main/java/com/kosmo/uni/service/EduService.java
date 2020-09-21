package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EduService {

	public void insertUser(HttpServletRequest req, Model model);

	public void test(HttpServletRequest req, Model model);
	// 학생 정보 조회
	public void studentinfo(HttpServletRequest req, Model model);
	// 학생 정보 수정
	public void studentModifyPro(HttpServletRequest req, Model model);
	// 강의 목록 
	public void courseList(HttpServletRequest req, Model model);
	// 성적 조회
	public void studentGradeList(HttpServletRequest req, Model model);
	// 수강 시간표 
	public void studentList(HttpServletRequest req, Model model);
}
