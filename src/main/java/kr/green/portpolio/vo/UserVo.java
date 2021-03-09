package kr.green.portpolio.vo;

public class UserVo {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private int user_age;
	private String user_phone;
	private String user_email;
	private String user_address;
	private int user_grade = 1;
	
	
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
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
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
	public int getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(int user_grade) {
		this.user_grade = user_grade;
	}
	public String getNum1() {
		String arr[] = user_phone.split("-");
		return arr[0];
	}
	public String getNum2() {
		String arr[] = user_phone.split("-");
		return arr[1];
	}
	public String getNum3() {
		String arr[] = user_phone.split("-");
		return arr[2];
	}
	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_age="
				+ user_age + ", user_phone=" + user_phone + ", user_email=" + user_email + ", user_address="
				+ user_address + ", user_grade=" + user_grade + "]";
	}
	

}
