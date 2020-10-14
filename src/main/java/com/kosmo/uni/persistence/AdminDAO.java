package com.kosmo.uni.persistence;

import java.util.ArrayList;
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
	
	// 인사 등록
	public int insertAdmin(HumanVO vo);
	public int insertProfessor(HumanVO vo);
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
	
	// 시설 관리 리스트(코드)
	public List<Map<String, Object>> equitmentCode();
	// 시설 관리 리스트(종류)
	public List<Map<String, Object>> equitmentKinds();
	public List<Map<String, Object>> equitmentList(Map<String, Object> map);
	public List<Map<String, Object>> equitmentUsingList(Map<String, Object> map);
	// 시설 요청
	public List<Map<String, Object>> facilityAsk();
	public Map<String, Object> selectMember(String id);
	public Map<String, Object> facilityAskContent(int num);
	public List<String> searchName(Map<String, Object> map);
	public String searchDepart(String id);
	public int insertAsk(Map<String, Object> map);
	public int deleteAsk(int num);
	
	public int selectUsing(Map<String, Object> map);
	public int updateUsing(Map<String, Object> map); // 사용리스트에 있는 경우 개수만 수정
	public int insertUsing(Map<String, Object> map); // 사용리스트에 없는 경우 데이터 입력
	public int deleteUsing(int num); // 반려(요청대기 > 반려)
	public int updateCnt(Map<String, Object> map); // 시설물 리스트 개수 수정 -1
	public int updateState(int num); // 요청 리스트 상태 수정 (요청대기 > 요청완료)
	public String getNextProfessorId();
	public String getNextStudentId();	
	
	// 인사 정보 가져오기
	public int getStudentCnt();
	public int getProfessorCnt();
	public List<HumanVO> getStudentList(Map<String, Object> map);
	public List<HumanVO> getProfessorList(Map<String, Object> map);
	public List<HumanVO> getAdminList(Map<String, Object> map);
	public HumanVO getStudentInfo(String id);
	public HumanVO getProfessorInfo(String id);
	public HumanVO getAdminInfo(String id);
	public int updateAdminInfo(HumanVO vo);
	public int updateProfessorInfo(HumanVO vo);
	public int updateStudentInfo(HumanVO vo);
	
	// 기초환경 설정 페이지 - 직급별 급여 리스트
	public List<Map<String, Object>> getSettingList();
	
	public int addRank(String rank);
	public int addSalaySet(Map<String, Object> map);
	public List<Map<String, Object>> getSettingHumanList(String rank);
	public int selectRank(String rank);
	public int deleteRank(String rank);
	
	public PayslipVO getPayslip(Map<String, Object> map);
	//급여 확정 - 인서트
	public int insertSal(SalaryVO sal);
	//급여대장 리스트 페이징 처리
	public List<SalaryVO> getSelectSalaryList(Map<String, Object> map);
	//급여대장 - 보너스 확정 버튼 클릭
	public int insertBns(SalaryVO sal);
	//급여대장 확정 버튼 클릭 후 salary_confirm코드 확인
	public int getSelectConfirm(Map<String, Object> map);
	//급여대장 확정 버튼 클릭 후 salary_confirm 2로 업데이트
	public int getUpdateConfirm(Map<String, Object> map);
	//급여대장 확정 후 급여 조회
	public List<SalaryVO> getSeleteConfirmOne(int salary_input_num);
	//급여대장 확정 후 상여 조회
	public List<SalaryVO> getSeleteConfirmTwo(int salary_input_num);
	//급여 확정 후 삭제 - 급여 
	public void deleteSalaryConfirm(int salary_input_num);
	//급여 확정 후 삭제 - 상여 
	public void deleteBonusConfirm(int salary_input_num);
	// 코드로 교수 리스트 가져오기
	public ArrayList<String> getProfessorListByMajor(String m_code);
}
