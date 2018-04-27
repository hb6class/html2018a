package com.bit.bean;

public class StudentBean {
	int num;
	String name;
	int kor,eng,math;
	
	public int getNum() {
		return num;
	}
	public StudentBean setNum(int num) {
		this.num = num;
		return this;
	}
	public String getName() {
		return name;
	}
	public StudentBean setName(String name) {
		this.name = name;
		return this;
	}
	public int getKor() {
		return kor;
	}
	public StudentBean setKor(int kor) {
		this.kor = kor;
		return this;
	}
	public int getEng() {
		return eng;
	}
	public StudentBean setEng(int eng) {
		this.eng = eng;
		return this;
	}
	public int getMath() {
		return math;
	}
	public StudentBean setMath(int math) {
		this.math = math;
		return this;
	}
	@Override
	public String toString() {
		return "num:"+getNum()+","+"name:"+getName();
	}
}
