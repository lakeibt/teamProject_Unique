package com.kosmo.uni.service;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.uni.persistence.AndroidDAO;
import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.ParkVO;
import com.kosmo.uni.vo.StudentVO;

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
		if(id.substring(0,1).equals("s")) {
			HashMap<String, String> map = andDAO.confirmIdPwdStu(id);
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
		} else if(id.substring(0,1).equals("a")) {
			HashMap<String, String> map = andDAO.confirmIdPwdAdm(id);
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
		System.out.println("서브스트링 값 : "+ id.substring(0,1));
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 회원정보 조회 - 이름 학과 학년 이메일 학번(아이디) 
		if(id.substring(0,1).equals("s")) {
			StudentVO s = andDAO.getStudentInfo(id);
			String mcode = "";
			if(s.getM_code().equals("CO")) {
				mcode = "기계공학과";
			}else {
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
			
		} else if(id.substring(0,1).equals("a")) {
			Manager m = andDAO.getAdminInfo(id);
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
			map.put("data1", m.getId());
			map.put("data2", m.getName());
			map.put("data3", m.getRank());
			map.put("data4", m.getPhoto());
			map.put("data5", depart);
			System.out.println("m.id : " + m.getId());
			System.out.println("m.name : " + m.getName());
			
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
		SimpleDateFormat format1 = new SimpleDateFormat ("MM/dd");
		String today = format1.format (System.currentTimeMillis());
		// 안드로이드에서 전달할 값
		System.out.println("today오늘 : "+today);
		String phonenum = req.getParameter("phonenum");
		String tagid = req.getParameter("tagid");
		
		Map<String, String> out = new HashMap<String, String>();
		
		System.out.println("phonenum : " +phonenum);
		System.out.println("tagid : " +tagid);
		
		Map<String, String> going = new HashMap<String, String>();
		going.put("phonenum", phonenum);
		going.put("today", today);
		
		int what = andDAO.whatNfc(going);
		System.out.println("what 있니?없니? : "+what);
		
		if(what == 1) {
			//값있음 update 퇴근
			//04F459A2816B80 <== 출근 스티커 아이디값
			if(phonenum != null && tagid.equals("04F459A2816B80") ) {
				
				Map<String, String> going2 = new HashMap<String, String>();
				going2.put("phonenum", phonenum);
				going2.put("today", today);
				//전화번호 서버로 보내기
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
		} else if(what == 0) {
			//값없음 신규로 등록 insert 출근
			//04F459A2816B80 <== 출근 스티커 아이디값
			if(phonenum != null && tagid.equals("04F459A2816B80") ) {
				//전화번호 서버로 보내기
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
		System.out.println("차량번호 : "+carNum);
		
		Map<String, String> out = new HashMap<String, String>();
		
		Map<String, String> going = new HashMap<String, String>();
		going.put("carNum", carNum);
		
		//admin인 사람이 차가 있는지 확인
		int have = andDAO.whatCar(going);
		System.out.println("admin의 차량인가요? :"+have);
		if(have > 0) { 
			//등록된 차량
			//오늘 입차 내역 있음?
			SimpleDateFormat format1 = new SimpleDateFormat ("MM/dd");
			String today = format1.format (System.currentTimeMillis());
			ParkVO realCarNum = andDAO.carNum(carNum);
			System.out.println("차량번호 : "+realCarNum.getCarNum());
			
			Map<String, String> going2 = new HashMap<String, String>();
			going2.put("carNum", realCarNum.getCarNum());
			int incount = andDAO.todayCar(going2);
			System.out.println("오늘 입차내역이 있나요? : "+incount);
		    
			if(incount == 1) {
				System.out.println("차량 퇴근");
				Map<String, String> going3 = new HashMap<String, String>();
				going3.put("carNum", realCarNum.getCarNum());
				going3.put("today", today);
				andDAO.byeParking(going3);
				out.put("carNum", realCarNum.getCarNum());
			} else if (incount == 0) {
				System.out.println("차량 출근");
				andDAO.hiParking(realCarNum.getCarNum());
				out.put("carNum", realCarNum.getCarNum());
			}
			
			
		}else {
			//미등록 차량
			System.out.println("미등록 차량");
			out.put("carnum", null);
		}
		
		
		return out;
	}
}
