package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVo;

public interface AdminDAO {

	
	public int getAttendance_Cnt();
	
	public List<AdminVO> getAttendance_List(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_human(Map<String, Object> map);

	public int salary_input(Map<String, Object> map);
	
}
