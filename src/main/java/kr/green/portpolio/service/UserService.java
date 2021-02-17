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

}
