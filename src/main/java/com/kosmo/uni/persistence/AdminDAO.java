package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.SalaryVO;

public interface AdminDAO {

	
	public int getAttendance_Cnt();
	
	public List<AdminVO> getAttendance_List(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_human(Map<String, Object> map);

	public int salary_input(Map<String, Object> map);

	public int getAdminCnt();

	public int getSalaryCnt();

	public List<SalaryInputVO> getSalaryList(Map<String, Object> map);
	//연봉 계산
	public List<SalaryVO> getSelectList(Map<String, Object> map);
	//차량 소유 검색 후 식대, 차량유지비 검색
	
	public SalaryVO getSelectCar(int cost);
	
}
