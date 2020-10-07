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
import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.CourseVO;
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
		String option = req.getParameter("option") == null ? "" : req.getParameter("option");
		System.out.println(option);
		if (option.equals("receive") || option == "") {
			model.addAttribute("option", "receive");
			cnt = proDAO.getMessageCnt(id);
		} else {
			model.addAttribute("option", option);
			cnt = proDAO.getMessageCnt_send(id);
		}

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
			if (option.equals("receive") || option == null) {
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
		// TODO Auto-generated method stub

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
		String receive_id = req.getParameter("receive_id");
		String receive_name = req.getParameter("receive_name");
		String content = req.getParameter("content");

		MessageVO vo = new MessageVO();

		vo.setTitle(title);

		int insertCnt = proDAO.insertMessage(vo);

		return insertCnt;

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

}
