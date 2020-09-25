package com.kosmo.uni.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.uni.persistence.ProfessorDAO;

@Service
public class ProfessorServiceImpl implements ProfessorService{
	
	@Autowired
	ProfessorDAO proDAO;

}
