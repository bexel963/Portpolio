package kr.green.portpolio.vo;

public class DeliveryVo {
	private String recipient;
	private int delivery_num;
	private int payment_num;
	private String delivery_address;
	private String delivery_state = "대기중";
	private String demand;
	
	public String getDemand() {
		return demand;
	}
	public void setDemand(String demand) {
		this.demand = demand;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public int getDelivery_num() {
		return delivery_num;
	}
	public void setDelivery_num(int delivery_num) {
		this.delivery_num = delivery_num;
	}
	public int getPayment_num() {
		return payment_num;
	}
	public void setPayment_num(int payment_num) {
		this.payment_num = payment_num;
	}
	public String getDelivery_address() {
		return delivery_address;
	}
	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
	public String getDelivery_state() {
		return delivery_state;
	}
	public void setDelivery_state(String delivery_state) {
		this.delivery_state = delivery_state;
	}
	
	@Override
	public String toString() {
		return "DeliveryVo [recipient=" + recipient + ", delivery_num=" + delivery_num + ", payment_num=" + payment_num
				+ ", delivery_address=" + delivery_address + ", delivery_state=" + delivery_state + ", demand=" + demand
				+ "]";
	}
	
}
