package com.bluebiz.board.user.domain;

import org.springframework.stereotype.Repository;

@Repository
public class UserDto{
	private long unum;
	private String user_id;
	private String user_password;
	private String name;
	private int fjumin;
	private int ljumin;
	private String email;
	private char gender;
	private String addr;
	private int phone;
	
	public long getUnum() {
		return unum;
	}
	public void setUnum(long unum) {
		this.unum = unum;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFjumin() {
		return fjumin;
	}
	public void setFjumin(int fjumin) {
		this.fjumin = fjumin;
	}
	public int getLjumin() {
		return ljumin;
	}
	public void setLjumin(int ljumin) {
		this.ljumin = ljumin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		return "UserDto [unum=" + unum + ", user_id=" + user_id + ", user_password=" + user_password + ", name=" + name
				+ ", fjumin=" + fjumin + ", ljumin=" + ljumin + ", email=" + email + ", gender=" + gender + ", addr="
				+ addr + ", phone=" + phone + "]";
	}
}
