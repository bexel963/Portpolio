package kr.green.portpolio.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ProductVo {
	
	private int product_num;
	private int product_category;	// 1.생활 2.주방 3.뷰티 4.컴퓨터 5.기타
	private String product_title;
	private String product_content;
	private int product_amount;
	private int product_cost;
	private Date product_registerDate;
	
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public int getProduct_category() {
		return product_category;
	}
	public void setProduct_category(int product_category) {
		this.product_category = product_category;
	}
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public int getProduct_amount() {
		return product_amount;
	}
	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}
	public int getProduct_cost() {
		return product_cost;
	}
	public void setProduct_cost(int product_cost) {
		this.product_cost = product_cost;
	}
	public String getProduct_registerDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dateString = simpleFormat.format(product_registerDate);
		return dateString;
	}
	public void setProduct_registerDate(Date registerDate) {
		this.product_registerDate = registerDate;
	}
	public void setRegisterDate(String registerDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date2 = simpleFormat2.parse(registerDate);
		this.product_registerDate = date2;
	}
	
	@Override
	public String toString() {
		return "ProductVo [product_num=" + product_num + ", product_category=" + product_category + ", product_title="
				+ product_title + ", product_content=" + product_content + ", product_amount=" + product_amount
				+ ", product_cost=" + product_cost + ", registerDate=" + product_registerDate + "]";
	}
	
	
	
	
	
}
