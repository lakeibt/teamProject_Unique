package com.kosmo.uni.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.uni.persistence.ProfessorDAO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.GradeVO;
import com.kosmo.uni.vo.CoursePlanVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.InfoVO;
import com.kosmo.uni.vo.LectureVO;
import com.kosmo.uni.vo.MessageVO;

@Service
public class ProfessorServiceImpl implements ProfessorService {

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
		String option = req.getParameter("option");
		if(option == null || option.equals("undefined") || option.equals("receive")) option = "receive";
		else option = "send";
		if(option.equals("receive") || option == "") {
			model.addAttribute("option", "receive");
			cnt = proDAO.getMessageCnt(id);
		} else {
			model.addAttribute("option", option);
			cnt = proDAO.getMessageCnt_send(id);
		}

		pageNum = req.getParameter("pageNum");
		if(pageNum == null || pageNum.equals("undefined")) pageNum = "1";
		
		currentPage = Integer.parseInt(pageNum);
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);

		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;

		number = cnt - (currentPage - 1) * pageSize;

		if (cnt > 0) {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			map.put("id", id);
			ArrayList<MessageVO> dtos = null;
			if(option.equals("receive") || option.equals("undefined") || option == null) {
				dtos = (ArrayList<MessageVO>) proDAO.getMessageList(map);
			} else {
				dtos = (ArrayList<MessageVO>) proDAO.getMessageList_send(map);
			}

			model.addAttribute("dtos", dtos);
			model.addAttribute("testDate", dtos.get(0).getReg_date());
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		model.addAttribute("cnt", cnt);
		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum);

		if (cnt > 0) {
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

		if (vo.getReadchk() == 0) {
			proDAO.updateReadChk(num);
		}

		model.addAttribute("dto", vo);
	}

	@Override
	public void getProfessorProfile(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
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
		if (pageNum == null) {
			pageNum = "1";
		}

		currentPage = Integer.parseInt(pageNum);
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);

		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;

		number = cnt - (currentPage - 1) * pageSize;

		if (cnt > 0) {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			map.put("id", id);
			ArrayList<MessageVO> dtos = null;
			dtos = (ArrayList<MessageVO>) proDAO.getMessageList_notRead(map);

			model.addAttribute("dtos", dtos);
		}

		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock;

		endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		req.getSession().setAttribute("nr_cnt", cnt);
		model.addAttribute("cnt", cnt);
		model.addAttribute("number", number);
		model.addAttribute("pageNum", pageNum);

		if (cnt > 0) {
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
		String receiver_id = req.getParameter("receiver");
		String content = req.getParameter("content");
		String authen = "";
		if(req.getParameter("authen").equals("stu")) authen = "S_STUDENT";
		else authen = "P_PROFESSOR";
		
		Map<String, Object> map = new HashMap<>();
		map.put("id", receiver_id);
		map.put("authen", authen);
		String receiver_name = proDAO.getReceiverName(map);
		
		map.put("id", req.getSession().getAttribute("memId"));
		map.put("authen", "P_PROFESSOR");
		String sender_name = proDAO.getReceiverName(map);
		
		Map<String, Object> msg = new HashMap<>();
		msg.put("title", title);
		msg.put("content", content);
		msg.put("receiver_id", receiver_id);
		msg.put("receiver_name", receiver_name);
		msg.put("sender_id", req.getSession().getAttribute("memId"));
		msg.put("sender_name", sender_name);
		
		int insertCnt = proDAO.insertMessage(msg);
		return insertCnt;
	}
	@Override
	public int messageReply(HttpServletRequest req, Model model) {
		String title = req.getParameter("title");
		String receiver_id = req.getParameter("receiver_id");
		String receiver_name = req.getParameter("receiver_name");
		String content = req.getParameter("content");
		
		Map<String, Object> map = new HashMap<>();
		map.put("id", req.getSession().getAttribute("memId"));
		map.put("authen", "P_PROFESSOR");
		String sender_name = proDAO.getReceiverName(map);
		
		Map<String, Object> msg = new HashMap<>();
		msg.put("title", title);
		msg.put("content", content);
		msg.put("receiver_id", receiver_id);
		msg.put("receiver_name", receiver_name);
		msg.put("sender_id", req.getSession().getAttribute("memId"));
		msg.put("sender_name", sender_name);
		
		int insertCnt = proDAO.insertMessage(msg);
		return insertCnt;
	}
	// 보내기 폼 수신자 설정
	@Override
	public void addresseeList(HttpServletRequest req, Model model) {
		String authen = "";
		if(req.getParameter("authen") == null) authen = "P_PROFESSOR";
		else if(req.getParameter("authen") != null && req.getParameter("authen").equals("pro")) {
			authen = "P_PROFESSOR";
		} else authen = "S_STUDENT";
		
		List<Map<String, Object>> list = null;
		list = proDAO.authenList(authen);
		
		model.addAttribute("authenList", list);
	}
	
	@Override
	public void courseData(HttpServletRequest req, Model model) {
	
		String id = (String) req.getSession().getAttribute("memId");
		int cnt = proDAO.getCourseProCnt(id);
		System.out.println("1_cnt : " + cnt);
		System.out.println("1_id : " + id);
	
		if (cnt > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			System.out.println("2_cnt : " + cnt);
			System.out.println("2_id : " + id);
			
			map.put("id", id);
			
			List<CourseVO> dtos = proDAO.getCourseProList(map);
			System.out.println("3_cnt : " + cnt);
			System.out.println("3_id : " + id);
	
			model.addAttribute("cnt", cnt);
			model.addAttribute("dtos", dtos);
		}
		
		model.addAttribute("cnt", cnt);

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
		
		int pageSize = 10;
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
	public void gradeList(HttpServletRequest req, Model model) {
		
		String co_code = req.getParameter("co_code");
		
		CoursePlanVO vo = proDAO.getCoursePlan(co_code);
		List<GradeVO> dtos = proDAO.getGradeList(co_code);
		
		model.addAttribute("vo",vo);
		model.addAttribute("dtos", dtos);
		model.addAttribute("co_code", co_code);
		
	}

	@Override
	public int lectureDetail(HttpServletRequest req, Model model) {
		
		String co_code = req.getParameter("co_code");
		int le_week = Integer.parseInt(req.getParameter("le_week"));
		
		Map<String, Object> map = new HashMap<>();
		map.put("co_code", co_code);
		map.put("le_week", le_week);
		
		int cnt = proDAO.lectureChk(map);
		
		if(cnt != 0) {
			LectureVO vo = proDAO.getLecture(map);
			model.addAttribute("vo", vo);
		}

		model.addAttribute("co_code", co_code);
		model.addAttribute("le_week", le_week);
		
		return cnt;
		
	}

	@Override
	public void lectureAdd(MultipartHttpServletRequest req, Model model) {
		
		int insertCnt = 0;
		
		MultipartFile file= req.getFile("le_file");
		MultipartFile file_img= req.getFile("le_file_img");
		
		String saveDir_file = req.getRealPath("/resources/video/");
		String saveDir_file_img = req.getRealPath("/resources/img/lecture/");
		
		String realDir_file = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\video\\";
		String realDir_file_img = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\img\\lecture\\";
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		FileInputStream fis_img = null;
		FileOutputStream fos_img = null;
		
		try {
			file.transferTo(new File(saveDir_file + file.getOriginalFilename()));
			fis = new FileInputStream(saveDir_file + file.getOriginalFilename());
			fos = new FileOutputStream(realDir_file + file.getOriginalFilename());
			
			file_img.transferTo(new File(saveDir_file_img + file.getOriginalFilename()));
			fis_img = new FileInputStream(saveDir_file_img + file_img.getOriginalFilename());
			fos_img = new FileOutputStream(realDir_file_img + file_img.getOriginalFilename());
		
			int data = 0;
			
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			data = 0;
			while((data = fis_img.read()) != -1) {
				fos_img.write(data);
			}
			fis_img.close();
			fos_img.close();
			
			String le_file = file.getOriginalFilename();
			String le_file_img = file_img.getOriginalFilename();
			String co_code = req.getParameter("co_code");
			String le_title = req.getParameter("le_title");
			String le_content = req.getParameter("le_content");
			String le_writer = (String) req.getSession().getAttribute("name");
			int le_week = Integer.parseInt(req.getParameter("le_week"));
			System.out.println(le_file);
			System.out.println(le_file_img);
			System.out.println(co_code);
			System.out.println(le_title);
			System.out.println(le_content);
			System.out.println(le_writer);
			System.out.println(le_week);
			LectureVO vo = new LectureVO();
			
			vo.setCo_code(co_code);
			vo.setLe_content(le_content);
			vo.setLe_file(le_file);
			vo.setLe_file_img(le_file_img);
			vo.setLe_title(le_title);
			vo.setLe_week(le_week);
			vo.setLe_writer(le_writer);
			
			
			insertCnt = proDAO.insertLecture(vo);
			
			model.addAttribute("insertCnt", insertCnt);
			model.addAttribute("co_code", co_code);
		
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void lectureModify(MultipartHttpServletRequest req, Model model) {
		
		int insertCnt = 0;
		
		MultipartFile file= req.getFile("le_file");
		MultipartFile file_img= req.getFile("le_file_img");
		
		String saveDir_file = req.getRealPath("/resources/video/");
		String saveDir_file_img = req.getRealPath("/resources/img/lecture/");
		
		String realDir_file = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\video\\";
		String realDir_file_img = "D:\\DEV\\git\\team\\teamProject_Unique\\src\\main\\webapp\\resources\\img\\lecture\\";
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		FileInputStream fis_img = null;
		FileOutputStream fos_img = null;
		
		try {
			file.transferTo(new File(saveDir_file + file.getOriginalFilename()));
			fis = new FileInputStream(saveDir_file + file.getOriginalFilename());
			fos = new FileOutputStream(realDir_file + file.getOriginalFilename());
			
			file_img.transferTo(new File(saveDir_file_img + file.getOriginalFilename()));
			fis_img = new FileInputStream(saveDir_file_img + file_img.getOriginalFilename());
			fos_img = new FileOutputStream(realDir_file_img + file_img.getOriginalFilename());
		
			int data = 0;
			
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			data = 0;
			while((data = fis_img.read()) != -1) {
				fos_img.write(data);
			}
			fis_img.close();
			fos_img.close();
			
			int le_num = Integer.parseInt(req.getParameter("le_num"));
			String le_file = file.getOriginalFilename();
			String le_file_img = file_img.getOriginalFilename();
			String le_title = req.getParameter("le_title");
			String le_content = req.getParameter("le_content");
			System.out.println(le_file);
			System.out.println(le_file_img);
			System.out.println(le_title);
			System.out.println(le_content);
			LectureVO vo = new LectureVO();
			
			vo.setLe_content(le_content);
			vo.setLe_file(le_file);
			vo.setLe_file_img(le_file_img);
			vo.setLe_title(le_title);
			vo.setLe_num(le_num);
			
			insertCnt = proDAO.updateLecture(vo);
			
			String co_code = req.getParameter("co_code");
			
			model.addAttribute("insertCnt", insertCnt);
			model.addAttribute("co_code", co_code);
		
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void lectureDelete(MultipartHttpServletRequest req, Model model) {


		int le_num = Integer.parseInt(req.getParameter("le_num"));
		String co_code = req.getParameter("co_code");
		
		int deleteCnt = proDAO.deleteLecture(le_num);
		
		model.addAttribute("co_code", co_code);
		model.addAttribute("deleteCnt", deleteCnt);
		
	}

	@Override
	public void gradeAdd(HttpServletRequest req, Model model) {
		
		String co_code = req.getParameter("co_code");
		System.out.println(co_code);
		int tr_cnt = Integer.parseInt(req.getParameter("tr_cnt"));
		
		for(int i = 1; i <= tr_cnt; i++) {
			GradeVO vo = new GradeVO();
			
			String name = req.getParameter("name"+ i);
			String id = req.getParameter("id"+ i);
			float attend = Float.parseFloat(req.getParameter("attend"+ i));
			float midterm = Float.parseFloat(req.getParameter("midterm"+ i));
			float finals = Float.parseFloat(req.getParameter("finals"+ i));
			float assign_report = Float.parseFloat(req.getParameter("assign_report"+ i));
			float assign_team = Float.parseFloat(req.getParameter("assign_team"+ i));
			String grades_code = req.getParameter("grades_code"+ i);
			
			vo.setName(name);
			vo.setId(id);
			vo.setAttend(attend);
			vo.setMidterm(midterm);
			vo.setFinals(finals);
			vo.setAssign_report(assign_report);
			vo.setAssign_team(assign_team);
			vo.setGrades_code(grades_code);
			vo.setCo_code(co_code);
			
			proDAO.insertGradeScore(vo);
			
		}
		
		int grade_chk = 1;
		Map<String, Object> map = new HashMap<>();
		map.put("grade_chk", grade_chk);
		map.put("co_code", co_code);
		
		proDAO.updateGradeChk(map);
		
		model.addAttribute("co_code", co_code);
		
	}

	@Override
	public void gradeList_modify(HttpServletRequest req, Model model) {

		String co_code = req.getParameter("co_code");
		
		CoursePlanVO vo = proDAO.getCoursePlan(co_code);
		List<GradeVO> dtos = proDAO.getGradeList_modify(co_code);
		
		model.addAttribute("vo", vo);
		model.addAttribute("dtos", dtos);
		model.addAttribute("co_code", co_code);
		
	}

	@Override
	public void gradeModify(HttpServletRequest req, Model model) {
		
		String co_code = req.getParameter("co_code");
		int tr_cnt = Integer.parseInt(req.getParameter("tr_cnt"));
		
		for(int i = 1; i <= tr_cnt; i++) {
			GradeVO vo = new GradeVO();
			
			String name = req.getParameter("name"+ i);
			String id = req.getParameter("id"+ i);
			System.out.println(id);
			float attend = Float.parseFloat(req.getParameter("attend"+ i));
			float midterm = Float.parseFloat(req.getParameter("midterm"+ i));
			float finals = Float.parseFloat(req.getParameter("finals"+ i));
			float assign_report = Float.parseFloat(req.getParameter("assign_report"+ i));
			float assign_team = Float.parseFloat(req.getParameter("assign_team"+ i));
			String grades_code = req.getParameter("grades_code"+ i);
			
			vo.setName(name);
			vo.setId(id);
			vo.setAttend(attend);
			vo.setMidterm(midterm);
			vo.setFinals(finals);
			vo.setAssign_report(assign_report);
			vo.setAssign_team(assign_team);
			vo.setGrades_code(grades_code);
			vo.setCo_code(co_code);
			
			int chkCnt = proDAO.chkGrade(vo);
			
			if(chkCnt == 0) {
				proDAO.insertGradeScore(vo);
			} else {
				proDAO.updateGradeScore(vo);
			}
			
			
		}
		
		model.addAttribute("co_code", co_code);
		
	}

}
