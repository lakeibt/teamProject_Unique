package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.uni.service.AdminServiceImpl;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	AdminServiceImpl adminService;

	@RequestMapping(value = "/admin")
	public String home(HttpServletRequest req, Model model) {
		logger.info("admin_main");

		adminService.info_list(req, model);
		return "admin/main";
	}

	@RequestMapping(value = "/admin/main")
	public String main(HttpServletRequest req, Model model) {
		logger.info("admin_main");

		adminService.info_list(req, model);
		return "admin/main";
	}
	// ------------------------- 공지사항(메인) -------------------------
	@RequestMapping(value = "/admin/infoWrite")
	public String infoWrite(HttpServletRequest req, Model model) {
		logger.info("admin_infoWrite");

		return "admin/infoWrite";
	}
	
	@RequestMapping(value = "/admin/infoPro")
	public String infoPro(HttpServletRequest req, Model model) {
		logger.info("admin_infoPro");
		
		adminService.infoPro(req, model);
		return "admin/infoPro";
	}
	
	@RequestMapping(value = "/admin/content")
	public String content(HttpServletRequest req, Model model) {
		logger.info("admin_content");
		
		adminService.content(req, model);
		return "admin/content";
	}

	// ------------------------- 학사관리 -------------------------
	// 수강관리
	@RequestMapping(value = "/admin/degree/course")
	public String course(HttpServletRequest req, Model model) {
		logger.info("degree/course");
		
		adminService.course_list(req, model);
		
		return "admin/degree/course";
	}
	
	//강의등록 클릭
	@RequestMapping(value = "/admin/degree/coursenext")
	public String coursenext(HttpServletRequest req, Model model) {
		logger.info("degree/coursenext");
		
		return "admin/degree/coursenext";
	}
	
	//강의수정 클릭
	@RequestMapping(value = "/admin/degree/coursenext2")
	public String coursenext2(HttpServletRequest req, Model model) {
		logger.info("degree/coursenext2");
		
		adminService.classmod(req, model);
		String co_code = req.getParameter("co_code");
		model.addAttribute("co_code",co_code);
		
		return "admin/degree/coursenext2";
	}
	
	//강의등록 완료
	@RequestMapping(value = "/admin/degree/coursewm")
	public String coursewm(HttpServletRequest req, Model model) {
		logger.info("degree/coursewm");
		
		adminService.classinput(req, model);
		adminService.course_list(req, model);
		
		return "admin/degree/coursewm";
	}
	
	//강의수정 완료
	@RequestMapping(value = "/admin/degree/coursewm2")
	public String coursewm2(HttpServletRequest req, Model model) {
		logger.info("degree/coursewm2");
		
		adminService.classmodClear(req, model);
		
		return "admin/degree/coursewm2";
	}
	
	//강의삭제
	@RequestMapping(value = "/admin/degree/classdelete")
	public String classdelete(HttpServletRequest req, Model model) {
		logger.info("degree/classdelete");
		
		String co_code = req.getParameter("co_code");
		model.addAttribute("co_code", co_code);
		adminService.classdelete(req, model);
		adminService.course_list(req, model);
		
		return "admin/degree/course";
	}
	
	// 시설문의
	@RequestMapping(value = "/admin/degree/facility_ask")
	public String facility_ask(HttpServletRequest req, Model model) {
		logger.info("degree/facility_ask");

		adminService.equitmentList(req, model);
		adminService.facility_ask(req, model);
		return "admin/degree/facility_ask";
	}
	
	// 시설문의 내용
	@RequestMapping(value = "/admin/degree/facility_ask_content")
	public String facility_ask_content(HttpServletRequest req, Model model) {
		logger.info("degree/facility_ask_content");

		adminService.facility_ask_content(req, model);
		return "admin/degree/facility_ask_content";
	}
	
	// 시설 요청 등록 폼
	@RequestMapping(value = "/admin/degree/facility_ask_form")
	public String facility_ask_form(HttpServletRequest req, Model model) {
		logger.info("degree/facility_ask_form");

		adminService.equitmentList(req, model);
		adminService.selectMember(req, model);
		return "admin/degree/facility_ask_form";
	}
	
	// 시설 이름 서치
	@RequestMapping(value = "/admin/degree/facility_search")
	public String facility_search(HttpServletRequest req, Model model) {
		logger.info("degree/facility_search");

		adminService.equitmentlistNext(req, model);
		return "admin/degree/facility_search";
	}
	
	// 시설 요청 등록 처리
	@RequestMapping(value = "/admin/degree/facility_ask_Pro")
	public String facility_ask_Pro(HttpServletRequest req, Model model) {
		logger.info("degree/facility_ask_Pro");

		adminService.facility_ask_Pro(req, model);
		return "admin/degree/facility_ask_Pro";
	}
	
	// 시설 요청 등록 처리
	@RequestMapping(value = "/admin/degree/facility_ask_delete")
	public String facility_ask_delete(HttpServletRequest req, Model model) {
		logger.info("degree/facility_ask_delete");

		adminService.facility_ask_delete(req, model);
		return "admin/degree/facility_ask_delete";
	}

	// ------------------------- 인사관리 -------------------------
	// ------------------------ 기본코드설정 ------------------------
	// 인사/급여환경설정
	@RequestMapping(value = "/admin/human_resources/code_setting/setting")
	public String setting(HttpServletRequest req, Model model) {
		logger.info("human_resources/code_setting/setting");

		adminService.setting(req, model);
		return "admin/human_resources/code_setting/setting";
	}
	// ------------------------- 인사정보 -------------------------
	// 인사정보등록
	@RequestMapping(value = "/admin/human_resources/info/human_info")
	public String human_info(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info");

		String option = req.getParameter("option");
		if(option == null) {
			option = "adm";
		}
		
		model.addAttribute("option", option);
		
		return "admin/human_resources/info/human_info";
	}	
	
	// 직원 등록폼
	@RequestMapping(value = "/admin/human_resources/info/human_info_adm")
	public String human_info_adm(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_adm");

		model.addAttribute("option", "adm");
		adminService.departList(req, model);
		adminService.rankList(req, model);
		adminService.nextAdminId(req, model);
		
		return "admin/human_resources/info/human_info_adm";
	}
	// 학생 등록폼
	@RequestMapping(value = "/admin/human_resources/info/human_info_stu")
	public String human_info_stu(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_stu");

		model.addAttribute("option", "stu");
		adminService.majorList(req, model);
		adminService.nextStudentId(req, model);
		
		return "admin/human_resources/info/human_info_stu";
	}
	// 교수 등록폼
	@RequestMapping(value = "/admin/human_resources/info/human_info_pro")
	public String human_info_pro(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_pro");

		model.addAttribute("option", "pro");
		adminService.majorList(req, model);
		adminService.nextProfessorId(req, model);
		
		return "admin/human_resources/info/human_info_pro";
	}
	
	// 등록
	@RequestMapping(value = "/admin/human_resources/info/human_info_add")
	public String human_info_add(MultipartHttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_add");
		
		adminService.addHuman(req, model);
		return "admin/human_resources/info/human_info_add";
	}

	// 인사정보현황
	@RequestMapping(value = "/admin/human_resources/info/human_state")
	public String human_state(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state");
		
		String option = req.getParameter("option");
		if(option == null) {
			option = "adm";
		}
		
		model.addAttribute("option", option);
		
		return "admin/human_resources/info/human_state";
	}
	// 인사 리스트 가져오기
	@RequestMapping(value = "/admin/human_resources/info/human_state_list")
	public String human_state_list(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state_list");
		
		adminService.humanList(req, model);
		
		return "admin/human_resources/info/human_state_list";
	}
	// 직원 상세정보
	@RequestMapping(value = "/admin/human_resources/info/human_state_detail_adm")
	public String human_state_detail_adm(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state_detail_adm");
		
		adminService.humanInfo(req, model);
		
		return "admin/human_resources/info/human_state_detail_adm";
	}
	// 교수 상세정보
	@RequestMapping(value = "/admin/human_resources/info/human_state_detail_pro")
	public String human_state_detail_pro(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state_detail_pro");
		
		adminService.humanInfo(req, model);
		
		return "admin/human_resources/info/human_state_detail_pro";
	}
	// 학생 상세정보
	@RequestMapping(value = "/admin/human_resources/info/human_state_detail_stu")
	public String human_state_detail_stu(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state_detail_stu");
		
		adminService.humanInfo(req, model);
		
		return "admin/human_resources/info/human_state_detail_stu";
	}
	
	@RequestMapping(value = "/admin/human_resources/info/human_state_modify")
	public String human_state_modify_adm(MultipartHttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_state_modify_adm");
		
		adminService.updateHuman(req, model);
		
		return "admin/human_resources/info/human_state_modify";
	}	



	// ------------------------- 급여관리 -------------------------
	// 근태관리
	@RequestMapping(value = "/admin/human_resources/pay/attendance")
	public String attendance(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/attendance");

		adminService.attendance(req, model);

		return "admin/human_resources/pay/attendance";
	}

	// 근태관리 - 조회
	@RequestMapping(value = "/admin/human_resources/pay/attendance_Search")
	public String salary_search(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/attendance_Search");

		adminService.attendance_Search(req, model);

		return "admin/human_resources/pay/attendance_Search";
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
		
		adminService.salaryList(req, model);
		
		return "admin/human_resources/pay/salary_list";
	}

	// 급여대장 - 조회
	@RequestMapping(value = "/admin/human_resources/pay/payroll")
	public String thisM_list(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/thisM_list");
		adminService.salaryInput(req, model);
		return "admin/human_resources/pay/payroll";
	}
	// 급여대장 수정 
	@RequestMapping(value = "/admin/human_resources/pay/salary_modify")
	public String salary_modify(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_modify");
		adminService.salaryModify(req, model);
		return "admin/human_resources/pay/salary_modify";
	}
	
	// 급여대장 수정 salaryModifyPro  salary_delete
	@RequestMapping(value = "/admin/human_resources/pay/salary_modifyPro")
	public String salary_modifyPro(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_modifyPro");
		adminService.salaryModifyPro(req, model);
		return "admin/human_resources/pay/salary_modifyPro";
	}
	// 급여대장삭제   salary_delete
	@RequestMapping(value = "/admin/human_resources/pay/salary_delete")
	public String salary_delete(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_delete");
		adminService.salary_delete(req, model);
		return "admin/human_resources/pay/salary_delete";
	}
	// 급여대장 - 전체 계산 클릭시 급여 인원수 업데이트
	@RequestMapping(value = "/admin/human_resources/pay/divisioncnt")
	public String divisioncnt(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/divisioncnt");
		adminService.salaryCnt(req, model);
		return "admin/human_resources/pay/divisioncnt";
	}

	// 급여대장 - 전체 계산 클릭시토탈 업데이트
	@RequestMapping(value = "/admin/human_resources/pay/salarytotal")
	public String salarytotal(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salarytotal");
		adminService.salarytotal(req, model);
		return "admin/human_resources/pay/salarytotal";
	}
	
	
	// 급여대장 - 급여명세서
	@RequestMapping(value = "/admin/human_resources/pay/payslip")
	public String salary_payslip(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/payslip");
		adminService.salary_payslip(req, model);
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

		adminService.salary_list_humanMonth(req, model);

		return "admin/human_resources/pay/salary_list_month";
	}

	// 월별 급/상여지급현황 - 조회
	@RequestMapping(value = "/admin/human_resources/pay/month_Search")
	public String month_Search(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/month_Search");

		adminService.month_Search(req, model);

		return "admin/human_resources/pay/month_Search";
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
		
		adminService.salary_input(req, model);
		
		return "admin/human_resources/pay/salary_enroll";
	}
	
	// 사원별 급/상여지급현황
	@RequestMapping(value = "/admin/human_resources/pay/salary_list_human")
	public String salary_list_human(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salary_list_human");

		adminService.salary_list_humanMonth(req, model);

		// adminService.salary_list_human(req, model);

		return "admin/human_resources/pay/salary_list_human";
	}

	// 사원별 급/상여지급현황 - 조희
	@RequestMapping(value = "/admin/human_resources/pay/human_Search")
	public String human_Search(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/human_Search");

		adminService.human_Search(req, model);

		return "admin/human_resources/pay/human_Search";
	}

	// ------------------------- 시설관리 -------------------------
	// 주차관리
	@RequestMapping(value = "/admin/facility/park")
	public String park(HttpServletRequest req, Model model) {
		logger.info("facility/park");
		
		adminService.parkingList(req, model);

		return "admin/facility/park";
	}
	
	// 주차검색
	@RequestMapping(value = "/admin/facility/parknext")
	public String parknext(HttpServletRequest req, Model model) {
		logger.info("facility/parknext");

		adminService.parkSearchList(req, model);
		
		return "admin/facility/parknext";
	}

	// 시설물 관리 리스트
	@RequestMapping(value = "/admin/facility/list")
	public String list(HttpServletRequest req, Model model) {
		logger.info("facility/list");

		adminService.equitmentList(req, model);
		return "admin/facility/list";
	}
	
	// 시설물 관리 리스트 AJAX
	@RequestMapping(value = "/admin/facility/listNext")
	public String listNext(HttpServletRequest req, Model model) {
		logger.info("facility/listNext");

		adminService.equitmentlistNext(req, model);
		return "admin/facility/listNext";
	}

	// 시설문의
	@RequestMapping(value = "/admin/facility/ask")
	public String ask(HttpServletRequest req, Model model) {
		logger.info("facility/ask");

		adminService.facility_ask(req, model);
		return "admin/facility/ask";
	}
	
	// 시설문의 상세
	@RequestMapping(value = "/admin/facility/ask_content")
	public String ask_content(HttpServletRequest req, Model model) {
		logger.info("facility/ask_content");
		
		adminService.facility_ask_content(req, model);
		return "admin/facility/ask_content";
	}
	// 시설문의 승인
	@RequestMapping(value = "/admin/facility/ask_pro")
	public String ask_pro(HttpServletRequest req, Model model) {
		logger.info("facility/ask_pro");
		
		adminService.askPro(req, model);
		return "admin/facility/ask_pro";
	}
	// 시설문의 반려
	@RequestMapping(value = "/admin/facility/ask_cancle")
	public String ask_cancle(HttpServletRequest req, Model model) {
		logger.info("facility/ask_cancle");
		
		adminService.askCancle(req, model);
		return "admin/facility/ask_cancle";
	}

}
