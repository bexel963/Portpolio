package kr.green.portpolio.vo;

public class PaymentVo {
	
	private int payment_num;
	private String payment_way;
	private int payment_cost;
	private int order_num;
	private String user_id;
	
	public int getPayment_num() {
		return payment_num;
	}
	public void setPayment_num(int payment_num) {
		this.payment_num = payment_num;
	}
	public String getPayment_way() {
		return payment_way;
	}
	public void setPayment_way(String payment_way) {
		this.payment_way = payment_way;
	}
	public int getPayment_cost() {
		return payment_cost;
	}
	public void setPayment_cost(int payment_cost) {
		this.payment_cost = payment_cost;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "PaymentVo [payment_num=" + payment_num + ", payment_way=" + payment_way + ", payment_cost="
				+ payment_cost + ", order_num=" + order_num + ", user_id=" + user_id + "]";
	}
	
	
}
