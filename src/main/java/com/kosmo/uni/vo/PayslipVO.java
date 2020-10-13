package com.kosmo.uni.vo;

import java.sql.Date;

public class PayslipVO {

	private String id;			//사원번호
	private String name;			//이름
	private Date enterday;			//입사일
	private String rank;			//직급
	private String depart;			//부서
	private String depart_name;			//부서
	private int salary_input_num;		//번호 
	private int payments_division;		//지급 구분 - 정규/ 비정규/ 교수
	private int division_cnt;			//급여 받는 정규직사원 명수
	private String salary_name;			//급여명
	private String email;				//이메일
	private Date salary_inday;		//급여지급일
	private int salary_division;   //급여 구분 - 급여 / 상여
	private int rate;   //상여 퍼센트
	private int salary;				//급여
	private int salary_total;		//총사원 급여
	private int car;				//차량 소유 
	private int meal;				//식대
	private int contract_vehicle;	//차량유지비
	
	//급여 확정 후 
	private int pay;
	private int paytotal;
	private int bonustotal;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getEnterday() {
		return enterday;
	}
	public void setEnterday(Date enterday) {
		this.enterday = enterday;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public int getSalary_input_num() {
		return salary_input_num;
	}
	public void setSalary_input_num(int salary_input_num) {
		this.salary_input_num = salary_input_num;
	}
	public int getPayments_division() {
		return payments_division;
	}
	public void setPayments_division(int payments_division) {
		this.payments_division = payments_division;
	}
	public int getDivision_cnt() {
		return division_cnt;
	}
	public void setDivision_cnt(int division_cnt) {
		this.division_cnt = division_cnt;
	}
	public String getSalary_name() {
		return salary_name;
	}
	public void setSalary_name(String salary_name) {
		this.salary_name = salary_name;
	}
	public Date getSalary_inday() {
		return salary_inday;
	}
	public void setSalary_inday(Date salary_inday) {
		this.salary_inday = salary_inday;
	}
	public int getSalary_division() {
		return salary_division;
	}
	public void setSalary_division(int salary_division) {
		this.salary_division = salary_division;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getSalary_total() {
		return salary_total;
	}
	public void setSalary_total(int salary_total) {
		this.salary_total = salary_total;
	}
	public int getCar() {
		return car;
	}
	public void setCar(int car) {
		this.car = car;
	}
	public int getMeal() {
		return meal;
	}
	public void setMeal(int meal) {
		this.meal = meal;
	}
	public int getContract_vehicle() {
		return contract_vehicle;
	}
	public void setContract_vehicle(int contract_vehicle) {
		this.contract_vehicle = contract_vehicle;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getPaytotal() {
		return paytotal;
	}
	public void setPaytotal(int paytotal) {
		this.paytotal = paytotal;
	}
	public int getBonustotal() {
		return bonustotal;
	}
	public void setBonustotal(int bonustotal) {
		this.bonustotal = bonustotal;
	}
	
	
}
