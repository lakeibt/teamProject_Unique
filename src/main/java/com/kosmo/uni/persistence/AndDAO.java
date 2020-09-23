package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;


public interface AndDAO {
	
	public HashMap<String, String> confirmIdPwdStu(String id);
	
	public HashMap<String, String> confirmIdPwdAdm(String id);
	
	public StudentVO getStudentInfo(String id);

	public Manager getAdminInfo(String id);
}
