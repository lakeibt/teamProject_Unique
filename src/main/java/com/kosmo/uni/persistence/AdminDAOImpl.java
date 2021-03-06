package com.kosmo.uni.persistence;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	//근태관리 건수
	public int getInfoCnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getInfoCnt();
	}
	
	@Override
	public List<Map<String, Object>> getInfoList(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getInfoList(map);
	}

	@Override
	public int insertInfo(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertInfo(map);
	}

	@Override
	public void addCnt(int num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dao.addCnt(num);
	}
	
	@Override
	public Map<String, Object> getContent(int num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getContent(num);
	}
	
	@Override
	public int getAttendance_Cnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getAttendance_Cnt();
	}
	
	@Override
	//근태관리 검색 건수
	public int getAttendance_Search_Cnt(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		return dao.getAttendance_Search_Cnt(map);
	}
	
	@Override
	//근태관리 리스트
	public List<AdminVO> getAttendance_List(Map<String, Object> map) {
		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getAttendance_List(map);
		
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]:" + key + ", [value]:" + value);
		}

		return dtos;
	}

	@Override
	//근태관리 검색 리스트
	public List<AdminVO> getAttendance_List_Search(Map<String, Object> map) {
		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getAttendance_List_Search(map);

		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		return dtos;
	}

	@Override
	//급.상여 건수
	public int getSalary_Cnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getSalary_Cnt();
	}

	@Override
	//급.상여 리스트
	public List<AdminVO> getSalary_list_humanMonth(Map<String, Object> map) {
		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSalary_list_humanMonth(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
	}
	
	@Override
	public int humanSearch_Cnt(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.humanSearch_Cnt(map);
	}
	

	@Override
	public List<AdminVO> humanSearch_List(Map<String, Object> map) {
		List<AdminVO> dtos = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.humanSearch_List(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
	}
	
	@Override
	public int monthSearch_Cnt(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.monthSearch_Cnt(map);
	}
	

	@Override
	public List<AdminVO> monthSearch_List(Map<String, Object> map) {
		List<AdminVO> dtos = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.monthSearch_List(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
	}
	
	@Override
	public int salary_input(Map<String, Object> map) {
		int dtos;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.salary_input(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
	}

	@Override
	public int getAdminCnt() {
		int cnt;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		cnt = dao.getAdminCnt();
		return cnt;
	}

	@Override
	public int getSalaryCnt() {
		int cnt;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		cnt = dao.getSalaryCnt();
		return cnt;
	}

	@Override
	public List<SalaryInputVO> getSalaryList(Map<String, Object> map) {
		List<SalaryInputVO> dtos = null;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSalaryList(map);
		System.out.println("getSalaryList : " + dtos);
		return dtos;
	}

	@Override
	public List<SalaryVO> getSelectList(Map<String, Object> map) {
		List<SalaryVO> stos = null;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		stos = dao.getSelectList(map);
		System.out.println("getSalaryList : " + stos);
		return stos;
	}

	@Override
	public SalaryVO getSelectCar(int cost) {
		SalaryVO vo = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		vo = dao.getSelectCar(cost);
		System.out.println("getSelectCar : " + vo);
		return vo;
	}

	@Override
	public int getCourseCnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getCourseCnt();
	}

	@Override
	public List<CourseVO> getCourseList() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getCourseList();
	}

	@Override
	public int classDelete(String code) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.classDelete(code);
	}

	@Override
	public int classInsert(CourseVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.classInsert(vo);
	}

	@Override
	public CourseVO classInfo(String code) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.classInfo(code);
	}

	@Override
	public int classmodClear(CourseVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.classmodClear(vo);
	}

	@Override
	public int getParkingCnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getParkingCnt();
	}

	@Override
	public List<ParkVO> getParkingList() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getParkingList();
	}

	@Override
	public List<ParkVO> getSearchList(String date) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getSearchList(date);
	}

	@Override
	public List<ParkVO> getCarNumList(String date) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getCarNumList(date);
	}

	@Override
	public int getDivisionCnt(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		int cnt = dao.getDivisionCnt(map);
		System.out.println("getDivisionCnt : " + cnt);
		return cnt;
	}

	@Override
	public int updateDivCnt(Map <String, Object> map1) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateDivCnt(map1);
	}

	@Override
	public SalaryInputVO getSalaryArticle(int salary_input_num) {
		SalaryInputVO vo = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		vo = dao.getSalaryArticle(salary_input_num);
		System.out.println("getSalaryArticle : " + vo);
		return vo;
	}

	@Override
	public int UpdateSalInput(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.UpdateSalInput(map);
	}

	@Override
	public int deleteSalary(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.deleteSalary(salary_input_num);
	}

	@Override
	public int updateTotalSal(Map<String, Object> map1) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateTotalSal(map1);
	}

	@Override
	public void updateZeroTotal(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dao.updateZeroTotal(salary_input_num);
	}

	@Override
	public int selectSalSum(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.selectSalSum(salary_input_num);
	}

	@Override
	public SalaryVO getMealCar(int salary_input_num) {
		SalaryVO vo = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		vo = dao.getMealCar(salary_input_num);
		System.out.println("getMealCar : " + vo);
		return vo;
	}

	@Override
	public PayslipVO getPayslip(Map<String, Object> map) {
		PayslipVO vo = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		vo = dao.getPayslip(map);
		System.out.println("급여명세서 : " + vo);
		return vo;
	}

	@Override
	public int insertSal(SalaryVO sal) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertSal(sal);
	}

	@Override
	public List<SalaryVO> getSelectSalaryList(Map<String, Object> map) {
		List<SalaryVO> dtos = null;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSelectSalaryList(map);
		System.out.println("getSalaryList : " + dtos);
		return dtos;
	}

	@Override
	public int insertBns(SalaryVO sal) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertBns(sal);
	}

	@Override
	public int getSelectConfirm(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getSelectConfirm(map);
	}

	@Override
	public int getUpdateConfirm(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getUpdateConfirm(map);
	}

	@Override
	public List<SalaryVO> getSeleteConfirmOne(int salary_input_num) {
		List<SalaryVO> dtos = null;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSeleteConfirmOne(salary_input_num);
		System.out.println("getSalaryList : " + dtos);
		return dtos;
	}

	@Override
	public List<SalaryVO> getSeleteConfirmTwo(int salary_input_num) {
		List<SalaryVO> dtos = null;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSeleteConfirmTwo(salary_input_num);
		System.out.println("getSalaryList : " + dtos);
		return dtos;
	}
	
	@Override
	public List<DepartVO> getDepartList() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getDepartList();
	}

	@Override
	public List<RankVO> getRankList() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getRankList();
	}
	
	@Override
	public List<MajorVO> getMajorList() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getMajorList();
	}
	
	@Override
	public String getNextAdminId() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getNextAdminId();
	}
	
	@Override
	public String getNextProfessorId() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getNextProfessorId();
	}

	@Override
	public String getNextStudentId() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getNextStudentId();
	}
	
	@Override
	public int insertAdmin(HumanVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertAdmin(vo);
	}

	@Override
	public int insertProfessor(HumanVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertProfessor(vo);
	}

	@Override
	public List<Map<String, Object>> equitmentCode() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.equitmentCode();
	}

	@Override
	public List<Map<String, Object>> equitmentKinds() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.equitmentKinds();
	}
	@Override
	public List<Map<String, Object>> equitmentList(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.equitmentList(map);
	}
	@Override
	public List<Map<String, Object>> equitmentUsingList(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.equitmentUsingList(map);
	}
	@Override
	public List<Map<String, Object>> facilityAsk() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.facilityAsk();
	}
	@Override
	public Map<String, Object> selectMember(String id) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.selectMember(id);
	}
	@Override
	public Map<String, Object> facilityAskContent(int num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.facilityAskContent(num);
	}
	@Override
	public List<String> searchName(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.searchName(map);
	}
	@Override
	public String searchDepart(String id) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.searchDepart(id);
	}
	@Override
	public int insertAsk(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertAsk(map);
	}
	@Override
	public int deleteAsk(int num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.deleteAsk(num);
	}
	@Override
	public int selectUsing(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.selectUsing(map);
	}
	@Override
	public int updateUsing(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateUsing(map);
	}
	@Override
	public int updateCnt(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateCnt(map);
	}
	@Override
	public int updateState(int num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateState(num);
	}

	@Override
	public int insertUsing(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertUsing(map);
	}

	@Override
	public int deleteUsing(int num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.deleteUsing(num);
	}

	public int insertStudent(HumanVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.insertStudent(vo);
	}

	@Override
	public int getStudentCnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getStudentCnt();
	}

	@Override
	public int getProfessorCnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getProfessorCnt();
	}
	
	@Override
	public List<HumanVO> getStudentList(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getStudentList(map);
	}

	@Override
	public List<HumanVO> getProfessorList(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getProfessorList(map);
	}

	@Override
	public List<HumanVO> getAdminList(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getAdminList(map);
	}

	@Override
	public HumanVO getStudentInfo(String id) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getStudentInfo(id);
	}

	@Override
	public HumanVO getProfessorInfo(String id) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getProfessorInfo(id);
	}

	@Override
	public HumanVO getAdminInfo(String id) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getAdminInfo(id);
	}
	@Override
	public List<Map<String, Object>> getSettingList() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getSettingList();
	}

	@Override
	public int addRank(String rank) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.addRank(rank);
	}
	@Override
	public int addSalaySet(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.addSalaySet(map);
	}
	@Override
	public List<Map<String, Object>> getSettingHumanList(String rank) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getSettingHumanList(rank);
	}
	@Override
	public int selectRank(String rank) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.selectRank(rank);
	}
	@Override
	public int deleteRank(String rank) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.deleteRank(rank);
	}
	
	@Override
	public void deleteSalaryConfirm(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dao.deleteSalaryConfirm(salary_input_num);
		
	}

	@Override
	public void deleteBonusConfirm(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dao.deleteBonusConfirm(salary_input_num);
	}

	@Override
	public int updateAdminInfo(HumanVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateAdminInfo(vo);
	}

	@Override
	public int updateProfessorInfo(HumanVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateProfessorInfo(vo);
	}

	@Override
	public int updateStudentInfo(HumanVO vo) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.updateStudentInfo(vo);
	}

	@Override
	public ArrayList<String> getProfessorListByMajor(String m_code) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getProfessorListByMajor(m_code);
	}
	
}
