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

}
