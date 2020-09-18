package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class SalaryInputVo {
	private int salary_input_num;  //번호 - 시퀀스 1 증가
	private int salary_division;   //급여 구분
	private int Payments_division;  // 지급 구분
	private Timestamp payments_start;  //지급 시작 기간
	private Timestamp payments_end;   //지급 종료 기간
	private Timestamp salary_inday;   //지급일
	private Timestamp payments_month;  //지급연월
	private String salary_name; //급여대장 명칭
	
	
	public int getSalary_input_num() {
		return salary_input_num;
	}
	public void setSalary_input_num(int salary_input_num) {
		this.salary_input_num = salary_input_num;
	}
	public int getSalary_division() {
		return salary_division;
	}
	public void setSalary_division(int salary_division) {
		this.salary_division = salary_division;
	}
	public int getPayments_division() {
		return Payments_division;
	}
	public void setPayments_division(int payments_division) {
		Payments_division = payments_division;
	}
	public Timestamp getPayments_start() {
		return payments_start;
	}
	public void setPayments_start(Timestamp payments_start) {
		this.payments_start = payments_start;
	}
	public Timestamp getPayments_end() {
		return payments_end;
	}
	public void setPayments_end(Timestamp payments_end) {
		this.payments_end = payments_end;
	}
	public Timestamp getSalary_inday() {
		return salary_inday;
	}
	public void setSalary_inday(Timestamp salary_inday) {
		this.salary_inday = salary_inday;
	}
	public Timestamp getPayments_month() {
		return payments_month;
	}
	public void setPayments_month(Timestamp payments_month) {
		this.payments_month = payments_month;
	}
	public String getSalary_name() {
		return salary_name;
	}
	public void setSalary_name(String salary_name) {
		this.salary_name = salary_name;
	}
	
	
	
	
}
