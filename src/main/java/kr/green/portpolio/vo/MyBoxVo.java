package kr.green.portpolio.vo;

public class MyBoxVo {
	private int myBox_num;
	private int product_num;
	private String user_id;
	
	public int getMyBox_num() {
		return myBox_num;
	}
	public void setMyBox_num(int myBox_num) {
		this.myBox_num = myBox_num;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "MyBoxVo [myBox_num=" + myBox_num + ", product_num=" + product_num + ", user_id=" + user_id + "]";
	}
	
	
}
