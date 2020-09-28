package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface StudentService {
	// 학생 정보 조회
	public void studentinfo(HttpServletRequest req, Model model);
	// 학생 정보 수정
	public void studentModifyPro(HttpServletRequest req, Model model);
	// 강의 목록 
	public void courseList(HttpServletRequest req, Model model);
	// 강의 계획서
	public void course_syllabus(HttpServletRequest req, Model model);
	// 성적 조회
	public void studentGradeList(HttpServletRequest req, Model model);
	// 학생 강의 목록
	public void studentList(HttpServletRequest req, Model model);
	// 수강 시간표 
	public void studentTimeTable(HttpServletRequest req, Model model);
	// 마이페이지 학생 정보 조회
	public void studentSimpleInfo(HttpServletRequest req, Model model);
	// 쪽지 목록
	public void messageList(HttpServletRequest req, Model model);
	// 쪽지 상세 확인
	public void message(HttpServletRequest req, Model model);
}
