package com.kosmo.uni.service;

import java.io.FileInputStream;
import java.io.InputStream;

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
	public void initialize() {
		try {
			InputStream serviceAccount = this.getClass().getClassLoader().getResourceAsStream("./teamunique-dae26-firebase-adminsdk-w6e2x-bb00a614c7.json");

			FirebaseOptions options = new FirebaseOptions.Builder()
				.setCredentials(GoogleCredentials.fromStream(serviceAccount))
				.setDatabaseUrl("https://teamunique-dae26.firebaseio.com")
				.build();

			FirebaseApp.initializeApp(options);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Firestore getFirebase() {
		return FirestoreClient.getFirestore();
	}
}
