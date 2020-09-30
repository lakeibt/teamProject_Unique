package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.DepartVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.MajorVO;
import com.kosmo.uni.vo.ParkVO;
import com.kosmo.uni.vo.PayslipVO;
import com.kosmo.uni.vo.RankVO;
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
	
	
	
	// 인사 등록
	public int insertAdmin(HumanVO vo);
	public int insertProfesser(HumanVO vo);
	public int insertStudent(HumanVO vo);
	
	// 직원 등록폼
	// 부서목록 가져오기
	public List<DepartVO> getDepartList();
	// 직급목록 가져오기
	public List<RankVO> getRankList();
	// 전공목록 가져오기
	public List<MajorVO> getMajorList();
	// 아이디 가져오기
	public String getNextAdminId();
	public String getNextProfessorId();
	public String getNextStudentId();	
	
	// 인사 정보 가져오기
	public int getStudentCnt();
	public int getProfessorCnt();
	public List<HumanVO> getStudentList(Map<String, Object> map);
	public List<HumanVO> getProfessorList(Map<String, Object> map);
	public List<HumanVO> getAdminList(Map<String, Object> map);
	
}
