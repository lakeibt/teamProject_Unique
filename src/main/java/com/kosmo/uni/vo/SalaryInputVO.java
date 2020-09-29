package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class SalaryInputVO {
	private int salary_input_num;  //번호 - 시퀀스 1 증가
	private int salary_division;   //급여 구분 - 급여 / 상여
	private int payments_division;  // 지급 구분 - 정규/ 비정규/ 교수
	private Timestamp payments_start;  //지급 시작 기간
	private Timestamp payments_end;   //지급 종료 기간
	private Timestamp salary_inday;   //지급일
	private String payments_month;  //지급연월
	private String salary_name; //급여대장 명칭
	private int salary_confirm; // 급여 확정 코드
	private int division_cnt; // 급여 정규직 인원수 코드
	private int salary_total; // 급여 합계

	public int getDivision_cnt() {
		return division_cnt;
	}
	public void setDivision_cnt(int division_cnt) {
		this.division_cnt = division_cnt;
	}
	public int getSalary_total() {
		return salary_total;
	}
	public void setSalary_total(int salary_total) {
		this.salary_total = salary_total;
	}
	public int getSalary_confirm() {
		return salary_confirm;
	}
	public void setSalary_confirm(int salary_confirm) {
		this.salary_confirm = salary_confirm;
	}
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
		return payments_division;
	}
	public void setPayments_division(int payments_division) {
		this.payments_division = payments_division;
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
	public String getPayments_month() {
		return payments_month;
	}
	public void setPayments_month(String payments_month) {
		this.payments_month = payments_month;
	}
	public String getSalary_name() {
		return salary_name;
	}
	public void setSalary_name(String salary_name) {
		this.salary_name = salary_name;
	}
	
}
