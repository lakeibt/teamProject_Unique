package com.kosmo.uni.service;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.Firestore;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.cloud.FirestoreClient;

@Service
public class FirebaseInitialize {
	@PostConstruct
	public Firestore initialize() {
		try {
			String path = EduServiceImpl.class.getResource("").getPath();
			
			FileInputStream serviceAccount = new FileInputStream(path + "teamunique-dae26-firebase-adminsdk-w6e2x-bb00a614c7.json");
			
			FirebaseApp firebaseApp = null;
			List<FirebaseApp> firebaseApps = FirebaseApp.getApps();
			 
			if(firebaseApps != null && !firebaseApps.isEmpty()){
			    for(FirebaseApp app : firebaseApps){
			        if(app.getName().equals(FirebaseApp.DEFAULT_APP_NAME)) {
			            firebaseApp = app;
			            
			        }
			    }
			}else{
			    FirebaseOptions options = new FirebaseOptions.Builder()
			        .setCredentials(GoogleCredentials.fromStream(serviceAccount))
			        .setDatabaseUrl("https://teamunique-dae26.firebaseio.com")
			        .build();
			    firebaseApp = FirebaseApp.initializeApp(options);
			}
			return FirestoreClient.getFirestore();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return FirestoreClient.getFirestore();
	}
	
	public Firestore getFirebase() {
		return FirestoreClient.getFirestore();
	}
}
