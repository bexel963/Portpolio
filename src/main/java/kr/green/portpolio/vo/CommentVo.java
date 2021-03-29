package kr.green.portpolio.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommentVo {
	private int comment_num;
	private int product_num;
	private String user_id;
	private String comment_content;
	private Date comment_registerDate;
	private int star_view;
	
	public int getStar_view() {
		return star_view;
	}
	public void setStar_view(int star_view) {
		this.star_view = star_view;
	}
	public void setComment_registerDate(Date comment_registerDate) {
		this.comment_registerDate = comment_registerDate;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
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
	public String getComment_content() {
		return comment_content;
	}
	public String getComment_registerDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dateString = simpleFormat.format(comment_registerDate);
		return dateString;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public void setComment_registerDate(String comment_registerDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date2 = simpleFormat2.parse(comment_registerDate);
		this.comment_registerDate = date2;
	}
	@Override
	public String toString() {
		return "CommentVo [comment_num=" + comment_num + ", product_num=" + product_num + ", user_id=" + user_id
				+ ", comment_content=" + comment_content + ", comment_registerDate=" + comment_registerDate
				+ ", star_view=" + star_view + "]";
	}
	
	
}
