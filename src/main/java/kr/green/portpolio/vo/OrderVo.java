package kr.green.portpolio.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderVo {
	private String user_id;
	private int order_num;
	private int order_amount;
	private int order_cost;
	private int product_num;
	private String payment_completion;
	private Date order_date;
	private int total_amount;
	private int total_cost;
	private String isDel;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public int getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(int total_cost) {
		this.total_cost = total_cost;
	}
	public String getPayment_completion() {
		return payment_completion;
	}
	public void setPayment_completion(String payment_completion) {
		this.payment_completion = payment_completion;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public int getOrder_amount() {
		return order_amount;
	}
	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}
	public int getOrder_cost() {
		return order_cost;
	}
	public void setOrder_cost(int order_cost) {
		this.order_cost = order_cost;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getOrder_date() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dateString = simpleFormat.format(order_date);
		return dateString;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public void setOrderDate(String orderDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date2 = simpleFormat2.parse(orderDate);
		this.order_date = date2;
	}
	
	@Override
	public String toString() {
		return "OrderVo [order_num=" + order_num + ", order_amount=" + order_amount + ", order_cost=" + order_cost
				+ ", product_num=" + product_num + ", payment_completion=" + payment_completion + ", order_date="
				+ order_date + ", total_amount=" + total_amount + ", total_cost=" + total_cost + "]";
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
			if(obj instanceof ProductVo) {
				if(((ProductVo) obj).getProduct_num() == this.getProduct_num()) {
					return true;
				}else {
					return false;
				}
			}
			return false;
			
		}
			
		OrderVo other = (OrderVo) obj;
		if (product_num != other.product_num)
			return false;
		return true;
	}
	
}
