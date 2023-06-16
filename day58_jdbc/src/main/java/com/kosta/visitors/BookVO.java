package com.kosta.visitors;

public class BookVO { // model
	/*
	 * create table guestBook ( num number, name varchar2(50) not null, email
	 * varchar2(50), home varchar2(50), contents varchar2(2000) not null ) SEGMENT
	 * creation IMMEDIATE;
	 */
	private int num;
	private String name, email, home, contents;
	
	public BookVO() { //usebean으로 객체 생성할 때 사용

	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
}
