package kr.green.portpolio.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderVo {
	
	private int order_num;
	private int order_amount;
	private int order_cost;
	private int product_num;
	private Date order_date;
	
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
				+ ", product_num=" + product_num + ", order_date=" + order_date + "]";
	}

}
