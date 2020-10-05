package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.PayslipVO;
import com.kosmo.uni.vo.SalaryVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int getAttendance_Cnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getAttendance_Cnt();
	}
	
	@Override
	public int getAttendance_Search_Cnt(Map<String, Object> map) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		return dao.getAttendance_Search_Cnt(map);
	}
	
	@Override
	public List<AdminVO> getAttendance_List(Map<String, Object> map) {
		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getAttendance_List(map);

		return dtos;
	}

	@Override
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
	public int getSalary_Cnt() {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		return dao.getSalary_Cnt();
	}

	@Override
	public List<AdminVO> getSalary_list_human(Map<String, Object> map) {
		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSalary_list_human(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
	}

	@Override
	public List<AdminVO> getSalary_list_human_Search(Map<String, Object> map) {
		List<AdminVO> dtos = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSalary_list_human_Search(map);
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
	public List<AdminVO> getSalary_list_month(Map<String, Object> map) {
		List<AdminVO> dtos = null;
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSalary_list_human(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
	}

	@Override
	public List<AdminVO> getSalary_list_month_Search(Map<String, Object> map) {

		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getSalary_list_month_Search(map);

		System.out.println("dao_dtos" + dtos);

		for (String key : map.keySet()) {
			String value = (String) map.get(key);
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		return dtos;
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
	public void deleteSalaryConfirm(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dao.deleteSalaryConfirm(salary_input_num);
		
	}

	@Override
	public void deleteBonusConfirm(int salary_input_num) {
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dao.deleteBonusConfirm(salary_input_num);
	}
}
