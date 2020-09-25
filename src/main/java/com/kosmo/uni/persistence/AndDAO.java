package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;
import com.kosmo.uni.vo.nfcVO;


public interface AndDAO {
	
	public HashMap<String, String> confirmIdPwdStu(String id);
	
	public HashMap<String, String> confirmIdPwdAdm(String id);
	
	public StudentVO getStudentInfo(String id);

	public Manager getAdminInfo(String id);
	
	//nfc 오늘 날짜에 있는지 없는지 체크
	public int whatNfc(HashMap<String, String> map);
	
	//nfc 처음 정보
	public int hiNfc(String pnum);
	
	//nfc 퇴근 정보
	public int byeNfc(HashMap<String, String> map);
}
