package com.kosmo.uni.service;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.api.core.ApiFuture;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.WriteResult;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;
import com.kosmo.uni.persistence.EduDAO;
import com.kosmo.uni.vo.ConsultVO;

@Service
public class EduServiceImpl implements EduService {

	@Autowired
	EduDAO eduDAO;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	public static final String COLLECTION_NAME = "teamUnique_Spring";

	// 학생, 교수, 관리자 등록
	@Override
	public void insertUser(HttpServletRequest req, Model model) {
		String userid = req.getParameter("userID");
		String passwd = req.getParameter("userPWD");
		String username = req.getParameter("userName");
		String authority = req.getParameter("authority");

		String enc_pwd = passwordEncoder.encode(passwd);

		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("passwd", enc_pwd);
		map.put("username", username);
		map.put("authority", authority);

		int insertCnt = eduDAO.insertUser(map);
		model.addAttribute("insertCnt", insertCnt);
	}

}
