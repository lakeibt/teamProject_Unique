package com.kosmo.uni.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.uni.persistence.AdminDAO;
import com.kosmo.uni.service.AdminServiceImpl;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	AdminServiceImpl adminService;
	
	@Autowired
	AdminDAO dao;

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

		return "admin/degree/facility_ask";
	}

	// ------------------------- 인사관리 -------------------------
	// ------------------------ 기본코드설정 ------------------------
	// 인사기초코드
	@RequestMapping(value = "/admin/human_resources/code_setting/code_setting")
	public String code_setting(HttpServletRequest req, Model model) {
		logger.info("human_resources/code_setting/code_setting");

		return "admin/human_resources/code_setting/code_setting";
	}
	// 
	@RequestMapping(value = "/admin/human_resources/code_setting/code_rankList")
	public String code_rankList(HttpServletRequest req, Model model) {
		logger.info("human_resources/code_setting/code_rankList");
		
		return "admin/human_resources/code_setting/code_rankList";
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
	// 테스트
	@RequestMapping(value = "/admin/human_resources/info/test")
	public String test(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/test");

		return "admin/human_resources/info/test";
	}
	
	@RequestMapping(value = "/admin/image")
	public ResponseEntity<byte[]> image() {
		logger.info("image");
		
		Map<String, Object> map = dao.getByteImage();
	       byte[] imageContent = (byte[]) map.get("img");
	       final HttpHeaders headers = new HttpHeaders();
	       headers.setContentType(MediaType.IMAGE_PNG);
	       return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);


	}
	
	
	// 인사정보등록
	@RequestMapping(value = "/admin/human_resources/info/human_info")
	public String human_info(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info");

		return "admin/human_resources/info/human_info";
	}
	
	// 학생 등록폼
	@RequestMapping(value = "/admin/human_resources/info/human_info_stu")
	public String human_info_stu(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_stu");

		model.addAttribute("option","stu");
		
		return "admin/human_resources/info/human_info_stu";
	}
	
	// 직원 등록폼
	@RequestMapping(value = "/admin/human_resources/info/human_info_adm")
	public String human_info_adm(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_adm");

		model.addAttribute("option","adm");
		adminService.departList(req, model);
		adminService.rankList(req, model);
		adminService.nextAdminId(req, model);
		
		return "admin/human_resources/info/human_info_adm";
	}
	
	// 교수 등록폼
	@RequestMapping(value = "/admin/human_resources/info/human_info_pro")
	public String human_info_pro(HttpServletRequest req, Model model) {
		logger.info("human_resources/info/human_info_pro");

		model.addAttribute("option","pro");
		
		return "admin/human_resources/info/human_info_pro";
	}

	
	// 등록
	@RequestMapping(value = "/admin/human_resources/info/human_info_add")
	public String human_info_add(MultipartHttpServletRequest req, Model model) {
		logger.info("url ==> human_info_add");
		
		adminService.addHuman(req, model);
		
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
	
	// 급여대장 - 전체 계산 
	@RequestMapping(value = "/admin/human_resources/pay/salaryTotalinput")
	public String salaryTotalinput(HttpServletRequest req, Model model) {
		logger.info("human_resources/pay/salaryTotalinput");
		
		adminService.salaryInput(req, model);
		adminService.salaryList(req, model);
		return "admin/human_resources/pay/salary_list";
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

		adminService.salary_list_month(req, model);

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

		adminService.salary_list_human(req, model);

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

		return "admin/facility/list";
	}

	// 시설문의
	@RequestMapping(value = "/admin/facility/ask")
	public String ask(HttpServletRequest req, Model model) {
		logger.info("facility/ask");

		return "admin/facility/ask";
	}

}
