package kr.green.portpolio.vo;

public class LikeVo {
	private int num;
	private int boardNum;
	private String userId;
	private int up;
	
	public LikeVo(int num, String id) {
		userId = id;
		boardNum = num;
	}
	public LikeVo() {}	// 기본 생성자 : 위에 생성자가 있으면 기본생성자가 있어야한다.
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getUp() {
		return up;
	}
	public void setUp(int up) {
		this.up = up;
	}
	@Override
	public String toString() {
		return "LikeVo [num=" + num + ", boardNum=" + boardNum + ", userId=" + userId + ", up=" + up + "]";
	}
		
}
