package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.CourseVO;

public interface AdminDAO {

	
	public int getAttendance_Cnt();
	
	public List<AdminVO> getAttendance_List(Map<String, Object> map);
	
	public List<AdminVO> getAttendance_List_Search(Map<String, Object> map);
	
	public int getSalary_Cnt();
	
	public List<AdminVO> getSalary_list_human(Map<String, Object> map);

	public int salary_input(Map<String, Object> map);

	public int getAdminCnt();

	public int getSalaryCnt();

	public List<SalaryInputVO> getSalaryList(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_human_Search(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_month(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_month_Search(Map<String, Object> map);
	
	public int getCourseCnt();

	public List<CourseVO> getCourseList();
	
}
