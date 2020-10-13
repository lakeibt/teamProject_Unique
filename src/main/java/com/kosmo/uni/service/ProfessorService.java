package com.kosmo.uni.service;

import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ProfessorService {
	
	// 공지 목록
	public void infoList(HttpServletRequest req, Model model);
	// 강의 목록
	public void courseList(HttpServletRequest req, Model model);
	// 공지 자세히보기
	public void infoDetail(HttpServletRequest req, Model model);
	
	// 강의 계획 등록
	public void coursePlanAdd(HttpServletRequest req, Model model);
	// 강의 계획 수정
	public void coursePlanModify(HttpServletRequest req, Model model);
	// 강의 계획 보기
	public void coursPlan(HttpServletRequest req, Model model);
	
	// 수업 상세보기
	public int lectureDetail(HttpServletRequest req, Model model); 
	// 수업 등록
	public void lectureAdd(MultipartHttpServletRequest req, Model model);
	// 수업 수정
	public void lectureModify(MultipartHttpServletRequest req, Model model);
	// 수업 수정
	public void lectureDelete(MultipartHttpServletRequest req, Model model);
	
	// 성적 입력할 인원
	public void gradeList(HttpServletRequest req, Model model);
	// 성적 등록
	public void gradeAdd(HttpServletRequest req, Model model);
	// 성적 등록한 인원
	public void gradeList_modify(HttpServletRequest req, Model model);
	// 성적 수정
	public void gradeModify(HttpServletRequest req, Model model);
	
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
	
	// 교수 수강정보
	public void courseData(HttpServletRequest req, Model model);

	public int messageReply(HttpServletRequest req, Model model);
	// 쪽지 보내기 폼 - 수신자 : 학생/교수
	public void addresseeList(HttpServletRequest req, Model model);
	
	// 교수 상담 내역 가져오기
	public void getConsultList(HttpServletRequest req, Model model) throws InterruptedException, ExecutionException ;
	
	// 쪽지 수 가져오기
	public int getMessageCnt(HttpServletRequest req);
}
