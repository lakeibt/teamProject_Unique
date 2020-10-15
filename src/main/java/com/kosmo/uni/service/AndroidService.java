package com.kosmo.uni.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import com.kosmo.uni.vo.ConsultVO;
import com.kosmo.uni.vo.InClassHowVO;
import com.kosmo.uni.vo.TableinfoVO;
import com.kosmo.uni.vo.nfcVO;

public interface AndroidService {

	public Map<String, String> login(HttpServletRequest req);

	public Map<String, Object> MyPage(HttpServletRequest req);

	public Map<String, String> NfcTag(HttpServletRequest req);
	
	public Map<String, String> Parking(HttpServletRequest req);
	
	//근퇴 관리 리스트 출력
	public ArrayList<nfcVO> workcheck(HttpServletRequest req);
	
	//지문 등록 키값 확인
	public Map<String, String> bioCheck(HttpServletRequest req);
	
	//지문 등록 키값 저장
	public Map<String, String> bioAdd(HttpServletRequest req);

	//지문로그인 가능 여부 확인
	public Map<String, Object> bioSignCheck(HttpServletRequest req);
	//ADM 정보 보기 
	public Map<String, Object> maninfo(HttpServletRequest req);
	
	//ADM 정보 수정
	public Map<String, Object> maninfosave(HttpServletRequest req);
	
	//STU 정보 보기 
	public Map<String, Object> stuinfo(HttpServletRequest req);
	
	//STU 정보 수정
	public Map<String, Object> stuinfosave(HttpServletRequest req);
	
	//PRO 정보 보기 
	public Map<String, Object> proinfo(HttpServletRequest req);
	
	//PRO 정보 수정
	public Map<String, Object> proinfosave(HttpServletRequest req);
	
	//PRO 상담정보 가져오기
	public ArrayList<ConsultVO> getConsultList(HttpServletRequest req) throws InterruptedException, ExecutionException;
	
	//PRO 강의 정보 가져오기
	public ArrayList<InClassHowVO> getClassInHow(HttpServletRequest req) throws InterruptedException, ExecutionException;
	
	//PRO 강의 정보 가져오기 next
	public ArrayList<InClassHowVO> getClassInHowNext(HttpServletRequest req) throws InterruptedException, ExecutionException;
	
	//당근나라 리스트 가져오기
	public ArrayList<TableinfoVO> getShopList() throws InterruptedException, ExecutionException;
	
	//당근나라 리스트 가져오기2
	public ArrayList<TableinfoVO> getShopListnext(HttpServletRequest req) throws InterruptedException, ExecutionException;
	
	//당근나라 판매완료
	public Map<String, Object> getShopListclear(HttpServletRequest req);
	
	//당근나라 판매완료
	public Map<String, Object> tableinfosave(HttpServletRequest req);
	
	//STU 강의 확인
	public List<Map<String, Object>> StuCourse(HttpServletRequest req);
	public List<Map<String, Object>> StuScore(HttpServletRequest req);
	
	public List<Map<String, Object>> proCourse(HttpServletRequest req);

	//급여조회
	public Map<String, Object> getSalary(HttpServletRequest req);
}
