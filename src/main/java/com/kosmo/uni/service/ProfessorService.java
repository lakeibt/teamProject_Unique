package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface ProfessorService {
	
	// 공지 목록
	public void infoList(HttpServletRequest req, Model model);
	// 강의 목록
	public void courseList(HttpServletRequest req, Model model);
	// 공지 자세히보기
	public void infoDetail(HttpServletRequest req, Model model);
	
	// 일정 가져오기
	public void calendarList(HttpServletRequest req, Model model);
	// 일정 추가
	public void addPlan(HttpServletRequest req, Model model);
	
	
	// 강의 계획 등록
	public void coursePlanAdd(HttpServletRequest req, Model model);
	// 강의 계획 수정
	public void coursePlanModify(HttpServletRequest req, Model model);
	
	
	// 강의 계획 보기
	public void coursPlan(HttpServletRequest req, Model model);
	
	// 쪽지 목록
	public void messageList(HttpServletRequest req, Model model);
	
	// 쪽지 상세 확인
	public void message(HttpServletRequest req, Model model);

	// 교수 프로필 정보 가져오기
	public void getProfessorProfile(HttpServletRequest req, Model model);

	public void myPageModify(HttpServletRequest req, Model model);
	
	// 쪽지 미리보기
	public void messageSimple(HttpServletRequest req, Model model);
	
	// 쪽지 보내기
	public int messageSend(HttpServletRequest req, Model model);
	
}
