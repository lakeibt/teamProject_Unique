package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;

public interface AdminDAO {

	
	public int getAttendance_Cnt();
	
	public List<AdminVO> getAttendance_List(Map<String, Object> map);
}
