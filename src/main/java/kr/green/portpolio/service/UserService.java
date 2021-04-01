package kr.green.portpolio.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.portpolio.vo.UserVo;

public interface UserService {

	public UserVo getUser(String id);

	public void userRegis(UserVo user);

	public UserVo isUser(String id, String pw);

	public ArrayList<UserVo> getAllUser();

	public void updateGrade(UserVo userVo);

	public UserVo getUser(HttpServletRequest request);

	public UserVo getUser2(String user_nickName);

	public void modifyUser(UserVo user, String user_pw);

}
