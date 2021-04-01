package kr.green.portpolio.vo;

import java.util.Arrays;

public class UserVo {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_age;
	private String user_phone;
	private String user_email;
	private String user_address;
	private String user_homeCall;
	private String user_nickName;
	private String user_gender;
	private int user_grade = 2;
	
	public String getUser_nickName() {
		return user_nickName;
	}
	public void setUser_nickName(String user_nickName) {
		this.user_nickName = user_nickName;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public int getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(int user_grade) {
		this.user_grade = user_grade;
	}
	public String getUser_age() {
		return user_age;
	}
	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_homeCall() {
		return user_homeCall;
	}
	public void setUser_homeCall(String user_homeCall) {
		this.user_homeCall = user_homeCall;
	}
	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_age="
				+ user_age + ", user_phone=" + user_phone + ", user_email=" + user_email + ", user_address="
				+ user_address + ", user_homeCall=" + user_homeCall + ", user_nickName=" + user_nickName
				+ ", user_gender=" + user_gender + ", user_grade=" + user_grade + "]";
	}
	
	

}
