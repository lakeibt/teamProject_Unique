package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.SalaryInputVo;

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



}
