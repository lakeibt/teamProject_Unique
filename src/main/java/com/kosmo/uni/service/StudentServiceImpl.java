package com.kosmo.uni.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.StudentDAO;
import com.kosmo.uni.vo.MessageVO;
import com.kosmo.uni.vo.StudentVO;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	StudentDAO stuDAO;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 학생 정보
	@Override
	public void studentinfo(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("세션 : " + (String) req.getSession().getAttribute("memId"));
		// users 아이디 값과 student 아이디 값이 일치 하는지 확인한다.
		int check = stuDAO.studentIdCheck(id);
		//
		int selectCnt = 0;
		StudentVO vo = null;
		if (check == 1) {
			vo = stuDAO.getStudentInfo(id);
			selectCnt = 1;
		}
		model.addAttribute("vo", vo);
		model.addAttribute("selectCnt", selectCnt);
	}

	@Override
	public void studentModifyPro(HttpServletRequest req, Model model) {
		StudentVO vo = new StudentVO();
		vo.setId((String) req.getSession().getAttribute("memId"));
		String tel = req.getParameter("student_tel");
		vo.setTel(tel);
		// email
		String email = req.getParameter("student_email");
		String address = req.getParameter("address");
		String De_address = req.getParameter("de_address");
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setDe_address(De_address);
		int updateCnt = stuDAO.updateStudentInfo(vo);
		// request나 ssesion으로 처리 결과를 저장
		model.addAttribute("updateCnt", updateCnt);
		System.out.println("updateCnt: " + updateCnt);
	}

	// 강의 목록
	@Override
	public void courseList(HttpServletRequest req, Model model) {
		int pageSize = 10;   // 한 페이지당 출력할 글 갯수
		int pageBlock = 3;  // 한 블럭당 페이지 갯수
		
		int cnt = 0;       // 글 갯수
		int start = 0;     // 현재 페이지 시작 글번호
		int end = 0;       // 현재 페이지 마지막 글번호
		int number=0;      // 출력용 글번호
		String pageNum=""; // 페이지 번호
		int currentPage = 0;//현재 페이지
		int pageCount =0;  // 페이지 갯수
		int startPage= 0;  // 시작 페이지
		int endPage =0;    // 마지막  페이지
		
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("id :" + id );
		cnt = stuDAO.getCourseCnt();
		System.out.println("cnt => " + cnt);
		pageNum=req.getParameter("pageNum");
		
		if(pageNum == null) pageNum ="1";  // 첫페이지를 1페이지로 지정
			currentPage = Integer.parseInt(pageNum);  // 현재페이지 : 1
		
		pageCount = (cnt/pageSize) + (cnt%pageSize > 0 ? 1 : 0); // 페이지 갯수 + 나머지 있으면 1 없으면 0
		
		start = (currentPage - 1) * pageSize +1;
		end = start +pageSize -1;
		number = cnt -(currentPage - 1) *pageSize;
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			map.put("id",id);
			// 5-2단계. 게시글 목록 조회
			List<Map<String, Object>> dtos = stuDAO.getCourseList(map);
			model.addAttribute("dtos", dtos);
			// (1 / 3) *3 + 1;
			startPage = (currentPage / pageBlock) * pageBlock + 1;
			if (currentPage % pageBlock == 0)
				startPage -= pageBlock;
			// 마지막페이지
			endPage = startPage + pageBlock - 1;
			if (endPage > pageCount)
				endPage = pageCount;
			model.addAttribute("cnt", cnt); // 글갯수
			model.addAttribute("number", number); // 출력용 글번호
			model.addAttribute("pageNum", pageNum); // 페이지 번호
			if (cnt > 0) {
				model.addAttribute("startPage", startPage); // 시작페이지
				model.addAttribute("endPage", endPage); // 마지막페이지
				model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지 갯수
				model.addAttribute("pageCount", pageCount); // 페이지 갯수
				model.addAttribute("currentPage", currentPage);// 현재페이지
			}
		}
	}
	
	@Override
	public void course_syllabus(HttpServletRequest req, Model model) {
		String code = req.getParameter("code");
		System.out.println(code);
		
		Map<String, Object> syllabus_info = stuDAO.getCourseSyllabusInfo(code); // 강의계획서 정보(강의코드, 담당교수 등/학점 기준표)
		Map<String, Object> syllabus_list = stuDAO.getCourseSyllabusList(code); // 강의계획서 주차 리스트(1주차, 2주차, .., 12주차)
		
		model.addAttribute("info", syllabus_info);
		model.addAttribute("list", syllabus_list);
	}

	// 학생 성적 목록
	@Override
	public void studentGradeList(HttpServletRequest req, Model model) {
		int pageSize = 10;   // 한 페이지당 출력할 글 갯수
		int pageBlock = 3;  // 한 블럭당 페이지 갯수
		
		int cnt = 0;       // 글 갯수
		int start = 0;     // 현재 페이지 시작 글번호
		int end = 0;       // 현재 페이지 마지막 글번호
		int number=0;      // 출력용 글번호
		String pageNum=""; // 페이지 번호
		int currentPage = 0;//현재 페이지
		int pageCount =0;  // 페이지 갯수
		int startPage= 0;  // 시작 페이지
		int endPage =0;    // 마지막  페이지
		
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("id :" + id);
		cnt = stuDAO.getGradeCnt(id);
		System.out.println("cnt => " + cnt);
		int year = Integer.parseInt(req.getParameter("year"));
		int semester = Integer.parseInt(req.getParameter("semester"));
		pageNum=req.getParameter("pageNum");
		
		if(pageNum == null) pageNum ="1";  // 첫페이지를 1페이지로 지정
		currentPage = Integer.parseInt(pageNum);  // 현재페이지 : 1
		pageCount = (cnt/pageSize) + (cnt%pageSize > 0 ? 1 : 0); // 페이지 갯수 + 나머지 있으면 1 없으면 0
		start = (currentPage - 1) * pageSize +1;
		end = start +pageSize -1;
		number = cnt -(currentPage - 1) *pageSize;
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			map.put("id", id);
			map.put("year", year);
			map.put("semester", semester);
			// 5-2단계. 게시글 목록 조회
			List<Map<String, Object>> dtos = stuDAO.getGradeList(map);
			model.addAttribute("score", dtos);
			// (1 / 3) *3 + 1;
			startPage = (currentPage / pageBlock) * pageBlock + 1;
			if (currentPage % pageBlock == 0)
				startPage -= pageBlock;
			// 마지막페이지
			endPage = startPage + pageBlock - 1;
			if (endPage > pageCount)
				endPage = pageCount;
			model.addAttribute("cnt", cnt); // 글갯수
			model.addAttribute("number", number); // 출력용 글번호
			model.addAttribute("pageNum", pageNum); // 페이지 번호
			if (cnt > 0) {
				model.addAttribute("startPage", startPage); // 시작페이지
				model.addAttribute("endPage", endPage); // 마지막페이지
				model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지 갯수
				model.addAttribute("pageCount", pageCount); // 페이지 갯수
				model.addAttribute("currentPage", currentPage);// 현재페이지
			}
		}
	}

	// 학생 강의 목록
	@Override
	public void studentList(HttpServletRequest req, Model model) {
		int cnt=0;
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("id :" + id);
		int year = Integer.parseInt(req.getParameter("year"));
		int semester = Integer.parseInt(req.getParameter("semester"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("year", year);
		map.put("semester", semester);
		
		cnt = stuDAO.getStudyCnt(id);
		System.out.println("cnt => " + cnt);
		List<Map<String, Object>> dtos = stuDAO.getStudyList(map);
		model.addAttribute("study", dtos);
		model.addAttribute("cnt", cnt);
	}
	
	// 학생 강의 시간표
	@Override
	public void studentTimeTable(HttpServletRequest req, Model model) {
		int cnt=0;
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("id :" + id);
		int year = Integer.parseInt(req.getParameter("year"));
		int semester = Integer.parseInt(req.getParameter("semester"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("year", year);
		map.put("semester", semester);
		
		List<Map<String, Object>> dtos = stuDAO.getTimeTable(map);
		model.addAttribute("dtos", dtos);
		model.addAttribute("cnt", cnt);
	}

	@Override
	public void studentSimpleInfo(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("세션 : " + (String) req.getSession().getAttribute("memId"));
		// users 아이디 값과 student 아이디 값이 일치 하는지 확인한다.
		int check = stuDAO.studentIdCheck(id);
		//
		int selectCnt = 0;
		Map<String, Object> vo = null;
		if (check == 1) {
			vo = stuDAO.getStudentSimpleInfo(id);
			selectCnt = 1;
		}
		model.addAttribute("vo", vo);
		model.addAttribute("selectCnt", selectCnt);
	}
	
	@Override
	public void messageList(HttpServletRequest req, Model model) {
		int pageSize = 5;
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
		
		String id = (String) req.getSession().getAttribute("memId");
		String option = req.getParameter("option") == null ? "" : req.getParameter("option");
		System.out.println(option);
		if(option.equals("receive") || option == "") {
			model.addAttribute("option", "receive");
			cnt = stuDAO.getMessageCnt(id);
		} else {
			model.addAttribute("option", option);
			cnt = stuDAO.getMessageCnt_send(id);
		}
		
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
			map.put("id", id);
			ArrayList<MessageVO> dtos = null;
			if(option.equals("receive") || option == null) {
				dtos = (ArrayList<MessageVO>) stuDAO.getMessageList(map);
			} else {
				dtos = (ArrayList<MessageVO>) stuDAO.getMessageList_send(map);
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

	@Override
	public void message(HttpServletRequest req, Model model) {
		int num = Integer.parseInt(req.getParameter("num"));
		System.out.println("num =>" + num);
		MessageVO vo = stuDAO.getMessage(num);
		
		model.addAttribute("dto", vo);
	}
}
