package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class SalaryVO {
	
	private String id;			//사원번호
	private String name;		//이름
	private String rank;		//직급
	private String depart;		//부서
	
	private int salary_input_num;   //번호 - 시퀀스 1 증가
	private int payments_division;  // 지급 구분 - 정규/ 비정규/ 교수
	private String salary_name; 	//급여대장 명칭

	private int salary;    // 기본급
	private Timestamp salary_inday;  //급여지급일
	private int car;   // 차량 소유 0 //
	
	private int cost; // 식대 코드
	private int meal;  // 식대
	private int contract_vehicle;  //차량유지비
	
	
	
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
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
	public String getSalary_name() {
		return salary_name;
	}
	public void setSalary_name(String salary_name) {
		this.salary_name = salary_name;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public Timestamp getSalary_inday() {
		return salary_inday;
	}
	public void setSalary_inday(Timestamp salary_inday) {
		this.salary_inday = salary_inday;
	}
	public int getCar() {
		return car;
	}
	public void setCar(int car) {
		this.car = car;
	}
	
	

}
