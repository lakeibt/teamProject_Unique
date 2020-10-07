package com.kosmo.uni.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kosmo.uni.persistence.ProfessorDAO;
import com.kosmo.uni.vo.CalendarVO;
import com.kosmo.uni.vo.CoursePlanVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.InfoVO;
import com.kosmo.uni.vo.MessageVO;

@Service
public class ProfessorServiceImpl implements ProfessorService{
	
	@Autowired
	ProfessorDAO proDAO;

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
			cnt = proDAO.getMessageCnt(id);
		} else {
			model.addAttribute("option", option);
			cnt = proDAO.getMessageCnt_send(id);
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
				dtos = (ArrayList<MessageVO>) proDAO.getMessageList(map);
			} else {
				dtos = (ArrayList<MessageVO>) proDAO.getMessageList_send(map);
			}
			
			model.addAttribute("dtos", dtos);
			model.addAttribute("testDate", dtos.get(0).getReg_date());
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
		MessageVO vo = proDAO.getMessage(num);
		
		if(vo.getReadchk() == 0) {
			proDAO.updateReadChk(num);
		}
		
		model.addAttribute("dto", vo);
	}

	@Override
	public void getProfessorProfile(HttpServletRequest req, Model model) {
		String id = (String)req.getSession().getAttribute("memId");
		Map<String, Object> proProfile = proDAO.getProfessorProfile(id);
		
		model.addAttribute("profile", proProfile);
	}

	@Override
	public void myPageModify(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String de_address = req.getParameter("de_address");
		
		HumanVO vo = new HumanVO();
		vo.setId(id);
		vo.setTel(tel);
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setDe_address(de_address);
		
		int updateCnt = proDAO.updateMyPage(vo);
		
		model.addAttribute("updateCnt", updateCnt);
	}

//	@Override
//	public void myPageModify(HttpServletRequest req, Model model) {
//		String tel = req.getParameter("tel");
//		String email = req.getParameter("email");
//		String address = req.getParameter("address");
//		
//		Map<String, Object> 
//	}
	
	public void messageSimple(HttpServletRequest req, Model model) {
		
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
		cnt = proDAO.getMessageCnt_notRead(id);
		
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
			dtos = (ArrayList<MessageVO>) proDAO.getMessageList_notRead(map);
			
			model.addAttribute("dtos", dtos);
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		endPage = startPage + pageBlock -1;
		if(endPage > pageCount) endPage = pageCount;
		
		req.getSession().setAttribute("nr_cnt", cnt);
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
	public int messageSend(HttpServletRequest req, Model model) {
		
		String title = req.getParameter("title");
		String receive_id = req.getParameter("receive_id");
		String receive_name = req.getParameter("receive_name");
		String content = req.getParameter("content");
		
		MessageVO vo = new MessageVO();
		
		vo.setTitle(title);
		
		int insertCnt = proDAO.insertMessage(vo);
		
		
		return insertCnt;
		
	}

	@Override
	public void infoList(HttpServletRequest req, Model model) {
		
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
		
		cnt = proDAO.getInfoCnt();
		
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
			ArrayList<InfoVO> dtos = null;
			dtos = (ArrayList<InfoVO>) proDAO.getInfoList(map);
			
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
	public void courseList(HttpServletRequest req, Model model) {
		
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
		
		String p_name = (String) req.getSession().getAttribute("name");
		cnt = proDAO.getCourseCnt(p_name);
		
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
			map.put("p_name", p_name);
			ArrayList<CourseVO> dtos = null;
			dtos = (ArrayList<CourseVO>) proDAO.getCourseList(map);
			
			model.addAttribute("c_dtos", dtos);
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		endPage = startPage + pageBlock -1;
		if(endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("c_cnt", cnt);			
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
	public void infoDetail(HttpServletRequest req, Model model) {
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		InfoVO vo = proDAO.getInfoDetail(num);
		
		model.addAttribute("vo",vo);
		
	}

	@Override
	public void coursePlanAdd(HttpServletRequest req, Model model) {
		
		String id = req.getParameter("id");
		String co_code = req.getParameter("co_code");
		
		String week_1 = req.getParameter("week_1");
		String week_2 = req.getParameter("week_2");
		String week_3 = req.getParameter("week_3");
		String week_4 = req.getParameter("week_4");
		String week_5 = req.getParameter("week_5");
		String week_6 = req.getParameter("week_6");
		String week_7 = req.getParameter("week_7");
		String week_8 = req.getParameter("week_8");
		String week_9 = req.getParameter("week_9");
		String week_10 = req.getParameter("week_10");
		String week_11 = req.getParameter("week_11");
		String week_12 = req.getParameter("week_12");
		
		float attend = Float.valueOf(req.getParameter("attend"))/10;
		float midterm = Float.valueOf(req.getParameter("midterm"))/10;
		float finals = Float.valueOf(req.getParameter("finals"))/10;
		float assign_report = Float.valueOf(req.getParameter("assign_report"))/10;
		float assign_team = Float.valueOf(req.getParameter("assign_team"))/10;
		
		String subject = req.getParameter("subject");
		
		CoursePlanVO vo = new CoursePlanVO();
		vo.setId(id);
		vo.setCo_code(co_code);
		vo.setWeek_1(week_1);
		vo.setWeek_2(week_2);
		vo.setWeek_3(week_3);
		vo.setWeek_4(week_4);
		vo.setWeek_5(week_5);
		vo.setWeek_6(week_6);
		vo.setWeek_7(week_7);
		vo.setWeek_8(week_8);
		vo.setWeek_9(week_9);
		vo.setWeek_10(week_10);
		vo.setWeek_11(week_11);
		vo.setWeek_12(week_12);
		vo.setSubject(subject);
		vo.setAttend(attend);
		vo.setMidterm(midterm);
		vo.setFinals(finals);
		vo.setAssign_report(assign_report);
		vo.setAssign_team(assign_team);
		
		int plan_chk = 1;
		
		int insertCnt = proDAO.insertSyllabus(vo);
		insertCnt = proDAO.insertGradePoint(vo);
		if(insertCnt == 1) {
			Map<String, Object> map = new HashMap<>();
			map.put("plan_chk", plan_chk);
			map.put("co_code", co_code);
			proDAO.updateCoursePlanChk(map);
		}
		
	}

	@Override
	public void coursPlan(HttpServletRequest req, Model model) {
		
		String co_code = req.getParameter("co_code");
		
		CoursePlanVO vo = proDAO.getCoursePlan(co_code);
		
		model.addAttribute("vo", vo);
		model.addAttribute("co_code", co_code);
	}

	@Override
	public void coursePlanModify(HttpServletRequest req, Model model) {
		String co_code = req.getParameter("co_code");
		
		String week_1 = req.getParameter("week_1");
		String week_2 = req.getParameter("week_2");
		String week_3 = req.getParameter("week_3");
		String week_4 = req.getParameter("week_4");
		String week_5 = req.getParameter("week_5");
		String week_6 = req.getParameter("week_6");
		String week_7 = req.getParameter("week_7");
		String week_8 = req.getParameter("week_8");
		String week_9 = req.getParameter("week_9");
		String week_10 = req.getParameter("week_10");
		String week_11 = req.getParameter("week_11");
		String week_12 = req.getParameter("week_12");
		
		float attend = Float.valueOf(req.getParameter("attend"))/10;
		float midterm = Float.valueOf(req.getParameter("midterm"))/10;
		float finals = Float.valueOf(req.getParameter("finals"))/10;
		float assign_report = Float.valueOf(req.getParameter("assign_report"))/10;
		float assign_team = Float.valueOf(req.getParameter("assign_team"))/10;
		String subject = req.getParameter("subject");
		
		CoursePlanVO vo = new CoursePlanVO();
		vo.setCo_code(co_code);
		vo.setWeek_1(week_1);
		vo.setWeek_2(week_2);
		vo.setWeek_3(week_3);
		vo.setWeek_4(week_4);
		vo.setWeek_5(week_5);
		vo.setWeek_6(week_6);
		vo.setWeek_7(week_7);
		vo.setWeek_8(week_8);
		vo.setWeek_9(week_9);
		vo.setWeek_10(week_10);
		vo.setWeek_11(week_11);
		vo.setWeek_12(week_12);
		vo.setSubject(subject);
		vo.setAttend(attend);
		vo.setMidterm(midterm);
		vo.setFinals(finals);
		vo.setAssign_report(assign_report);
		vo.setAssign_team(assign_team);
		
		int insertCnt = proDAO.updateSyllabus(vo);
		insertCnt = proDAO.updateGradePoint(vo);
		
		model.addAttribute("insertCnt", insertCnt);
		
	}

	@Override
	public void calendarList(HttpServletRequest req, Model model) {
 
		String id = (String)req.getSession().getAttribute("memId");
		System.out.println(id);
		
		List<CalendarVO> cal_dtos = proDAO.getCalendarList(id);
		System.out.println(cal_dtos);
		
		model.addAttribute("cal_dtos", cal_dtos);
		
	}

}
