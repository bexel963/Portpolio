package kr.green.portpolio.vo;

public class CommentFileVo {
	private int comment_files_num;
	private int comment_num;
	private String file_oriName;
	private String file_name;
	public int getComment_files_num() {
		return comment_files_num;
	}
	public void setComment_files_num(int comment_files_num) {
		this.comment_files_num = comment_files_num;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public String getFile_oriName() {
		return file_oriName;
	}
	public void setFile_oriName(String file_oriName) {
		this.file_oriName = file_oriName;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	@Override
	public String toString() {
		return "CommentFileVo [comment_files_num=" + comment_files_num + ", comment_num=" + comment_num
				+ ", file_oriName=" + file_oriName + ", file_name=" + file_name + "]";
	}
	
	
}
