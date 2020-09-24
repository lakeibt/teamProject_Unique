package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVO;
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
	public List<AdminVO> getAttendance_List(Map<String, Object> map) {
		List<AdminVO> dtos = null;
		
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getAttendance_List(map);
		System.out.println("dao_dtos" + dtos);
		return dtos;
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



}
