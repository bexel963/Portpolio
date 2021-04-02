package kr.green.portpolio.vo;

public class AddressVo {
	private int address_num;
	private String delivery_name;
	private String recipient;
	private String phone_call;
	private String home_call;
	private String address;
	private String user_id;
	public int getAddress_num() {
		return address_num;
	}
	public void setAddress_num(int address_num) {
		this.address_num = address_num;
	}
	public String getDelivery_name() {
		return delivery_name;
	}
	public void setDelivery_name(String delivery_name) {
		this.delivery_name = delivery_name;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getPhone_call() {
		return phone_call;
	}
	public void setPhone_call(String phone_call) {
		this.phone_call = phone_call;
	}
	public String getHome_call() {
		return home_call;
	}
	public void setHome_call(String home_call) {
		this.home_call = home_call;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "AddressVo [address_num=" + address_num + ", delivery_name=" + delivery_name + ", recipient=" + recipient
				+ ", phone_call=" + phone_call + ", home_call=" + home_call + ", address=" + address + ", user_id="
				+ user_id + "]";
	}
	
	
}
