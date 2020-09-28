package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.ParkVO;
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
		
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]:" + key + ", [value]:" + value);
		}

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

}
