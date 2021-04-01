package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.UserVo;

public interface UserDao {
	public UserVo getUser(@Param("id")String id);
	
	public UserVo getUser2(@Param("user_nickName")String user_nickName);

	public void userRegis(@Param("user")UserVo user);

	public ArrayList<UserVo> getAllUser();

	public void updateGrade(@Param("user")UserVo userVo);

	public void modifyUser(@Param("user")UserVo user);


}
