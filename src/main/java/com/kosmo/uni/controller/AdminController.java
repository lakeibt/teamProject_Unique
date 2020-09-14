package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value = "/admin")
	public String home(HttpServletRequest req, Model model) {
		logger.info("admin_main");
		
		return "admin/main";
	}
	
	@RequestMapping(value = "/admin/main")
	public String main(HttpServletRequest req, Model model) {
		logger.info("admin_main");
		
		return "admin/main";
	}
	
	// ------------------------- 학사관리  -------------------------
	// 수강관리
	@RequestMapping(value = "/admin/degree/course")
	public String course(HttpServletRequest req, Model model) {
		logger.info("degree/course");
		
		return "admin/degree/course";
	}
	// 시설문의
	@RequestMapping(value = "/admin/degree/facility_ask")
	public String facility_ask(HttpServletRequest req, Model model) {
		logger.info("degree/facility_ask");
		
		return "admin/degree/facility_ask";
	}
	
	
	// ------------------------- 인사관리  -------------------------
	// ------------------------ 기본코드설정 ------------------------
	// 인사기초코드등록
	@RequestMapping(value = "/admin/human_resources/code_setting/code_setting")
	public String code_setting(HttpServletRequest req, Model model) {
		logger.info("human_resources/code_setting/code_setting");
		
		return "admin/human_resources/code_setting/code_setting";
	}
	
	// 인사/급여환경설정
	@RequestMapping(value = "/admin/human_resources/code_setting/setting")
	public String setting(HttpServletRequest req, Model model) {
		logger.info("human_resources/code_setting/setting");
		
		return "admin/human_resources/code_setting/setting";
	}
	// 급/상여 등록/수정
	@RequestMapping(value = "/admin/human_resources/code_setting/salary_setting")
	public String salary_setting(HttpServletRequest req, Model model) {
		logger.info("human_resources/code_setting/salary_setting");
		
		return "admin/human_resources/code_setting/salary_setting";
	}
	// ------------------------- 인사정보 -------------------------
	// 인사정보등록
	@RequestMapping(value = "/admin/human_resources/info/human_info")
	public String human_info(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info");
		
		return "admin/human_resources/info/human_info";
	}	
	// 인사정보현황
	@RequestMapping(value = "/admin/human_resources/info/human_state")
	public String human_state(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state");
		
		return "admin/human_resources/info/human_state";
	}	
	// 책정임금현황
	@RequestMapping(value = "/admin/human_resources/info/salary_state")
	public String salary_state(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/salary_state");
		
		return "admin/human_resources/info/salary_state";
	}
	
	// ------------------------- 급여관리 -------------------------
	// 근태관리
	@RequestMapping(value = "/admin/human_resources/pay/attendance")
	public String attendance(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/attendance");
		
		return "admin/human_resources/pay/attendance";
	}	
	// 급여등록
	@RequestMapping(value = "/admin/human_resources/pay/salary")
	public String salary(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary");
		
		return "admin/human_resources/pay/salary";
	}		
	// 급여대장
	@RequestMapping(value = "/admin/human_resources/pay/salary_list")
	public String salary_list(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_list");
		
		return "admin/human_resources/pay/salary_list";
	}
	
	// 급여대장 - 조회
	@RequestMapping(value = "/admin/human_resources/pay/payroll")
	public String thisM_list(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/thisM_list");
		
		return "admin/human_resources/pay/payroll";
	}	
	// 급여대장 - 급여명세서
	@RequestMapping(value = "/admin/human_resources/pay/payslip")
	public String salary_payslip(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_payslip");
		
		return "admin/human_resources/pay/payslip";
	}
	// 급여명세
	@RequestMapping(value = "/admin/human_resources/pay/salary_info")
	public String salary_info(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_info");
		
		return "admin/human_resources/pay/salary_info";
	}		
	// 월별 급/상여지급현황
	@RequestMapping(value = "/admin/human_resources/pay/salary_list_month")
	public String salary_list_month(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_list_month");
		
		return "admin/human_resources/pay/salary_list_month";
	}
	
	// 급여 신규 등록 - 생성 폼
	@RequestMapping(value = "/admin/human_resources/pay/salary_new_create")
	public String salary_new_create(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_new_create");
		
		return "admin/human_resources/pay/salary_new_create";
	}
	
	// 급여 신규등록 - 등록 enrollSalary
	@RequestMapping(value = "/admin/human_resources/pay/salary_enroll")
	public String salary_enroll(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_enroll");
		
		return "admin/human_resources/pay/salary_enroll";
	}
	// 사원별 급/상여지급현황
	@RequestMapping(value = "/admin/human_resources/pay/salary_list_human")
	public String salary_list_human(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_list_human");
		
		return "admin/human_resources/pay/salary_list_human";
	}		
	
	// ------------------------- 시설관리  -------------------------
	// 주차관리
	@RequestMapping(value = "/admin/facility/park")
	public String park(HttpServletRequest req, Model model) {
		logger.info("facility/park");
		
		return "admin/facility/park";
	}
	// 시설물 관리 리스트
	@RequestMapping(value = "/admin/facility/list")
	public String list(HttpServletRequest req, Model model) {
		logger.info("facility/list");
		
		return "admin/facility/list";
	}
	// 시설문의
	@RequestMapping(value = "/admin/facility/ask")
	public String ask(HttpServletRequest req, Model model) {
		logger.info("facility/ask");
		
		return "admin/facility/ask";
	}
	
}
