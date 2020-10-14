package com.kosmo.uni.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.InClassHowVO;
import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;
import com.kosmo.uni.vo.nfcVO;


public interface AndroidDAO {
	
	public HashMap<String, String> confirmIdPwdStu(String id);
	public HashMap<String, String> confirmIdPwdAdm(String id);
	public HashMap<String, String> confirmIdPwdPro(String id);
	
	public StudentVO getStudentInfo(String id);
	public Manager getAdminInfo(String id);
	public HumanVO getProinInfo(String id);
	
	public List<Map<String, Object>> getMyCourse(Map<String, Object> map);
	public List<Map<String, Object>> getMyScore(Map<String, Object> map);
	
	//nfc 오늘 날짜에 있는지 없는지 체크
	public int whatNfc(Map<String, String> map);
	
	//nfc 처음 정보
	public int hiNfc(String pnum);
	
	//nfc 퇴근 정보
	public int byeNfc(Map<String, String> map);
	
	//admin의 등록된 차량이 맞는지 확인
	public int whatCar(String carNum);
	
	//parking 차량번호 Full로 다시 불러오기
	public String carNum(String carNum);
	
	//parking 오늘 날짜에 있는지 없는지 체크
	public int todayCar(Map<String, String> map);
	
	//parking 처음 정보
	public int hiParking(String carNum);
	
	//parking 퇴근 정보
	public int byeParking(Map<String, String> map);
	
	//근퇴관리 리스트 출력
	public ArrayList<nfcVO> workchecklist(String id);
	
	//ADM정보 조회
	public Manager getManinfo(String id);
	
	//ADM정보 수정
	public int maninfosave(Map<String, Object> map);
	
	//STU정보 조회
	public StudentVO getStuInfo(String id);
	
	//STU정보 수정
	public int stuinfosave(Map<String, Object> map);
<<<<<<< HEAD
=======
	
	//PRO정보 조회
	public HumanVO getProInfo(String id);
	
	//PRO정보 수정
	public int Proinfosave(Map<String, Object> map);
	
	public List<Map<String, Object>> getMyCourse_pro(Map<String, Object> map);

	//교수 강의조회 리스트 출력
	public ArrayList<InClassHowVO> getclasscheck(String name);
	
	//교수 강의조회 리스트 출력
	public ArrayList<InClassHowVO> getclasschecknext(String title);
	
>>>>>>> a035bfff9bfb26b04a06f5ef3d1e8f3e9f83115a
}
