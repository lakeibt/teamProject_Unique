package com.kosmo.uni.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.EduDAO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.StudentStudyListVO;
import com.kosmo.uni.vo.StudentVO;

@Service
public class EduServiceImpl implements EduService {

	@Autowired
	EduDAO eduDAO;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	// 학생, 교수, 관리자 등록
	@Override
	public void insertUser(HttpServletRequest req, Model model) {
		String userid = req.getParameter("userID");
		String passwd = req.getParameter("userPWD");
		String username = req.getParameter("userName");
		String authority = req.getParameter("authority");

		String enc_pwd = passwordEncoder.encode(passwd);

		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("passwd", enc_pwd);
		map.put("username", username);
		map.put("authority", authority);

		int insertCnt = eduDAO.insertUser(map);
		model.addAttribute("insertCnt", insertCnt);
	}

	// 학생 정보
	@Override
	public void studentinfo(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("세션 : " + (String) req.getSession().getAttribute("memId"));
		int check = eduDAO.studentIdCheck(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("strId", id);
		int selectCnt = 0;
		StudentVO vo = null;
		if (check == 1) {
			vo = eduDAO.getStudentInfo(id);
			selectCnt = 1;
		}
		model.addAttribute("vo", vo);
		model.addAttribute("selectCnt", selectCnt);
	}

	// 학생 정보 수정
	@Override
	public void studentModifyPro(HttpServletRequest req, Model model) {
		StudentVO vo = new StudentVO();
		System.out.println("세션 : " + (String) req.getSession().getAttribute("memId"));
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
		int updateCnt = eduDAO.updateStudentInfo(vo);
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
		cnt = eduDAO.getCourseCnt();
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
			List<Map<String, Object>> dtos = eduDAO.getCourseList(map);
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
	
	// 강의 계획서
	@Override
	public void course_syllabus(HttpServletRequest req, Model model) {
		String code = req.getParameter("code");
		System.out.println(code);
		
		Map<String, Object> syllabus_info = eduDAO.getCourseSyllabusInfo(code); // 강의계획서 정보(강의코드, 담당교수 등/학점 기준표)
		Map<String, Object> syllabus_list = eduDAO.getCourseSyllabusList(code); // 강의계획서 주차 리스트(1주차, 2주차, .., 12주차)

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
		cnt = eduDAO.getGradeCnt(id);
		System.out.println("cnt => " + cnt);
		int value = Integer.parseInt(req.getParameter("value"));
		System.out.println("value :" + value );
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
			map.put("value", value);
			// 5-2단계. 게시글 목록 조회
			List<Map<String, Object>> dtos = eduDAO.getGradeList(map);
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

	// 학생 강의 목록
	@Override
	public void studentList(HttpServletRequest req, Model model) {
		int cnt=0;
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("id :" + id);
		cnt = eduDAO.getStudyCnt(id);
		System.out.println("cnt => " + cnt);
		List<Map<String, Object>> dtos = eduDAO.getStudyList(id);
		model.addAttribute("dtos", dtos);
		model.addAttribute("cnt", cnt);
	}
	
	// 학생 강의 시간표
	@Override
	public void studentTimeTable(HttpServletRequest req, Model model) {
		int cnt=0;
		String id = (String) req.getSession().getAttribute("memId");
		System.out.println("id :" + id);
		cnt = eduDAO.getStudyCnt(id);
		System.out.println("cnt => " + cnt);
		List<Map<String, Object>> dtos = eduDAO.getTimeTable(id);
		model.addAttribute("dto", dtos);
		model.addAttribute("cnt", cnt);
	}
}
