package kr.green.portpolio.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ProductVo {
	
	private int product_num;
	private String product_category;	// 1.건강 2.생활 3.뷰티 4.컴퓨터 5.기타
	private String product_title;
	private String product_content;
	private int product_amount;
	private int product_cost;
	private Date product_registerDate;
	private String product_origin;
	
	public String getProduct_origin() {
		return product_origin;
	}
	public void setProduct_origin(String product_origin) {
		this.product_origin = product_origin;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getProduct_category() {
		return product_category;
	}
	public int getProduct_categoryNum() {
		if(product_category.equals("건강")) return 1;
		if(product_category.equals("생활")) return 2;
		if(product_category.equals("뷰티")) return 3;
		if(product_category.equals("컴퓨터관련")) return 4;
		if(product_category.equals("기타")) return 5;
		return 0;
		
	}
	public void setProduct_category(int product_category) {
		switch(product_category) {
		case 1:
			this.product_category = "건강";
			break;
		case 2:  
			this.product_category = "생활";
			break;
		case 3:  
			this.product_category = "뷰티";
			break;
		case 4:  
			this.product_category = "컴퓨터";
			break;
		case 5:  
			this.product_category = "기타";
			break;
		}
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
				+ ", product_cost=" + product_cost + ", product_registerDate=" + product_registerDate
				+ ", product_origin=" + product_origin + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + product_num;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass()) {
			if(obj instanceof OrderVo) {
				if(((OrderVo) obj).getProduct_num() == this.getProduct_num()) {
					return true;
				}
				else {
					return false;
				}
			}
			return false;
		}
		ProductVo other = (ProductVo) obj;
		if (product_num != other.product_num)
			return false;
		return true;
	}
	
	
	
	
	
	
}
