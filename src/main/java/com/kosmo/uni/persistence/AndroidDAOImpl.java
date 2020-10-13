package com.kosmo.uni.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.InClassHowVO;
import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;
import com.kosmo.uni.vo.nfcVO;

@Repository
public class AndroidDAOImpl implements AndroidDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> confirmIdPwdStu(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.confirmIdPwdStu(id);
	}
	
	@Override
	public HashMap<String, String> confirmIdPwdAdm(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.confirmIdPwdAdm(id);
	}
	
	@Override
	public HashMap<String, String> confirmIdPwdPro(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.confirmIdPwdPro(id);
	}

	@Override
	public StudentVO getStudentInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getStudentInfo(id);
	}

	@Override
	public Manager getAdminInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getAdminInfo(id);
	}
	
	@Override
	public HumanVO getProinInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getProinInfo(id);
	}
	
	@Override
	public int whatNfc(Map<String, String> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.whatNfc(map);
	}

	@Override
	public int hiNfc(String pnum) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.hiNfc(pnum);
	}

	@Override
	public int byeNfc(Map<String, String> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.byeNfc(map);
	}

	@Override
	public int whatCar(String carNum) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.whatCar(carNum);
	}

	@Override
	public String carNum(String carNum) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.carNum(carNum);
	}
	
	@Override
	public int todayCar(Map<String, String> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.todayCar(map);
	}

	@Override
	public int hiParking(String carNum) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.hiParking(carNum);
	}

	@Override
	public int byeParking(Map<String, String> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.byeParking(map);
	}

	@Override
	public ArrayList<nfcVO> workchecklist(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.workchecklist(id);
	}

	@Override
	public Manager getManinfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getManinfo(id);
	}

	@Override
	public int maninfosave(Map<String, Object> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.maninfosave(map);
	}

	@Override
	public StudentVO getStuInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getStuInfo(id);
	}

	@Override
	public int stuinfosave(Map<String, Object> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.stuinfosave(map);
	}

	@Override
	public HumanVO getProInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getProInfo(id);
	}

	@Override
	public int Proinfosave(Map<String, Object> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.Proinfosave(map);
	}

	@Override
	public List<Map<String, Object>> getMyCourse(Map<String, Object> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getMyCourse(map);
	}

	@Override
	public List<Map<String, Object>> getMyScore(Map<String, Object> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getMyScore(map);
	}
	
	@Override
	public List<Map<String, Object>> getMyCourse_pro(Map<String, Object> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getMyCourse_pro(map);
	}

	@Override
	public ArrayList<InClassHowVO> getclasscheck(String name) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getclasscheck(name);
	}

	@Override
	public ArrayList<InClassHowVO> getclasschecknext(String title) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getclasschecknext(title);
	}

}
