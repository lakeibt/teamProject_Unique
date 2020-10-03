package com.kosmo.uni.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.uni.persistence.AdminDAO;
import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.DepartVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.MajorVO;
import com.kosmo.uni.vo.MessageVO;
import com.kosmo.uni.vo.ParkVO;
import com.kosmo.uni.vo.PayslipVO;
import com.kosmo.uni.vo.RankVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.SalaryVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDAO dao;
	
	@Autowired
	BCryptPasswordEncoder encoder;
	
	// 공지사항 등록
	@Override
	public void infoPro(HttpServletRequest req, Model model) {
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("title", title);
		map.put("content", content);
		
		int insertCnt = dao.insertInfo(map);
		model.addAttribute("insertCnt", insertCnt);
	}
	
	// 공지사항 상세
	@Override
	public void content(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("num"));
		
		dao.addCnt(num);// 조회수 증가
		
		Map<String, Object> dtos = dao.getContent(num);
		model.addAttribute("dtos", dtos);
	}
	
	// 공지사항 목록
	@Override
	public void info_list(HttpServletRequest req, Model model) {
		int pageSize = 5; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한 블럭당 페이지 갯수

		int cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지

		cnt = dao.getInfoCnt();
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) pageNum = "1";

		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = cnt - (currentPage - 1) * pageSize;

		if (cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<Map<String, Object>> dtos = dao.getInfoList(map);
			model.addAttribute("dtos", dtos);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		model.addAttribute("cnt", cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
		}
	}
	
	// 급여 - 전체리스트
	@Override
	public void attendance(HttpServletRequest req, Model model) {
		int pageSize = 5; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한 블럭당 페이지 갯수

		int cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지

		cnt = dao.getAttendance_Cnt();
		System.out.println("cnt : " + cnt);

		pageNum = req.getParameter("pageNum");
		if (pageNum == null) pageNum = "1";

		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = cnt - (currentPage - 1) * pageSize;

		if (cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();

			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getAttendance_List(map);
			model.addAttribute("dtos", dtos);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		model.addAttribute("cnt", cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
		}
	}
	
	// 급여 - 조회리스트
	@Override
	public void attendance_Search(HttpServletRequest req, Model model) {
		int pageSize = 5; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한 블럭당 페이지 갯수

		int search_Cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지

		String st = req.getParameter("st");
		String et = req.getParameter("et");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("st", st);
		map.put("et", et);

		search_Cnt = dao.getAttendance_Search_Cnt(map);
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) pageNum = "1";
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		pageCount = (search_Cnt / pageSize) + (search_Cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = search_Cnt - (currentPage - 1) * pageSize;

		if (search_Cnt > 0) {
			map.put("st", st);
			map.put("et", et);
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getAttendance_List_Search(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("search_Cnt", search_Cnt);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		model.addAttribute("search_Cnt", search_Cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (search_Cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
			model.addAttribute("start", start); // 페이지 갯수
			model.addAttribute("end", end); // 현재페이지
		}
	}

	// 급여 - 월별
	@Override
	public void salary_list_humanMonth(HttpServletRequest req, Model model) {
		int pageSize = 5; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한 블럭당 페이지 갯수

		int salary_list_cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지

		salary_list_cnt = dao.getSalary_Cnt();
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) pageNum = "1";
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		pageCount = (salary_list_cnt / pageSize) + (salary_list_cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = salary_list_cnt - (currentPage - 1) * pageSize;

		if (salary_list_cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getSalary_list_humanMonth(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("salary_list_cnt", salary_list_cnt);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		model.addAttribute("salary_list_cnt", salary_list_cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (salary_list_cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
		}
	}

	// 인사 검색
	@Override
	public void human_Search(HttpServletRequest req, Model model) {
		int pageSize = 5; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한 블럭당 페이지 갯수

		int humanSearch_Cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지
		
		Map<String, Object> map = new HashMap<String, Object>();

		String name = req.getParameter("name");
		map.put("name", name);
		humanSearch_Cnt = dao.humanSearch_Cnt(map);

		pageNum = req.getParameter("pageNum");
		if (pageNum == null) pageNum = "1";
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		pageCount = (humanSearch_Cnt / pageSize) + (humanSearch_Cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = humanSearch_Cnt - (currentPage - 1) * pageSize;

		String start2 = req.getParameter("start1");
		String end2 = req.getParameter("end1");

		if (humanSearch_Cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.humanSearch_List(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("humanSearch_Cnt", humanSearch_Cnt);
			model.addAttribute("currentPage", currentPage);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		model.addAttribute("humanSearch_Cnt", humanSearch_Cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (humanSearch_Cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
			model.addAttribute("start", start); // 페이지 갯수
			model.addAttribute("end", end); // 현재페이지
		}
	}

	// 월별 검색
	@Override
	public void month_Search(HttpServletRequest req, Model model) {
		int pageSize = 5; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한 블럭당 페이지 갯수

		int monthSearch_Cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지

		String sm = req.getParameter("sm");
		String em = req.getParameter("em");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sm", sm);
		map.put("em", em);
		monthSearch_Cnt = dao.monthSearch_Cnt(map); // 날짜 검색
		
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) pageNum = "1";
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		pageCount = (monthSearch_Cnt / pageSize) + (monthSearch_Cnt % pageSize > 0 ? 1 : 0);
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = monthSearch_Cnt - (currentPage - 1) * pageSize;

		if (monthSearch_Cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.monthSearch_List(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("monthSearch_Cnt", monthSearch_Cnt);
			model.addAttribute("currentPage", currentPage);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		model.addAttribute("monthSearch_Cnt", monthSearch_Cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (monthSearch_Cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
			model.addAttribute("start", start); // 페이지 갯수
			model.addAttribute("end", end); // 현재페이지
		}
	}
	
	// 급여 확정 - 등록
	@Override
	public void salary_input(HttpServletRequest req, Model model) {
		Map<String, Object> map = new HashMap<>();
		
		map.put("salary_division", req.getParameter("salary_division"));
		map.put("payments_division", req.getParameter("payments_division"));
		map.put("payments_start", req.getParameter("payments_start"));
		map.put("payments_end", req.getParameter("payments_end"));
		map.put("salary_inday", req.getParameter("salary_inday"));
		
		String payments_month = req.getParameter("payments_month_01")+"-"+req.getParameter("payments_month_02");
		
		map.put("payments_month", payments_month);
		map.put("salary_name", req.getParameter("salary_name"));
		
		int inputNum = dao.salary_input(map);
		
		model.addAttribute("inputNum",inputNum);
	}

	// 급여 리스트
	@Override
	public void salaryList(HttpServletRequest req, Model model) {
		int pageSize = 1; // 한페이지당 출력할 글 갯수
		int pageBlock = 3; // 한블럭당 페이지 갯수

		int cnt = 0; // 글갯수
		int start = 0; // 현재 페이지 시작 글번호
		int end = 0; // 현재 페이지 마지막 글번호
		int number = 0; // 출력용 글번호
		String pageNum = ""; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작페이지
		int endPage = 0; // 마지막 페이지

		cnt = dao.getSalaryCnt();
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) pageNum = "1";
		currentPage = Integer.parseInt(pageNum); // 현재 페이지 : 1
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0); // 페이지 갯수 + 나머지 있으면 1
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		number = cnt - (currentPage - 1) * pageSize;

		if (cnt > 0) {
			Map <String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			List<SalaryInputVO> mtos = dao.getSalaryList(map);
			model.addAttribute("mtos", mtos);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) endPage = pageCount;

		int adminCnt = dao.getAdminCnt();
		model.addAttribute("adminCnt", adminCnt); // 직원수 
		
		model.addAttribute("cnt", cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지번호

		if (cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막 페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
		}
	}
	
	// 급여 등록
	@Override
	public void salaryInput(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);

		List<SalaryVO> stos = dao.getSelectList(map);
		
		for(int i = 0; i < stos.size(); i++) {
			SalaryVO sal = stos.get(i);
			int car = 1;
			SalaryVO vo = null;
			if(sal.getCar() == car) {
				int cost = sal.getCar();
				vo = dao.getSelectCar(cost);
				sal.setCost(vo.getCost());
				sal.setMeal(vo.getMeal());
				sal.setContract_vehicle(vo.getContract_vehicle());
			} else {
				int cost0 = sal.getCar();
				vo = dao.getSelectCar(cost0);
				sal.setCost(vo.getCost());
				sal.setMeal(vo.getMeal());
				sal.setContract_vehicle(vo.getContract_vehicle());
			}
		}
		model.addAttribute("stos", stos);
	}

	// 강의 리스트
	@Override
	public void course_list(HttpServletRequest req, Model model) {
		int course_Cnt = 0;
		
		course_Cnt = dao.getCourseCnt();
		
		List<CourseVO> dtos = dao.getCourseList();
		model.addAttribute("dtos",dtos);
		model.addAttribute("course_Cnt",course_Cnt);
	}
	
	// 급여 개수
	@Override
	public void salaryCnt(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int payments_division = Integer.parseInt(req.getParameter("payments_division"));
		
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);
		map.put("payments_division", payments_division);
		
		int cnt = dao.getDivisionCnt(map);
		
		Map <String, Object> map1 = new HashMap<>();
		map1.put("salary_input_num", salary_input_num);
		map1.put("division_cnt", cnt);
		int i = dao.updateDivCnt(map1);
		model.addAttribute("division_cnt",cnt);
	}
	
	// 급여 수정
	@Override
	public void salaryModify(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		
		SalaryInputVO vo = dao.getSalaryArticle(salary_input_num);
		model.addAttribute("dto", vo);
	}
	
	// 수정 처리
	@Override
	public void salaryModifyPro(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);
		map.put("salary_division", Integer.parseInt(req.getParameter("salary_division")));
		map.put("payments_division", Integer.parseInt(req.getParameter("payments_division")));
		map.put("salary_name", req.getParameter("salary_name"));
		map.put("salary_inday", req.getParameter("salary_inday"));
		
		int updateCnt = dao.UpdateSalInput(map);
		model.addAttribute("updateCnt", updateCnt);
	}
	
	// 급여 삭제
	@Override
	public void salary_delete(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int deleteCnt = dao.deleteSalary(salary_input_num);
		model.addAttribute("deleteCnt", deleteCnt);
	}
	
	// 총급여
	@Override
	public void salarytotal(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int salary = dao.selectSalSum(salary_input_num);
		model.addAttribute("salary", salary);
		SalaryVO vo = dao.getMealCar(salary_input_num);
		model.addAttribute("vo", vo);
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);
		map.put("salary_total", salary+vo.getMeal()+vo.getContract_vehicle());
		
		dao.updateTotalSal(map);
	}
	
	@Override
	public void salary_payslip(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		List<PayslipVO> dtos =dao.getPayslip(salary_input_num);
		model.addAttribute("dtos", dtos);
	}

	@Override
	public void classdelete(HttpServletRequest req, Model model) {
		int delete_Cnt = 0;
		String code = req.getParameter("co_code");
		delete_Cnt = dao.classDelete(code);
		model.addAttribute("delete_Cnt", delete_Cnt);
	}

	@Override
	public void classinput(HttpServletRequest req, Model model) {
		CourseVO vo = new CourseVO();

		String co_name = req.getParameter("co_name");
		String m_code = req.getParameter("m_code");
		int school_year = Integer.parseInt(req.getParameter("school_year"));
		String p_code = req.getParameter("p_code");
		int co_year = Integer.parseInt(req.getParameter("co_year"));
		int co_semester = Integer.parseInt((req.getParameter("co_semester")));
		String co_day = req.getParameter("co_day");
		int le_code = Integer.parseInt(req.getParameter("le_code")); 
		int grade = Integer.parseInt(req.getParameter("grade"));
		int limit_num = Integer.parseInt(req.getParameter("limit_num"));
		String p_name = req.getParameter("p_name");
		
		vo.setCo_name(co_name);
		vo.setM_code(m_code);
		vo.setSchool_year(school_year);
		vo.setP_code(p_code);
		vo.setCo_year(co_year);
		vo.setCo_semester(co_semester);
		vo.setCo_day(co_day);
		vo.setLe_code(le_code);
		vo.setGrade(grade);
		vo.setLimit_num(limit_num);
		vo.setP_name(p_name);
		
		int insert_Cnt = dao.classInsert(vo);
		model.addAttribute("cnt",insert_Cnt);
	}

	@Override
	public void classmod(HttpServletRequest req, Model model) {
		String co_code = req.getParameter("co_code");
		
		CourseVO vo = dao.classInfo(co_code);
		model.addAttribute("vo",vo);
	}

	@Override
	public void classmodClear(HttpServletRequest req, Model model) {
		CourseVO vo = new CourseVO();
		
		String co_code = req.getParameter("co_code");
		String co_name = req.getParameter("co_name");
		String m_code = req.getParameter("m_code");
		int school_year = Integer.parseInt(req.getParameter("school_year"));
		String p_code = req.getParameter("p_code");
		int co_year = Integer.parseInt(req.getParameter("co_year"));
		int co_semester = Integer.parseInt((req.getParameter("co_semester")));
		String co_day = req.getParameter("co_day");
		int le_code = Integer.parseInt(req.getParameter("le_code")); 
		int grade = Integer.parseInt(req.getParameter("grade"));
		int limit_num = Integer.parseInt(req.getParameter("limit_num"));
		String p_name = req.getParameter("p_name");
		System.out.println("co_code :"+co_code);
		System.out.println("co_name :"+co_name);
		System.out.println("m_code :"+m_code);
		System.out.println("school_year :"+school_year);
		System.out.println("p_code :"+p_code);
		
		vo.setCo_code(co_code);
		vo.setCo_name(co_name);
		vo.setM_code(m_code);
		vo.setSchool_year(school_year);
		vo.setP_code(p_code);
		vo.setCo_year(co_year);
		vo.setCo_semester(co_semester);
		vo.setCo_day(co_day);
		vo.setLe_code(le_code);
		vo.setGrade(grade);
		vo.setLimit_num(limit_num);
		vo.setP_name(p_name);
		
		int update_Cnt = dao.classmodClear(vo);
		model.addAttribute("cnt", update_Cnt);
	}

	@Override
	public void parkingList(HttpServletRequest req, Model model) {
		int parkCnt = 0;

		parkCnt = dao.getParkingCnt();
		List<ParkVO> dtos = dao.getParkingList();
		model.addAttribute("dtos",dtos);
		model.addAttribute("parkCnt",parkCnt);
	}

	@Override
	public void parkSearchList(HttpServletRequest req, Model model) {
		int parkCnt = 0;
		String param = req.getParameter("param");
		String text = req.getParameter("intext");
		
		if(param.equals("carnum")) {
			parkCnt = dao.getParkingCnt();
			List<ParkVO> dtos = dao.getCarNumList(text);
			model.addAttribute("dtos",dtos);
			model.addAttribute("parkCnt",parkCnt);
		} else {
			parkCnt = dao.getParkingCnt();
			List<ParkVO> dtos = dao.getSearchList(text);
			model.addAttribute("dtos",dtos);
			model.addAttribute("parkCnt",parkCnt);
		}
	}

	// 인사 등록
	@Override
	public void addHuman(MultipartHttpServletRequest req, Model model) {
		int insertCnt = 0;
		
		String option = req.getParameter("option");
		
		MultipartFile file = req.getFile("photo");
		
		String saveDir_adm = req.getRealPath("/resources/img/profile_photo/admin/");
		String saveDir_pro = req.getRealPath("/resources/img/profile_photo/professor/");
		String saveDir_stu = req.getRealPath("/resources/img/profile_photo/student/");
		
		String realDir_adm = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\img\\profile_photo\\admin\\";
		String realDir_pro = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\img\\profile_photo\\professor\\";
		String realDir_stu = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\img\\profile_photo\\student\\";
		
		try {
			FileInputStream fis = null;
			FileOutputStream fos = null;
			
			if(option.equals("adm")) {
				file.transferTo(new File(saveDir_adm+file.getOriginalFilename()));
				fis = new FileInputStream(saveDir_adm + file.getOriginalFilename());
				fos = new FileOutputStream(realDir_adm + file.getOriginalFilename());
			} else if(option.equals("pro")) {
				file.transferTo(new File(saveDir_pro+file.getOriginalFilename()));
				fis = new FileInputStream(saveDir_pro + file.getOriginalFilename());
				fos = new FileOutputStream(realDir_pro + file.getOriginalFilename());
			} else {
				file.transferTo(new File(saveDir_stu+file.getOriginalFilename()));
				fis = new FileInputStream(saveDir_stu + file.getOriginalFilename());
				fos = new FileOutputStream(realDir_stu + file.getOriginalFilename());
			}
			
			int data = 0;
			
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			String id = req.getParameter("id");
			String pwd = encoder.encode(req.getParameter("pwd"));
			String photo = file.getOriginalFilename();
			String name = req.getParameter("name");
			String eng_name = req.getParameter("eng_name");
			int jumin1 = Integer.parseInt(req.getParameter("jumin1"));
			int jumin2 = Integer.parseInt(req.getParameter("jumin2"));
			int gender = Integer.parseInt(req.getParameter("gender"));
			int frgn = Integer.parseInt(req.getParameter("frgn"));
			String nation = req.getParameter("nation");
			String tel = req.getParameter("tel");
			String email = req.getParameter("email");
			String address = req.getParameter("address");
			String de_address = req.getParameter("de_address");
			
			HumanVO vo = new HumanVO();
			vo.setId(id);
			
			vo.setPwd(pwd);
			vo.setPhoto(photo);
			vo.setName(name);
			vo.setEng_name(eng_name);
			vo.setJumin1(jumin1);
			vo.setJumin2(jumin2);
			vo.setGender(gender);
			vo.setFrgn(frgn);
			vo.setNation(nation);
			vo.setTel(tel);
			vo.setEmail(email);
			vo.setAddress(address);
			vo.setDe_address(de_address);
			
			if(option.equals("adm")) {
				// payment_division = 1;
				String depart = req.getParameter("depart");
				String rank = req.getParameter("rank");
				String ed = req.getParameter("enterday");
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
				Date enterday = null;
				try {
					enterday = transFormat.parse(ed);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				String account_number = req.getParameter("account_number");
				int car = Integer.parseInt(req.getParameter("car"));
				
				vo.setDepart(depart);
				vo.setRank(rank);
				vo.setEnterday(enterday);
				vo.setAccount_number(account_number);
				vo.setCar(car);
				
				insertCnt = dao.insertAdmin(vo);
				
			} else if(option.equals("pro")) {
				String position = req.getParameter("position");
				String m_code = req.getParameter("m_code");
				String ed = req.getParameter("enterday");
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
				Date enterday = null;
				try {
					enterday = transFormat.parse(ed);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				String account_number = req.getParameter("account_number");
				int car = Integer.parseInt(req.getParameter("car")); 
				
				vo.setPosition(position);
				vo.setM_code(m_code);
				vo.setEnterday(enterday);
				vo.setAccount_number(account_number);
				vo.setCar(car);
				
				insertCnt = dao.insertProfesser(vo);
				
			} else {
				// r_code = 1;
				String m_code = req.getParameter("m_code");
				int entrancedate = Integer.parseInt(req.getParameter("entrancedate"));
				int grade = Integer.parseInt(req.getParameter("grade"));
				
				vo.setM_code(m_code);
				vo.setEntrancedate(entrancedate);
				vo.setGrade(grade);
				
				insertCnt = dao.insertStudent(vo);
			}
			
			model.addAttribute("insertCnt", insertCnt);
			model.addAttribute("option", option);
		
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
	}


	
	// 직원 등록폼
	// 아이디 가져오기
	@Override
	public void nextAdminId(HttpServletRequest req, Model model) {
		String nextId = dao.getNextAdminId();
		model.addAttribute("nextId", nextId);
	}
	@Override
	public void nextProfessorId(HttpServletRequest req, Model model) {
		
		String nextId = dao.getNextProfessorId();
		
		model.addAttribute("nextId", nextId);
	}
	@Override
	public void nextStudentId(HttpServletRequest req, Model model) {
		
		String nextId = dao.getNextStudentId();
		
		model.addAttribute("nextId", nextId);
	}	
	
	// 직원 등록폼
	// 부서 목록 가져오기
	@Override
	public void departList(HttpServletRequest req, Model model) {
		List<DepartVO> departList = dao.getDepartList();
		
		model.addAttribute("departList",departList);
	}
	// 직급 목록 가져오기
	@Override
	public void rankList(HttpServletRequest req, Model model) {
		List<RankVO> rankList = dao.getRankList();
		
		model.addAttribute("rankList",rankList);
	}
	// 전공 목록 가져오기
	@Override
	public void majorList(HttpServletRequest req, Model model) {

		List<MajorVO> majorList = dao.getMajorList();
		
		model.addAttribute("majorList",majorList);
		
	}

	// 시설물 관리 리스트
	@Override
	public void equitmentList(HttpServletRequest req, Model model) {
		List<Map<String, Object>> code = dao.equitmentCode();
		List<Map<String, Object>> kinds = dao.equitmentKinds();
		
		model.addAttribute("code", code);
		model.addAttribute("kinds", kinds);
		model.addAttribute("cnt", kinds.size());
	}
	
	@Override
	public void equitmentlistNext(HttpServletRequest req, Model model) {
		String code = req.getParameter("code");
		String kind = req.getParameter("kind");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", code);
		map.put("kind", kind);
		List<Map<String, Object>> list = dao.equitmentList(map);
		List<Map<String, Object>> using = dao.equitmentUsingList(map);
		
		if(req.getParameter("keyword") != null) {
			Map<String, Object> search = new HashMap<String, Object>();
			search.put("code", code);
			search.put("kind", kind);
			search.put("keyword", req.getParameter("keyword"));
			List<String> searchName = dao.searchName(search);
			model.addAttribute("search", searchName);
		}
		model.addAttribute("list", list);
		model.addAttribute("using", using);
	}

	// 시설물 요청
	@Override
	public void facility_ask(HttpServletRequest req, Model model) {
		List<Map<String, Object>> list = dao.facilityAsk();
		model.addAttribute("list", list);
	}
	// 요청 폼에 들어갈 인사정보 검색
	@Override
	public void selectMember(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		Map<String, Object> member = dao.selectMember(id);
		model.addAttribute("member", member);
	}
	// 요청 상세 내용
	@Override
	public void facility_ask_content(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("num"));
		
		Map<String, Object> content = dao.facilityAskContent(num);
		model.addAttribute("content", content);
	}
	// 요청 등록
	@Override
	public void facility_ask_Pro(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		String depart = dao.searchDepart(id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("code", req.getParameter("code"));
		map.put("kind", req.getParameter("kinds"));
		map.put("type", req.getParameter("type"));
		map.put("e_name", req.getParameter("e_name"));
		map.put("title", req.getParameter("title"));
		map.put("content", req.getParameter("content"));
		map.put("depart", depart);
		
		int insertCnt = dao.insertAsk(map);
		model.addAttribute("insertCnt", insertCnt);
	}
	// 요청 삭제
	@Override
	public void facility_ask_delete(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("num"));
		
		int deleteCnt = dao.deleteAsk(num);
		model.addAttribute("deleteCnt", deleteCnt);
	}
	
	//시설물 요청 처리 
	@Override
	public void askPro(HttpServletRequest req, Model model) {
		// 코드, 종류, 제품, 개수, 상태(사용/대여), 부서, 이름
		int num = Integer.parseInt(req.getParameter("num"));
		String id = req.getParameter("id");
		String depart = dao.searchDepart(id);
		int type = 1;
		
		if(req.getParameter("type").equals("사용")) type = 1;
		else type = 2;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("code", req.getParameter("e_code"));
		map.put("kind", req.getParameter("kind"));
		map.put("type", type);
		map.put("e_name", req.getParameter("e_name"));
		map.put("depart", depart);
		
		int selectCnt = dao.selectUsing(map);
		
		if(selectCnt > 0) { // 사용리스트에 있는 경우 개수만 업데이트
			int updateUsing = dao.updateUsing(map);
			model.addAttribute("updateUsing", updateUsing);
		} else { // 사용리스트에 없는 경우 리스트에 데이터 생성
			int insertCnt = dao.insertUsing(map);
			model.addAttribute("insertCnt", insertCnt);
		}
		
		int updateCnt = dao.updateCnt(map); // 원래 시설물 리스트에서 개수 차감
		int updateState = dao.updateState(num); // 요청 리스트에서 상태 변경
		
		model.addAttribute("updateCnt", updateCnt);
		model.addAttribute("updateState", updateState);
	}
	// 요청 반려
	@Override
	public void askCancle(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("num"));
		// 요청 리스트에서 상태 변경 (요청대기 > 반려)
		int updateCnt = dao.deleteUsing(num);
		model.addAttribute("updateCnt", updateCnt);
	}
	
	@Override
	public void humanList(HttpServletRequest req, Model model) {
		
		int pageSize = 15;
		int pageBlock = 5;
		int cnt = 0;
		int start = 0;
		int end = 0;
		int number = 0;	
		String pageNum = "";
		int currentPage = 0;
		int pageCount = 0;
		int startPage = 0;
		int endPage = 0; 
		
		String option = req.getParameter("option");
		switch (option) {
        case "adm":
        	cnt = dao.getAdminCnt();
            break;
        case "pro":
        	cnt = dao.getProfessorCnt();
            break;
        case "stu":
        	cnt = dao.getStudentCnt();
            break;
        default:
        	cnt = dao.getAdminCnt();
        	break;
		}
		model.addAttribute("option", option);
		
		pageNum = req.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		
		currentPage = Integer.parseInt(pageNum);
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
	
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		
		number = cnt - (currentPage - 1) * pageSize;
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			
			List<HumanVO> dtos = null;
			
			switch (option) {
	        case "adm":
	        	dtos = dao.getAdminList(map);
	            break;
	        case "pro":
	        	dtos = dao.getProfessorList(map);
	            break;
	        case "stu":
	        	dtos = dao.getStudentList(map);
	            break;
			}
			
			model.addAttribute("dtos", dtos);
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		endPage = startPage + pageBlock -1;
		if(endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("cnt", cnt);			
		model.addAttribute("number", number);	 
		model.addAttribute("pageNum", pageNum);
		
		if(cnt>0) {
			model.addAttribute("startPage", startPage);	
			model.addAttribute("endPage", endPage);			
			model.addAttribute("pageBlock", pageBlock);	
			model.addAttribute("pageCount", pageCount);	
			model.addAttribute("currentPage", currentPage);
		}
		
	}
}
