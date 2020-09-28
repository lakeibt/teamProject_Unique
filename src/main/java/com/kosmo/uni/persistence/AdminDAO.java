package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.PayslipVO;
import com.kosmo.uni.vo.SalaryVO;

public interface AdminDAO {

	
	public int getAttendance_Cnt();
	
	public int getAttendance_Search_Cnt(Map<String, Object> map);
	
	public List<AdminVO> getAttendance_List(Map<String, Object> map);
	
	public List<AdminVO> getAttendance_List_Search(Map<String, Object> map);
	
	public int getSalary_Cnt();
	
	public List<AdminVO> getSalary_list_human(Map<String, Object> map);

	public int salary_input(Map<String, Object> map);

	public int getAdminCnt();

	public int getSalaryCnt();

	public List<SalaryInputVO> getSalaryList(Map<String, Object> map);
	//연봉 계산
	public List<SalaryVO> getSelectList(Map<String, Object> map);
	//차량 소유 검색 후 식대, 차량유지비 검색
	
	public SalaryVO getSelectCar(int cost);
	
	public List<AdminVO> getSalary_list_human_Search(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_month(Map<String, Object> map);
	
	public List<AdminVO> getSalary_list_month_Search(Map<String, Object> map);
	
	public int getCourseCnt();

	public List<CourseVO> getCourseList();

	public int getDivisionCnt(Map<String, Object> map);

	public int updateDivCnt(Map <String, Object> map1);
	// 급여 대장 수정
	public SalaryInputVO getSalaryArticle(int salary_input_num);
	// 급여대장 수정 처리 
	public int UpdateSalInput(Map<String, Object> map);
	//급여대장 삭제 
	public int deleteSalary(int salary_input_num);
	//급여 대장 조회시 업데이트
	public int updateTotalSal(Map<String, Object> map);
	//급여 대장 조회시 다시 0 만들기
	public void updateZeroTotal(int salary_input_num);
	//급여 대장 - 급여 합계
	public int selectSalSum(int salary_input_num);
	//급여 대장 - 식대, 차랑유지비 합계
	public SalaryVO getMealCar(int salary_input_num);
	
	//급여명세서 조회
	public List<PayslipVO> getPayslip(int salary_input_num);
	
}
