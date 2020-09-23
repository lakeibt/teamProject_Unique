package com.kosmo.uni.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.AdminDAO;
import com.kosmo.uni.persistence.EduDAO;
import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.SalaryInputVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO dao;
	
	@Override
	// 급여 - 전체리스트
	public void attendance(HttpServletRequest req, Model model) {
		// 페이징
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

		// 글갯수 구하기
		cnt = dao.getAttendance_Cnt();
		System.out.println("cnt : " + cnt);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = cnt - (currentPage - 1) * pageSize;

		System.out.println("number : " + start);
		System.out.println("pageSize : " + pageSize);

		if (cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();

			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getAttendance_List(map);
			model.addAttribute("dtos", dtos);

		}

		// 시작페이지
		// 1 = (1 / 3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);

		// 마지막페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		System.out.println("endPage : " + endPage);
		System.out.println("======================");

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

	@Override
	// 급여 - 조회리스트
	public void attendance_Search(HttpServletRequest req, Model model) {
		// 페이징
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

		// 글갯수 구하기
		Map<String, Object> map = new HashMap<String, Object>();
		// datepicker 선택 날짜
		map.put("st", st);
		map.put("et", et);

		search_Cnt = dao.getAttendance_Search_Cnt(map);
		System.out.println("search_Cnt : " + search_Cnt);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (search_Cnt / pageSize) + (search_Cnt % pageSize > 0 ? 1 : 0);

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = search_Cnt - (currentPage - 1) * pageSize;

		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		String start2 = req.getParameter("start1");
		String end2 = req.getParameter("end1");

		System.out.println("start2 : : : " + start2);
		System.out.println("end2 : : : " + end2);

		if (search_Cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getAttendance_List_Search(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("search_Cnt", search_Cnt);
			model.addAttribute("currentPage", currentPage);

		}

		// 시작페이지
		// 1 = (1 / 3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);

		// 마지막페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		System.out.println("endPage : " + endPage);
		System.out.println("======================");

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

	@Override
	public void salary_list_human(HttpServletRequest req, Model model) {
		// 페이징
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

		/* int salary_list_cnt = 0; */

		salary_list_cnt = dao.getSalary_Cnt();
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (salary_list_cnt / pageSize) + (salary_list_cnt % pageSize > 0 ? 1 : 0);

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;
		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = salary_list_cnt - (currentPage - 1) * pageSize;
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		if (salary_list_cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getSalary_list_human(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("salary_list_cnt", salary_list_cnt);

		}

		// 시작페이지
		// 1 = (1 / 3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);

		// 마지막페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		System.out.println("endPage : " + endPage);
		System.out.println("======================");

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

	@Override
	public void human_Search(HttpServletRequest req, Model model) {
		// 페이징
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

		String name = req.getParameter("name");

		salary_list_cnt = dao.getSalary_Cnt();
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		// 글갯수 구하기
		Map<String, Object> map = new HashMap<String, Object>();
		// 이름 검색
		map.put("name", name);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (salary_list_cnt / pageSize) + (salary_list_cnt % pageSize > 0 ? 1 : 0);

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = salary_list_cnt - (currentPage - 1) * pageSize;

		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		String start2 = req.getParameter("start1");
		String end2 = req.getParameter("end1");

		System.out.println("start2 : : : " + start2);
		System.out.println("end2 : : : " + end2);

		if (salary_list_cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getSalary_list_human_Search(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("salary_list_cnt", salary_list_cnt);
			model.addAttribute("currentPage", currentPage);

		}

		// 시작페이지
		// 1 = (1 / 3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);

		// 마지막페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		System.out.println("endPage : " + endPage);
		System.out.println("======================");

		model.addAttribute("salary_list_cnt", salary_list_cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (salary_list_cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
			model.addAttribute("start", start); // 페이지 갯수
			model.addAttribute("end", end); // 현재페이지

		}

	}

	@Override
	public void salary_list_month(HttpServletRequest req, Model model) {
		// 페이징
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

		/* int salary_list_cnt = 0; */
		salary_list_cnt = dao.getSalary_Cnt();
		System.out.println("salary_list_cnt : " + salary_list_cnt);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (salary_list_cnt / pageSize) + (salary_list_cnt % pageSize > 0 ? 1 : 0);

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;
		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = salary_list_cnt - (currentPage - 1) * pageSize;
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		if (salary_list_cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getSalary_list_month(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("salary_list_cnt", salary_list_cnt);

		}

		// 시작페이지
		// 1 = (1 / 3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);

		// 마지막페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		System.out.println("endPage : " + endPage);
		System.out.println("======================");

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

	@Override
	public void month_Search(HttpServletRequest req, Model model) {
		// 페이징
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

		String sm = req.getParameter("sm");
		String em = req.getParameter("em");

		salary_list_cnt = dao.getSalary_Cnt();

		System.out.println("salary_list_cnt : " + salary_list_cnt);

		// 글갯수 구하기
		Map<String, Object> map = new HashMap<String, Object>();

		// 날짜 검색
		map.put("sm", sm);
		map.put("em", em);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (salary_list_cnt / pageSize) + (salary_list_cnt % pageSize > 0 ? 1 : 0);

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호(페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = salary_list_cnt - (currentPage - 1) * pageSize;

		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		String start2 = req.getParameter("start1");
		String end2 = req.getParameter("end1");

		System.out.println("start2 : : : " + start2);
		System.out.println("end2 : : : " + end2);

		if (salary_list_cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getSalary_list_month_Search(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("salary_list_cnt", salary_list_cnt);
			model.addAttribute("currentPage", currentPage);

		}

		// 시작페이지
		// 1 = (1 / 3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);

		// 마지막페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		System.out.println("endPage : " + endPage);
		System.out.println("======================");

		model.addAttribute("salary_list_cnt", salary_list_cnt); // 글갯수
		model.addAttribute("number", number); // 출력용 글번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (salary_list_cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작페이지
			model.addAttribute("endPage", endPage); // 마지막페이지
			model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재페이지
			model.addAttribute("start", start); // 페이지 갯수
			model.addAttribute("end", end); // 현재페이지

		}
	}
	
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

	@Override
	public void salaryList(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.

		// 페이징 처리 (최신글 부터 5건씩 출력)
		int pageSize = 2; // 한페이지당 출력할 글 갯수
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

		
		
		// 5-1단계. 글 갯수 구하기
		cnt = dao.getSalaryCnt();
		System.out.println("cnt : " + cnt);

		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재 페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0); // 페이지 갯수 + 나머지 있으면 1

		// 현재 페이지 시작 글번호(페이지별)
		// 1 = (1-1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;

		// 현재 페이지 마지막 글번호 (페이지별)
		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1;
		System.out.println("start : " + start);
		System.out.println("end : " + end);

		// 출력용 글번호
		// 30 = 30 - (1 - 1) * 5;
		number = cnt - (currentPage - 1) * pageSize;
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		// 5-2단계. 게시글 목록 조회
		if (cnt > 0) {
			Map <String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			System.out.println("map : " + map);
			List<SalaryInputVO> mtos = dao.getSalaryList(map);
			System.out.println("mtos : " + mtos);
			model.addAttribute("mtos", mtos);
		}
		// 6단계. request나 session에 처리결과를 저장 (jsp에 전달)
		// 시작 페이지
		// 1 = (1/3) * 3 + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		System.out.println("startPage : " + startPage);
		// 마지막 페이지
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		int adminCnt = dao.getAdminCnt();
		model.addAttribute("adminCnt", adminCnt); // 직원수 
		
		System.out.println("endPage : " + endPage);
		System.out.println("====================");

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
	
	@Override
	public void salaryInput(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int payments_division = Integer.parseInt(req.getParameter("payments_division"));
		System.out.println("salary_input_num : " + salary_input_num);
		System.out.println("payments_division : " + payments_division);
		
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);
		map.put("payments_division", payments_division);
		
		//dao.getSelectList(map);
		//List<SalaryInputVO> mtos = dao.getSalaryList(map);
		
	}

	@Override
	public void course_list(HttpServletRequest req, Model model) {
		int course_Cnt = 0;
		
		course_Cnt = dao.getCourseCnt();
		
		System.out.println("course_Cnt : " + course_Cnt);
		
		List<CourseVO> dtos = dao.getCourseList();
		System.out.println("dtos" + dtos);
		model.addAttribute("dtos",dtos);
		model.addAttribute("course_Cnt",course_Cnt);
		
	}

}
