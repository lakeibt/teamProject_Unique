package com.kosmo.uni.service;

import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.api.core.ApiFuture;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.QueryDocumentSnapshot;
import com.google.cloud.firestore.QuerySnapshot;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;
import com.kosmo.uni.persistence.AndroidDAO;
import com.kosmo.uni.vo.FingerPrintVO;
import com.kosmo.uni.vo.ConsultVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.ParkVO;
import com.kosmo.uni.vo.StudentVO;
import com.kosmo.uni.vo.nfcVO;

@Service
public class AndroidServiceImpl implements AndroidService {
	
	@Autowired
	AndroidDAO andDAO;

	@Override
	public Map<String, String> login(HttpServletRequest req) {
		// 안드로이드에서 전달할 값
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");

		Map<String, String> out = new HashMap<String, String>();

		System.out.println(id);
		System.out.println(pwd);

		// 로그인
		if (id.substring(0, 1).equals("s")) {
			HashMap<String, String> map = andDAO.confirmIdPwdStu(id);
			System.out.println("--------------");
			System.out.println(map.get("ID"));
			System.out.println(map.get("NAME"));
			System.out.println(map.get("PWD"));
			// 웹에서 안드로이드로 전달할 값
			if (checkPass(pwd, map.get("PWD"))) {
				System.out.println("로그인 성공 : " + map.get("ID"));
				out.put("id", id);
				out.put("name", map.get("NAME"));
				out.put("pwd", map.get("PWD"));
				System.out.println("id : " + map.get("ID"));
				System.out.println("pwd : " + map.get("PWD"));
				System.out.println("name : " + map.get("NAME"));
			} else {
				System.out.println("로그인 실패");
				out.put("id", null);
			}
		} else if (id.substring(0, 1).equals("a")) {
			HashMap<String, String> map = andDAO.confirmIdPwdAdm(id);
			System.out.println("--------------");
			System.out.println(map.get("ID"));
			System.out.println(map.get("NAME"));
			System.out.println(map.get("PWD"));
			// 웹에서 안드로이드로 전달할 값
			if (checkPass(pwd, map.get("PWD"))) {
				System.out.println("로그인 성공 : " + map.get("ID"));
				out.put("id", id);
				out.put("name", map.get("NAME"));
				out.put("pwd", map.get("PWD"));
				System.out.println("id : " + map.get("ID"));
				System.out.println("pwd : " + map.get("PWD"));
				System.out.println("name : " + map.get("NAME"));
			} else {
				System.out.println("로그인 실패");
				out.put("id", null);
			}
		} else if(id.substring(0,1).equals("p")) {
			HashMap<String, String> map = andDAO.confirmIdPwdPro(id);
			System.out.println("--------------");
			System.out.println(map.get("ID"));
			System.out.println(map.get("NAME"));
			System.out.println(map.get("PWD"));
			// 웹에서 안드로이드로 전달할 값
			if(checkPass(pwd, map.get("PWD"))) {
				System.out.println("로그인 성공 : " + map.get("ID"));
				out.put("id", id);
				out.put("name", map.get("NAME"));
				out.put("pwd", map.get("PWD"));
				System.out.println("id : " + map.get("ID"));
				System.out.println("pwd : " +  map.get("PWD"));
				System.out.println("name : " +  map.get("NAME"));
			} else {
				System.out.println("로그인 실패");
				out.put("id", null);
			}
		}
		return out;
	}

	// 내 정보 가져오기 - 학생/직원
	@Override
	public Map<String, Object> MyPage(HttpServletRequest req) {
		// 안드로이드에서 전달한 id값
		String id = req.getParameter("id");

		System.out.println("id : " + id);
		System.out.println("서브스트링 값 : " + id.substring(0, 1));

		Map<String, Object> map = new HashMap<String, Object>();

		// 회원정보 조회 - 이름 학과 학년 이메일 학번(아이디)
		if (id.substring(0, 1).equals("s")) {
			StudentVO s = andDAO.getStudentInfo(id);
			String mcode = "";
			if (s.getM_code().equals("CO")) {
				mcode = "기계공학과";
			if(s.getM_code().equals("CO")) {
				mcode = "컴퓨터공학과";
			} else if (s.getM_code().equals("BE")) {
				mcode = "뷰티미용과";
			} else if (s.getM_code().equals("CN")) {
				mcode = "건축학과";
			} else if (s.getM_code().equals("EN")) {
				mcode = "영어영문학과";
			} else if (s.getM_code().equals("FD")) {
				mcode = "패션디자인학과";
			} else if (s.getM_code().equals("KO")) {
				mcode = "국어국문학과";
			} else if (s.getM_code().equals("JA")) {
				mcode = "일어일문학과";
			} else if (s.getM_code().equals("FR")) {
				mcode = "불어불문학과";
			} else if (s.getM_code().equals("MA")) {
				mcode = "기계공학과";
			} else if (s.getM_code().equals("BI")) {
				mcode = "생명공학과";
			} else if (s.getM_code().equals("AD")) {
				mcode = "시각디자인학과";
			} else if (s.getM_code().equals("SC")) {
				mcode = "조소학과";
			} else {
				mcode = s.getM_code();
			}

			map.put("data1", s.getId());
			map.put("data2", s.getName());
			map.put("data3", mcode);
			map.put("data4", s.getPhoto());
			map.put("data5", s.getGrade());
			map.put("data6", s.getEntrancedate());
			map.put("data7", s.getTel());
			map.put("data8", s.getEmail());
			map.put("data9", s.getAddress());
			map.put("data10", s.getDe_address());

		} else if (id.substring(0, 1).equals("a")) {
			Manager m = andDAO.getAdminInfo(id);
			System.out.println("m : " + m);
			String depart = "";
			if (m.getDepart().equals("DE")) {
				depart = "학사관리과";
			} else if (m.getDepart().equals("HU")) {
				depart = "인사관리과";
			} else if (m.getDepart().equals("FA")) {
				depart = "시설관리과";
			} else {
				depart = m.getDepart();
			}
			map.put("data1", m.getId());
			map.put("data2", m.getName());
			map.put("data3", m.getRank());
			map.put("data4", m.getPhoto());
			map.put("data5", depart);
			System.out.println("m.id : " + m.getId());
			System.out.println("m.name : " + m.getName());

			
		} else if(id.substring(0,1).equals("p")) {
			HumanVO p = andDAO.getProinInfo(id);
			System.out.println("p : " + p);
			if(p.getM_code().equals("CO")) {
				mcode = "컴퓨터공학과";
			} else if (p.getM_code().equals("BE")) {
				mcode = "뷰티미용과";
			} else if (p.getM_code().equals("CN")) {
				mcode = "건축학과";
			} else if (p.getM_code().equals("EN")) {
				mcode = "영어영문학과";
			} else if (p.getM_code().equals("FD")) {
				mcode = "패션디자인학과";
			} else if (p.getM_code().equals("KO")) {
				mcode = "국어국문학과";
			} else if (p.getM_code().equals("JA")) {
				mcode = "일어일문학과";
			} else if (p.getM_code().equals("FR")) {
				mcode = "불어불문학과";
			} else if (p.getM_code().equals("MA")) {
				mcode = "기계공학과";
			} else if (p.getM_code().equals("BI")) {
				mcode = "생명공학과";
			} else if (p.getM_code().equals("AD")) {
				mcode = "시각디자인학과";
			} else if (p.getM_code().equals("SC")) {
				mcode = "조소학과";
			} else {
				mcode = p.getM_code();
			}
			map.put("data1", p.getId());
			map.put("data2", p.getName());
			map.put("data3", p.getRank());
			map.put("data4", p.getPhoto());
			map.put("data5", mcode);
			System.out.println("p.id : " + p.getId());
			System.out.println("p.name : " + p.getName());
			
		}
		}
		return map;
	}

	private boolean checkPass(String pwd, String encPwd) {
		if (BCrypt.checkpw(pwd, encPwd)) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Map<String, String> NfcTag(HttpServletRequest req) {
		SimpleDateFormat format1 = new SimpleDateFormat("MM/dd");
		String today = format1.format(System.currentTimeMillis());
		// 안드로이드에서 전달할 값
		System.out.println("today오늘 : " + today);
		String phonenum = req.getParameter("phonenum");
		String tagid = req.getParameter("tagid");

		Map<String, String> out = new HashMap<String, String>();

		System.out.println("phonenum : " + phonenum);
		System.out.println("tagid : " + tagid);

		Map<String, String> going = new HashMap<String, String>();
		going.put("phonenum", phonenum);
		going.put("today", today);

		int what = andDAO.whatNfc(going);
		System.out.println("what 있니?없니? : " + what);

		if (what == 1) {
			// 값있음 update 퇴근
			// 04F459A2816B80 <== 출근 스티커 아이디값
			if (phonenum != null && tagid.equals("04F459A2816B80")) {

				Map<String, String> going2 = new HashMap<String, String>();
				going2.put("phonenum", phonenum);
				going2.put("today", today);
				// 전화번호 서버로 보내기
				andDAO.byeNfc(going2);
				System.out.println("--------------");
				// 웹에서 안드로이드로 전달할 값
				System.out.println("NFC 출석 태깅 성공 ");
				out.put("phonenum", phonenum);
				out.put("tagid", tagid);
			} else {
				System.out.println("값 없음 NFC 출석 태깅 실패");
				out.put("phonenum", null);
				out.put("tagid", null);
			}
		} else if (what == 0) {
			// 값없음 신규로 등록 insert 출근
			// 04F459A2816B80 <== 출근 스티커 아이디값
			if (phonenum != null && tagid.equals("04F459A2816B80")) {
				// 전화번호 서버로 보내기
				andDAO.hiNfc(phonenum);
				System.out.println("--------------");
				// 웹에서 안드로이드로 전달할 값
				System.out.println("NFC 출석 태깅 성공 ");
				out.put("phonenum", phonenum);
				out.put("tagid", tagid);
			} else {
				System.out.println("값 없음 NFC 출석 태깅 실패");
				out.put("phonenum", null);
				out.put("tagid", null);
			}
		}
		return out;
	}

	@Override
	public Map<String, String> Parking(HttpServletRequest req) {
		String carNum = req.getParameter("carNum");
		carNum = carNum.replaceAll("\n", "");
		System.out.println("차량번호 :!" + carNum + "!");

		Map<String, String> out = new HashMap<String, String>();

		// admin인 사람이 차가 있는지 확인
		int have = andDAO.whatCar(carNum);
		System.out.println("admin의 차량인가요? : " + have);
		if (have > 0) {
			// 등록된 차량
			// 오늘 입차 내역 있음?
			SimpleDateFormat format1 = new SimpleDateFormat("MM/dd");
			String today = format1.format(System.currentTimeMillis());
			String realCarNum = andDAO.carNum(carNum);
			System.out.println("차량번호 : " + realCarNum);

			Map<String, String> going2 = new HashMap<String, String>();
			going2.put("carNum", realCarNum);
			going2.put("today", today);
			int incount = andDAO.todayCar(going2);
			System.out.println("오늘 입차내역이 있나요? : " + incount);

			if (incount == 1) {
				System.out.println("차량 퇴근");
				Map<String, String> going3 = new HashMap<String, String>();
				going3.put("carNum", realCarNum);
				going3.put("today", today);
				andDAO.byeParking(going3);
				out.put("carNum", realCarNum);
			} else if (incount == 0) {
				System.out.println("차량 출근");
				andDAO.hiParking(realCarNum);
				out.put("carNum", realCarNum);
			}

		} else {
			// 미등록 차량
			System.out.println("미등록 차량");
			out.put("carnum", null);
		}

		return out;
	}

	@Override
	public ArrayList<nfcVO> workcheck(HttpServletRequest req) {
		String id = req.getParameter("id");
		ArrayList<nfcVO> dtos = andDAO.workchecklist(id);
		System.out.println("dtos : " + dtos);
		return dtos;
	}

	@Override
	public Map<String, String> bioCheck(HttpServletRequest req) {
		int cnt = 0;

		String id = req.getParameter("id");
		String uuid = req.getParameter("uuid");

		Map<String, String> bio_check = new HashMap<String, String>();
		bio_check.put("id", id);
		bio_check.put("uuid", uuid);

		cnt = andDAO.bio_check(bio_check);
		System.out.println("bio_check > " + cnt);
		return bio_check;
	}

	@Override
	public Map<String, String> bioAdd(HttpServletRequest req) {
		int cnt = 0;

		String id = req.getParameter("id");
		String uuid = req.getParameter("uuid");

		Map<String, String> bio_add = new HashMap<String, String>();
		
		System.out.println("id" + id);
		System.out.println("uuid" + uuid);

		bio_add.put("id", id);
		bio_add.put("uuid", uuid);

		cnt = andDAO.bio_add(bio_add);
		System.out.println("bio_add > " + cnt);
		return bio_add;
	}

	@Override
	public Map<String, Object> bioSignCheck(HttpServletRequest req) {
		String uuid = req.getParameter("uuid");
		System.out.println("uuid : " + uuid);
		
		Map<String, Object> map = new HashMap<String, Object>();
		FingerPrintVO v = andDAO.bioSignCheck(uuid);
		
		try {
			if(v.getId()==null && v.getPwd()==null) {
				map.put("id", null);
				map.put("pwd",null);
				map.put("uuid",null);
			} else {
				map.put("id", v.getId());
				map.put("pwd", v.getPwd());
				map.put("uuid", v.getUuid());
			}	
		} catch (NullPointerException e) {
		}
		
		return map;
	}

	public Map<String, Object> maninfo(HttpServletRequest req) {
		String id = req.getParameter("id");
		System.out.println("id : " + id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		Manager m = andDAO.getManinfo(id);
		System.out.println("m : " + m);
		String depart = "";
		if(m.getDepart().equals("DE")) {
			depart = "학사관리과";
		}else if(m.getDepart().equals("HU")){
			depart = "인사관리과";
		}else if(m.getDepart().equals("FA")){
			depart = "시설관리과";
		} else {
			depart = m.getDepart();
		}
		map.put("id", m.getId());
		map.put("name", m.getName());
		map.put("rank", m.getRank());
		map.put("photo", m.getPhoto());
		map.put("depart", depart);
		map.put("tel", m.getTel());
		map.put("email", m.getEmail());
		map.put("address", m.getAddress());
		map.put("de_address", m.getDe_address());
		System.out.println("m.getId : " + m.getId());
		System.out.println("m.getName : " + m.getName());
		System.out.println("m.getRank : " + m.getRank());
		System.out.println("m.getPhoto : " + m.getPhoto());
		System.out.println("depart : " + depart);
		System.out.println("m.getTel : " + m.getTel());
		System.out.println("m.getEmail : " + m.getEmail());
		System.out.println("m.getAddress : " + m.getAddress());
		System.out.println("m.getDe_address : " + m.getDe_address());
			
		return map;
	}

	@Override
	public Map<String, Object> maninfosave(HttpServletRequest req) {
		String id = req.getParameter("id");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String address2 = req.getParameter("address2");
		System.out.println("받은값1 : "+id);
		System.out.println("받은값2 : "+tel);
		System.out.println("받은값3 : "+email);
		System.out.println("받은값4 : "+address);
		System.out.println("받은값5 : "+address2);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("tel", tel);
		map.put("email", email);
		map.put("address", address);
		map.put("address2", address2);
		
		andDAO.maninfosave(map);
		
		return map;
	}

	@Override
	public Map<String, Object> stuinfo(HttpServletRequest req) {
		String id = req.getParameter("id");
		System.out.println("id : " + id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 회원정보 조회 - 이름 학과 학년 이메일 학번(아이디) 
		StudentVO s = andDAO.getStudentInfo(id);
		String mcode = "";
		if(s.getM_code().equals("CO")) {
			mcode = "컴퓨터공학과";
		} else if (s.getM_code().equals("BE")) {
			mcode = "뷰티미용과";
		} else if (s.getM_code().equals("CN")) {
			mcode = "건축학과";
		} else if (s.getM_code().equals("EN")) {
			mcode = "영어영문학과";
		} else if (s.getM_code().equals("FD")) {
			mcode = "패션디자인학과";
		} else if (s.getM_code().equals("KO")) {
			mcode = "국어국문학과";
		} else if (s.getM_code().equals("JA")) {
			mcode = "일어일문학과";
		} else if (s.getM_code().equals("FR")) {
			mcode = "불어불문학과";
		} else if (s.getM_code().equals("MA")) {
			mcode = "기계공학과";
		} else if (s.getM_code().equals("BI")) {
			mcode = "생명공학과";
		} else if (s.getM_code().equals("AD")) {
			mcode = "시각디자인학과";
		} else if (s.getM_code().equals("SC")) {
			mcode = "조소학과";
		} else {
			mcode = s.getM_code();
		}
		
		map.put("id", s.getId());
		map.put("photo", s.getPhoto());
		map.put("name", s.getName());
		map.put("m_code", mcode);
		map.put("grade", s.getGrade());
		map.put("entrancedate", s.getEntrancedate());
		map.put("jumin1", s.getJumin1());
		map.put("tel", s.getTel());
		map.put("email", s.getEmail());
		map.put("address", s.getAddress());
		map.put("de_address", s.getDe_address());
		System.out.println("id : "+ s.getId());
		System.out.println("photo : "+ s.getPhoto());
		System.out.println("name : "+ s.getName());
		System.out.println("m_code : "+ mcode);
		System.out.println("grade : "+ s.getGrade());
		System.out.println("entrancedate : "+ s.getEntrancedate());
		System.out.println("jumin1 : "+ s.getJumin1());
		System.out.println("tel : "+ s.getTel());
		System.out.println("email : "+ s.getEmail());
		System.out.println("address : "+ s.getAddress());
		System.out.println("de_address :"+ s.getDe_address());
		
		return map;
	}

	@Override
	public Map<String, Object> stuinfosave(HttpServletRequest req) {
		String id = req.getParameter("id");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String address2 = req.getParameter("address2");
		System.out.println("받은값1 : "+id);
		System.out.println("받은값2 : "+tel);
		System.out.println("받은값3 : "+email);
		System.out.println("받은값4 : "+address);
		System.out.println("받은값5 : "+address2);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("tel", tel);
		map.put("email", email);
		map.put("address", address);
		map.put("address2", address2);
		
		andDAO.stuinfosave(map);
		
		return map;
	}

	@Override
	public Map<String, Object> proinfo(HttpServletRequest req) {
		String id = req.getParameter("id");
		System.out.println("id : " + id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 회원정보 조회 - 이름 학과 학년 이메일 학번(아이디) 
		HumanVO p = andDAO.getProInfo(id);
		String mcode = "";
		if(p.getM_code().equals("CO")) {
			mcode = "컴퓨터공학과";
		} else if (p.getM_code().equals("BE")) {
			mcode = "뷰티미용과";
		} else if (p.getM_code().equals("CN")) {
			mcode = "건축학과";
		} else if (p.getM_code().equals("EN")) {
			mcode = "영어영문학과";
		} else if (p.getM_code().equals("FD")) {
			mcode = "패션디자인학과";
		} else if (p.getM_code().equals("KO")) {
			mcode = "국어국문학과";
		} else if (p.getM_code().equals("JA")) {
			mcode = "일어일문학과";
		} else if (p.getM_code().equals("FR")) {
			mcode = "불어불문학과";
		} else if (p.getM_code().equals("MA")) {
			mcode = "기계공학과";
		} else if (p.getM_code().equals("BI")) {
			mcode = "생명공학과";
		} else if (p.getM_code().equals("AD")) {
			mcode = "시각디자인학과";
		} else if (p.getM_code().equals("SC")) {
			mcode = "조소학과";
		} else {
			mcode = p.getM_code();
		}
		
		map.put("id", p.getId());
		map.put("photo", p.getPhoto());
		map.put("name", p.getName());
		map.put("m_code", mcode);
		map.put("grade", p.getGrade());
		map.put("entrancedate", p.getEntrancedate());
		map.put("jumin1", p.getJumin1());
		map.put("tel", p.getTel());
		map.put("email", p.getEmail());
		map.put("address", p.getAddress());
		map.put("de_address", p.getDe_address());
		System.out.println("id : "+ p.getId());
		System.out.println("photo : "+ p.getPhoto());
		System.out.println("name : "+ p.getName());
		System.out.println("m_code : "+ mcode);
		System.out.println("grade : "+ p.getGrade());
		System.out.println("entrancedate : "+ p.getEntrancedate());
		System.out.println("jumin1 : "+ p.getJumin1());
		System.out.println("tel : "+ p.getTel());
		System.out.println("email : "+ p.getEmail());
		System.out.println("address : "+ p.getAddress());
		System.out.println("de_address :"+ p.getDe_address());
			
		return map;
	}

	@Override
	public Map<String, Object> proinfosave(HttpServletRequest req) {
		String id = req.getParameter("id");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String address2 = req.getParameter("address2");
		System.out.println("받은값1 : "+id);
		System.out.println("받은값2 : "+tel);
		System.out.println("받은값3 : "+email);
		System.out.println("받은값4 : "+address);
		System.out.println("받은값5 : "+address2);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("tel", tel);
		map.put("email", email);
		map.put("address", address);
		map.put("address2", address2);
		
		andDAO.Proinfosave(map);
		
		return map;
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

	@Override
	public ArrayList<ConsultVO> getConsultList(HttpServletRequest req) throws InterruptedException, ExecutionException {
		Firestore db = initialize();
		String name = req.getParameter("name");
		ApiFuture<QuerySnapshot> future = db.collection("teamUnique_Spring").whereEqualTo("proName", "김교수").get();
		List<QueryDocumentSnapshot> documents = future.get().getDocuments();
		ArrayList<ConsultVO> consultList = new ArrayList<ConsultVO>();
		for(DocumentSnapshot document : documents) {
			consultList.add(document.toObject(ConsultVO.class));
		}
		return consultList;
	}
}
