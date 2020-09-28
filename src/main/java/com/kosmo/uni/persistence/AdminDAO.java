package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.ParkVO;
import com.kosmo.uni.vo.SalaryVO;

public interface AdminDAO {
	public int getInfoCnt();
	
	public List<Map<String, Object>> getInfoList(Map<String, Object> map);
	
	public int insertInfo(Map<String, Object> map);
	
	public Map<String, Object> getContent(int num);
	
	public void addCnt(int num);
	
	public int getAttendance_Cnt();
	
	public int getAttendance_Search_Cnt(Map<String, Object> map);
	
	public List<AdminVO> getAttendance_List(Map<String, Object> map);
	
	public List<AdminVO> getAttendance_List_Search(Map<String, Object> map);
	
	public int getSalary_Cnt();
	
	public List<AdminVO> getSalary_list_humanMonth(Map<String, Object> map);
	
	public int humanSearch_Cnt(Map<String, Object> map);
	
	public List<AdminVO> humanSearch_List(Map<String, Object> map);
	
	public int monthSearch_Cnt(Map<String, Object> map);
	
	public List<AdminVO> monthSearch_List(Map<String, Object> map);
	
	public int salary_input(Map<String, Object> map);

	public int getAdminCnt();

	public int getSalaryCnt();

	public List<SalaryInputVO> getSalaryList(Map<String, Object> map);
	//연봉 계산
	public List<SalaryVO> getSelectList(Map<String, Object> map);
	//차량 소유 검색 후 식대, 차량유지비 검색
	
	public SalaryVO getSelectCar(int cost);
	
	public int getCourseCnt();

	//강의리스트출력
	public List<CourseVO> getCourseList();
	//강의삭제
	public int classDelete(String code);
	//강의등록
	public int classInsert(CourseVO vo);
	//강의수정
	public CourseVO classInfo(String code);
	//강의수정완료
	public int classmodClear(CourseVO vo);
	
	//주차갯수조회
	public int getParkingCnt();
	//주차리스트 출력
	public List<ParkVO> getParkingList();
	//주차검색 출력(날짜)
	public List<ParkVO> getSearchList(String date);
	//주차검색 출력(차번호)
	public List<ParkVO> getCarNumList(String date);
	
}
