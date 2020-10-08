package com.kosmo.uni.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kosmo.uni.vo.nfcVO;

public interface AndroidService {

	public Map<String, String> login(HttpServletRequest req);

	public Map<String, Object> MyPage(HttpServletRequest req);

	public Map<String, String> NfcTag(HttpServletRequest req);
	
	public Map<String, String> Parking(HttpServletRequest req);
	
	//근퇴 관리 리스트 출력
	public ArrayList<nfcVO> workcheck(HttpServletRequest req);
	
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

}
