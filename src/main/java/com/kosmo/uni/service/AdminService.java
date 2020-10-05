package com.kosmo.uni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AdminService {
	
	public void attendance(HttpServletRequest req, Model model);

	public void attendance_Search(HttpServletRequest req, Model model);
	
	public void salary_list_human(HttpServletRequest req, Model model);
	
	//급여등록 - 신규생성 
	public void salary_input(HttpServletRequest req, Model model);
	
	public void human_Search(HttpServletRequest req, Model model);
	
	public void salary_list_month(HttpServletRequest req, Model model);
	
	public void month_Search(HttpServletRequest req, Model model);
	
	public void course_list(HttpServletRequest req, Model model);
	
	//급여대장 리스트 출력
	public void salaryList(HttpServletRequest req, Model model);
	
	//급여장 전체 계산 
	public void salaryInput(HttpServletRequest req, Model model);
	
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
	
	//급여 확정 후 조회 버튼 
	public void confirm_payroll(HttpServletRequest req, Model model);
}
