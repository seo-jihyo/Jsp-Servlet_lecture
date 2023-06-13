package com.kosa.ex04;

public class Emp { //멤버변수
	private int empno;
	private String name;
	private int pay;
	
	public Emp() { //생성자함수
		this.name = "서지효";
		this.empno = 9999;
		this.pay = 56789;
	}

	//getter setter
	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	//toString
	@Override
	public String toString() {
		return "Emp [empno=" + empno + ", name=" + name + ", pay=" + pay + "]";
	}
	
	
}
