package com.kosmo.uni.service;

import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.api.core.ApiFuture;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.WriteResult;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;
import com.kosmo.uni.persistence.StudentDAO;
import com.kosmo.uni.vo.ConsultVO;
import com.kosmo.uni.vo.MessageVO;
import com.kosmo.uni.vo.StudentVO;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	StudentDAO stuDAO;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	public static final String COLLECTION_NAME = "teamUnique_Spring";
	
	// 학생 정보
	@Override
	public void studentinfo(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		
		int check = stuDAO.studentIdCheck(id); // users 아이디 값과 student 아이디 값이 일치 하는지 확인한다.
		
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
		String email = req.getParameter("student_email");
		String address = req.getParameter("address");
		String De_address = req.getParameter("de_address");
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setDe_address(De_address);
		int updateCnt = stuDAO.updateStudentInfo(vo);
		
		model.addAttribute("updateCnt", updateCnt);
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
		cnt = stuDAO.getCourseCnt();
		pageNum=req.getParameter("pageNum");
		
		if(pageNum == null) pageNum ="1";  
		
		currentPage = Integer.parseInt(pageNum);
		pageCount = (cnt/pageSize) + (cnt%pageSize > 0 ? 1 : 0); // 페이지 갯수 + 나머지 있으면 1 없으면 0
		start = (currentPage - 1) * pageSize +1;
		end = start +pageSize -1;
		number = cnt -(currentPage - 1) *pageSize;
		
		if(cnt > 0) {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			map.put("id",id);
			
			List<Map<String, Object>> dtos = stuDAO.getCourseList(map);
			model.addAttribute("dtos", dtos);

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
				model.addAttribute("pageBlock", pageBlock); // 한블럭당 페이지 갯수
				model.addAttribute("pageCount", pageCount); // 페이지 갯수
				model.addAttribute("currentPage", currentPage);// 현재페이지
			}
		}
	}
	
	@Override
	public void addMyCourse(HttpServletRequest req, Model model) {
		String[] fullDay = {"월", "화", "수", "목", "금"};
		int[] fullTime = {1, 2, 3, 4, 5, 6, 7, 8, 9};
		
		String id = (String) req.getSession().getAttribute("memId");
		String code = req.getParameter("code");
		String day = req.getParameter("day");
		int time = Integer.parseInt(req.getParameter("time"));
		int grade = Integer.parseInt(req.getParameter("grade"));
		
		// 학생 강의 목록 - timetable에 학생이 있는지부터 select ==> timetable 형태로 값을 insert 해줘야 함
		int cnt = stuDAO.selectTimetable(id);
		
		// 없으면 timetable 형태로 값 insert 먼저 >> 그 다음 update
		if(cnt == 0) {
			for(int i = 0; i < 5; i++) {
				for(int j = 0; j < 9; j++) {
					Map<String, Object> map = new HashMap<>();
					map.put("id", id);
					map.put("day", fullDay[i]);
					map.put("time", fullTime[j]);
					stuDAO.insertTimetable(map); //학생 수강중인 강의 테이블 만들기
				}
			}
			
			for(int i = 0; i < grade; i++) {
				Map<String, Object> map = new HashMap<>();
				map.put("id", id);
				map.put("day", day);
				map.put("time", time+i);
				map.put("code", code);
				stuDAO.updateTimetable(map);
			}
		// 있으면 timetable에 값 update
		} else {
			for(int i = 0; i < grade; i++) {
				Map<String, Object> map = new HashMap<>();
				map.put("id", id);
				map.put("day", day);
				map.put("time", time+i);
				map.put("code", code);
				stuDAO.updateTimetable(map);
			}
		}
		stuDAO.plueCourseNumber(code);// 학생이 추가할 경우 원래 강의 테이블의 신청 인원 +1을 한다.
	}

	@Override
	public void deleteMyCourse(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		String code = req.getParameter("code");
		
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("code", code);
		stuDAO.deleteTimetable(map);
		
		stuDAO.minusCourseNumber(code); // 학생이 취소할 경우 원래 강의 테이블의 신청 인원 -1을 한다.
	}
	
	@Override
	public void myRegisterCourse(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");

		List<Map<String, Object>> list = stuDAO.getRegisterCourse(id);
		model.addAttribute("study", list);
		model.addAttribute("listCnt", list.size());
	}
	
	@Override
	public void course_syllabus(HttpServletRequest req, Model model) {
		String code = req.getParameter("code");
		
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
		cnt = stuDAO.getGradeCnt(id);
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

			List<Map<String, Object>> dtos = stuDAO.getGradeList(map);
			model.addAttribute("score", dtos);

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
		int year = Integer.parseInt(req.getParameter("year"));
		int semester = Integer.parseInt(req.getParameter("semester"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("year", year);
		map.put("semester", semester);
		
		cnt = stuDAO.getStudyCnt(id);
		List<Map<String, Object>> dtos = stuDAO.getStudyList(map);
		model.addAttribute("study", dtos);
		model.addAttribute("cnt", cnt);
	}
	
	// 학생 강의 시간표
	@Override
	public void studentTimeTable(HttpServletRequest req, Model model) {
		int cnt=0;
		String id = (String) req.getSession().getAttribute("memId");
		int year = Integer.parseInt(req.getParameter("year"));
		int semester = Integer.parseInt(req.getParameter("semester"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("year", year);
		map.put("semester", semester);
		
		// view 수정
		String sql = "CREATE OR REPLACE VIEW SELECT_ID_TIMETABLE " + "AS " +
					 "SELECT * FROM S_TIMETABLE WHERE ID = "+ "'" + id + "'";
		stuDAO.updateView(sql);
		
		List<Map<String, Object>> dtos = stuDAO.getTimeTable(map);
		model.addAttribute("dtos", dtos);
		model.addAttribute("cnt", cnt);
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
		String option = req.getParameter("option");
		if(option == null || option.equals("undefined") || option.equals("receive")) option = "receive";
		else option = "send";
		
		if(option.equals("receive") || option == "") {
			model.addAttribute("option", "receive");
			cnt = stuDAO.getMessageCnt(id);
		} else {
			model.addAttribute("option", option);
			cnt = stuDAO.getMessageCnt_send(id);
		}
		
		pageNum = req.getParameter("pageNum");
		if(pageNum == null || pageNum.equals("undefined")) pageNum = "1";
		
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
			if(option.equals("receive") || option.equals("undefined") || option == null) {
				dtos = (ArrayList<MessageVO>) stuDAO.getMessageList(map);
			} else {
				dtos = (ArrayList<MessageVO>) stuDAO.getMessageList_send(map);
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
		MessageVO vo = stuDAO.getMessage(num);
		
		if(vo.getReadchk() == 0) stuDAO.updateReadChk(num);

		model.addAttribute("dto", vo);
	}
	
	@Override
	public void studentSimpleInfo(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("memId");
		// users 아이디 값과 student 아이디 값이 일치 하는지 확인한다.
		int check = stuDAO.studentIdCheck(id);

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
		cnt = stuDAO.getMessageCnt_notRead(id);
		
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
			dtos = (ArrayList<MessageVO>) stuDAO.getMessageList_notRead(map);
			
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
		String receiver_id = req.getParameter("receiver");
		String content = req.getParameter("content");
		String authen = "";
		if(req.getParameter("authen").equals("stu")) authen = "S_STUDENT";
		else authen = "P_PROFESSOR";
		
		Map<String, Object> map = new HashMap<>();
		map.put("id", receiver_id);
		map.put("authen", authen);
		String receiver_name = stuDAO.getReceiverName(map);
		
		map.put("id", req.getSession().getAttribute("memId"));
		map.put("authen", "S_STUDENT");
		String sender_name = stuDAO.getReceiverName(map);
		
		Map<String, Object> msg = new HashMap<>();
		msg.put("title", title);
		msg.put("content", content);
		msg.put("receiver_id", receiver_id);
		msg.put("receiver_name", receiver_name);
		msg.put("sender_id", req.getSession().getAttribute("memId"));
		msg.put("sender_name", sender_name);
		
		int insertCnt = stuDAO.insertMessage(msg);
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
		map.put("authen", "S_STUDENT");
		String sender_name = stuDAO.getReceiverName(map);
		
		Map<String, Object> msg = new HashMap<>();
		msg.put("title", title);
		msg.put("content", content);
		msg.put("receiver_id", receiver_id);
		msg.put("receiver_name", receiver_name);
		msg.put("sender_id", req.getSession().getAttribute("memId"));
		msg.put("sender_name", sender_name);
		
		int insertCnt = stuDAO.insertMessage(msg);
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
		list = stuDAO.authenList(authen);
		
		model.addAttribute("authenList", list);
	}

	@Override
	public void getProfessorName(Model model) {
		ArrayList<String> proNameList = stuDAO.getProfessorName();
		model.addAttribute("professors", proNameList);
	}

	@Override
	public void submitConsult(HttpServletRequest req, Model model) throws InterruptedException, ExecutionException {
		initialize();
		
		String stuName = req.getParameter("stuName");
		String stuNumber = req.getParameter("stuNumber");
		String proName = req.getParameter("proName");
		String consultExp = req.getParameter("consultExp");
		String consultType = req.getParameter("consultType");
		String content = req.getParameter("content");
		String subject = req.getParameter("subject");
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String date = format1.format(time);
		System.out.println(date);
		
		Firestore firestore = FirestoreClient.getFirestore();
		ConsultVO vo = new ConsultVO();
		vo.setStuName(stuName);
		vo.setStuNumber(stuNumber);
		vo.setProName(proName);
		vo.setConsultExp(consultExp);
		vo.setConsultType(consultType);
		vo.setContent(content);
		vo.setStatus("제출");
		vo.setSubject(subject);
		vo.setDate(date);
		
		ApiFuture<WriteResult> apiFuture = firestore.collection(COLLECTION_NAME).document("consult-" + vo.getStuName() + "-" + vo.getProName() + "-" + vo.getDate()).set(vo);

		System.out.println(apiFuture.get().getUpdateTime().toString());
	}
	
	public static Firestore initialize() {
		try {
			String path = EduServiceImpl.class.getResource("").getPath();
			
			FileInputStream serviceAccount = new FileInputStream(path + "teamunique-dae26-firebase-adminsdk-w6e2x-bb00a614c7.json");
			
			FirebaseApp firebaseApp = null;
			List<FirebaseApp> firebaseApps = FirebaseApp.getApps();
			 
			if(firebaseApps != null && !firebaseApps.isEmpty()){
			    for(FirebaseApp app : firebaseApps){
			        if(app.getName().equals(FirebaseApp.DEFAULT_APP_NAME)) {
			            firebaseApp = app;
			            
			        }
			    }
			}else{
			    FirebaseOptions options = new FirebaseOptions.Builder()
			        .setCredentials(GoogleCredentials.fromStream(serviceAccount))
			        .setDatabaseUrl("https://teamunique-dae26.firebaseio.com")
			        .build();
			    firebaseApp = FirebaseApp.initializeApp(options);
			}
			return FirestoreClient.getFirestore();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return FirestoreClient.getFirestore();
	}
}
