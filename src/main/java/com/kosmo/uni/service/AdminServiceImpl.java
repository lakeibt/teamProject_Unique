package com.kosmo.uni.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	
	@Override
	public void infoPro(HttpServletRequest req, Model model) {
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("title", title);
		map.put("content", content);
		
		System.out.println(title);
		System.out.println(content);
		
		int insertCnt = dao.insertInfo(map);
		model.addAttribute("insertCnt", insertCnt);
	}
	
	@Override
	public void content(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("num"));
		
		// 조회수 증가
		dao.addCnt(num);
		
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

		// 글갯수 구하기
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

		// 시작페이지
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0) startPage -= pageBlock;

		// 마지막페이지
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
		System.out.println(req.getParameter("st"));
		System.out.println(req.getParameter("et"));

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

		if (search_Cnt > 0) {
			map.put("st", st);
			map.put("et", et);
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.getAttendance_List_Search(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("search_Cnt", search_Cnt);

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
	public void salary_list_humanMonth(HttpServletRequest req, Model model) {
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

			List<AdminVO> dtos = dao.getSalary_list_humanMonth(map);
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
		// 이름 검색
		map.put("name", name);

		humanSearch_Cnt = dao.humanSearch_Cnt(map);
		System.out.println("humanSearch_Cnt : " + humanSearch_Cnt);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (humanSearch_Cnt / pageSize) + (humanSearch_Cnt % pageSize > 0 ? 1 : 0);

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
		number = humanSearch_Cnt - (currentPage - 1) * pageSize;

		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		String start2 = req.getParameter("start1");
		String end2 = req.getParameter("end1");

		System.out.println("start2 : : : " + start2);
		System.out.println("end2 : : : " + end2);

		if (humanSearch_Cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.humanSearch_List(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("humanSearch_Cnt", humanSearch_Cnt);
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

	@Override
	public void month_Search(HttpServletRequest req, Model model) {
		// 페이징
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
		
		// 글갯수 구하기
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 날짜 검색
		map.put("sm", sm);
		map.put("em", em);

		monthSearch_Cnt = dao.monthSearch_Cnt(map);

		System.out.println("monthSearch_Cnt : " + monthSearch_Cnt);

		// 페이지 숫자
		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫페이지를 1페이지로 지정
		}

		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum); // 현재페이지 : 1
		System.out.println("currentPage : " + currentPage);

		// 페이지 갯수 6 = (30 / 5) + (0)
		pageCount = (monthSearch_Cnt / pageSize) + (monthSearch_Cnt % pageSize > 0 ? 1 : 0);

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
		number = monthSearch_Cnt - (currentPage - 1) * pageSize;

		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);

		if (monthSearch_Cnt > 0) {
			map.put("start", start);
			map.put("end", end);

			List<AdminVO> dtos = dao.monthSearch_List(map);
			model.addAttribute("dtos", dtos);
			model.addAttribute("monthSearch_Cnt", monthSearch_Cnt);
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
		System.out.println("salary_input_num : " + salary_input_num);
		
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);

		List<SalaryVO> stos = dao.getSelectList(map);
		System.out.println("stos.size() : " +stos.size());
		
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
				System.out.println("cost : " +sal);

			} else {
				int cost0 = sal.getCar();
				vo = dao.getSelectCar(cost0);
				sal.setCost(vo.getCost());
				sal.setMeal(vo.getMeal());
				sal.setContract_vehicle(vo.getContract_vehicle());
			}
		}

		System.out.println("stos : " + stos);
		model.addAttribute("stos", stos);
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
	
	@Override
	public void salaryCnt(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int payments_division = Integer.parseInt(req.getParameter("payments_division"));
		System.out.println("salary_input_num : " + salary_input_num);
		System.out.println("payments_division : " +payments_division);
		
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);
		map.put("payments_division", payments_division);
		
		int cnt = dao.getDivisionCnt(map);
		
		Map <String, Object> map1 = new HashMap<>();
		map1.put("salary_input_num", salary_input_num);
		map1.put("division_cnt", cnt);
		int i = dao.updateDivCnt(map1);
		System.out.println("i : " + i);
		model.addAttribute("division_cnt",cnt);
	}
	
	@Override
	public void salaryModify(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		System.out.println("salary_input_num : " + salary_input_num);
		
		SalaryInputVO vo = dao.getSalaryArticle(salary_input_num);
		
		model.addAttribute("dto", vo);
		System.out.println("vo : " + vo);
	}
	
	@Override
	public void salaryModifyPro(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		Map <String, Object> map = new HashMap<>();
		map.put("salary_input_num", salary_input_num);
		map.put("salary_division", Integer.parseInt(req.getParameter("salary_division")));
		map.put("payments_division", Integer.parseInt(req.getParameter("payments_division")));
		map.put("salary_name", req.getParameter("salary_name"));
		map.put("salary_inday", req.getParameter("salary_inday"));
		System.out.println("salary_input_num : "+salary_input_num);
		System.out.println(Integer.parseInt(req.getParameter("salary_division")));
		System.out.println(Integer.parseInt(req.getParameter("payments_division")));
		System.out.println(req.getParameter("salary_name"));
		System.out.println(req.getParameter("salary_inday"));
		
		int updateCnt = dao.UpdateSalInput(map);
		System.out.println("updateCnt : "+updateCnt);
		model.addAttribute("updateCnt", updateCnt);
	}
	
	@Override
	public void salary_delete(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int deleteCnt = dao.deleteSalary(salary_input_num);
		System.out.println("deleteCnt : " +deleteCnt);
		model.addAttribute("deleteCnt", deleteCnt);
	}
	
	@Override
	public void salarytotal(HttpServletRequest req, Model model) {
		int salary_input_num = Integer.parseInt(req.getParameter("salary_input_num"));
		int salary = dao.selectSalSum(salary_input_num);
		System.out.println("salary : " + salary);
		model.addAttribute("salary", salary);
		SalaryVO vo = dao.getMealCar(salary_input_num);
		model.addAttribute("vo", vo);
		System.out.println("vo : " + vo);
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
		System.out.println();
		
		int insert_Cnt = dao.classInsert(vo);
		System.out.println("insert cnt :"+insert_Cnt);
		
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
		System.out.println();
		
		int update_Cnt = dao.classmodClear(vo);
		System.out.println("update_Cnt :"+update_Cnt);
		
		model.addAttribute("cnt", update_Cnt);
		
	}

	@Override
	public void parkingList(HttpServletRequest req, Model model) {
		int parkCnt = 0;

			parkCnt = dao.getParkingCnt();
			System.out.println("parkCntSVS : " + parkCnt);
			List<ParkVO> dtos = dao.getParkingList();
			System.out.println("dtosSVS" + dtos);
			model.addAttribute("dtos",dtos);
			model.addAttribute("parkCnt",parkCnt);
	}

	@Override
	public void parkSearchList(HttpServletRequest req, Model model) {
		int parkCnt = 0;
		
		String param = req.getParameter("param");
		String text = req.getParameter("intext");
		System.out.println("param 값 : "+param);
		System.out.println("text 값 : "+text);
		if(param.equals("carnum")) {
			parkCnt = dao.getParkingCnt();
			System.out.println("parkCntSVS : " + parkCnt);
			List<ParkVO> dtos = dao.getCarNumList(text);
			System.out.println("dtosSVS" + dtos);
			model.addAttribute("dtos",dtos);
			model.addAttribute("parkCnt",parkCnt);
		} else {
			parkCnt = dao.getParkingCnt();
			System.out.println("parkCntSVS : " + parkCnt);
			List<ParkVO> dtos = dao.getSearchList(text);
			System.out.println("dtosSVS" + dtos);
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



}
