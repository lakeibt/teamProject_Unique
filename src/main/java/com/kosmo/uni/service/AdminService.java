package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface AdminService {
	//공지사항
	public void info_list(HttpServletRequest req, Model model);
	public void infoPro(HttpServletRequest req, Model model);
	public void content(HttpServletRequest req, Model model);
	
	//인사근태
	public void attendance(HttpServletRequest req, Model model);
	public void attendance_Search(HttpServletRequest req, Model model);
	
	//인사별 월별 급여 리스트
	public void salary_list_humanMonth(HttpServletRequest req, Model model);
	public void human_Search(HttpServletRequest req, Model model);
	public void month_Search(HttpServletRequest req, Model model);
	
	//급여등록 - 신규생성 
	public void salary_input(HttpServletRequest req, Model model);
	public void course_list(HttpServletRequest req, Model model);
	
	//급여대장 리스트 출력
	public void salaryList(HttpServletRequest req, Model model);
	
	//급여장 전체 계산 
	public void salaryInput(HttpServletRequest req, Model model);
	
	//강의삭제
	public void classdelete(HttpServletRequest req, Model model);
	
	//강의등록
	public void classinput(HttpServletRequest req, Model model);
	
	//강의수정 클릭
	public void classmod(HttpServletRequest req, Model model);
	
	//강의수정 클릭
	public void classmodClear(HttpServletRequest req, Model model);
	
	//주차리스트 출력
	public void parkingList(HttpServletRequest req, Model model);
	
	//주차리스트 출력
	public void parkSearchList(HttpServletRequest req, Model model);

	public void salaryCnt(HttpServletRequest req, Model model);
	
	//급여대장 수정 폼
	public void salaryModify(HttpServletRequest req, Model model);
	//급여대장 수정 처리
	public void salaryModifyPro(HttpServletRequest req, Model model);
	//급여대장 삭제
	public void salary_delete(HttpServletRequest req, Model model);
	//급여대장 - 토탈급여 
	public void salarytotal(HttpServletRequest req, Model model);
	//급여명세서 출력 
	public void salary_payslip(HttpServletRequest req, Model model);
	//급여 확정 클릭
	public void commitSalary(HttpServletRequest req, Model model);
	//급여 대장 조회 - 수정 팝업 
	public void modifyRoll(HttpServletRequest req, Model model);
	
	// 인사 등록
	public void addHuman(MultipartHttpServletRequest req, Model model);
	
	// 직원 등록
	// 부서목록 가져오기
	public void departList(HttpServletRequest req, Model model);
	// 직급목록 가져오기
	public void rankList(HttpServletRequest req, Model model);
	// 전공 가져오기
	public void majorList(HttpServletRequest req, Model model);
	// 아이디 가져오기 : 직원
	public void nextAdminId(HttpServletRequest req, Model model);
	
	// 시설물 관리
	public void equitmentList(HttpServletRequest req, Model model);
	public void equitmentlistNext(HttpServletRequest req, Model model);
	public void askPro(HttpServletRequest req, Model model);
	public void askCancle(HttpServletRequest req, Model model);
	
	// 시설 요청 - 학사
	public void facility_ask(HttpServletRequest req, Model model);
	public void facility_ask_content(HttpServletRequest req, Model model);
	public void facility_ask_Pro(HttpServletRequest req, Model model);
	public void selectMember(HttpServletRequest req, Model model); // 시설문의 할 때 필요한 인사정보
	public void facility_ask_delete(HttpServletRequest req, Model model);

	// 아이디 가져오기 : 교수
	public void nextProfessorId(HttpServletRequest req, Model model);
	// 아이디 가져오기 : 학생
	public void nextStudentId(HttpServletRequest req, Model model);
	
	// 인사 정보 불러오기
	public void humanList(HttpServletRequest req, Model model);
	public void humanInfo(HttpServletRequest req, Model model);
	
	// 기초 환경설정(직급별 급여)
	public void setting(HttpServletRequest req, Model model);
	public void settingPro(HttpServletRequest req, Model model);
	public void settingHumanList(HttpServletRequest req, Model model);
	public void settingDeletePro(HttpServletRequest req, Model model);
	//급여 확정 후 조회 버튼 
	public void confirm_payroll(HttpServletRequest req, Model model);
}
