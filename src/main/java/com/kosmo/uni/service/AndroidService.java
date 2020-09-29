package com.kosmo.uni.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AndroidService {

	public Map<String, String> login(HttpServletRequest req);

	public Map<String, Object> MyPage(HttpServletRequest req);

	public Map<String, String> NfcTag(HttpServletRequest req);

}
