package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.ParkVO;
import com.kosmo.uni.vo.StudentVO;


public interface AndroidDAO {
	
	public HashMap<String, String> confirmIdPwdStu(String id);
	public HashMap<String, String> confirmIdPwdAdm(String id);
	
	public StudentVO getStudentInfo(String id);
	public Manager getAdminInfo(String id);
	
	//nfc 오늘 날짜에 있는지 없는지 체크
	public int whatNfc(Map<String, String> map);
	
	//nfc 처음 정보
	public int hiNfc(String pnum);
	
	//nfc 퇴근 정보
	public int byeNfc(Map<String, String> map);
	
	//admin의 등록된 차량이 맞는지 확인
	public int whatCar(Map<String, String> map);
	
	//parking 차량번호 Full로 다시 불러오기
	public ParkVO carNum(String carNum);
	
	//parking 오늘 날짜에 있는지 없는지 체크
	public int todayCar(Map<String, String> map);
	
	//parking 처음 정보
	public int hiParking(String carNum);
	
	//parking 퇴근 정보
	public int byeParking(Map<String, String> map);
	
}
