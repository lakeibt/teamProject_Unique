package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.AdminVO;

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

		return dtos;
	}

	@Override
	public List<AdminVO> getAttendance_List_Search(Map<String, Object> map) {
		List<AdminVO> dtos = null;

		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		dtos = dao.getAttendance_List_Search(map);

		System.out.println("dao_dtos" + dtos);

		for (String key : map.keySet()) {
			String value = (String) map.get(key);
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
	
	

}
