package com.kosmo.uni.vo;

import java.util.ArrayList;

public class MajorProfessorVO {
	private String m_code;
	private String m_name;
	private ArrayList<String> professors;
	
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public ArrayList<String> getProfessors() {
		return professors;
	}
	public void setProfessors(ArrayList<String> professors) {
		this.professors = professors;
	}
}
