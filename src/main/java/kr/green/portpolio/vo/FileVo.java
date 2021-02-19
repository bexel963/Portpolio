package kr.green.portpolio.vo;

public class FileVo {
	private int file_num;
	private int product_num;
	private String file_oriName;
	private String file_name;
	private String main;
	
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
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
		return "FileVo [file_num=" + file_num + ", product_num=" + product_num + ", file_oriName=" + file_oriName
				+ ", file_name=" + file_name + ", main=" + main + "]";
	}
	
	
	
}
