package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.UserVo;

public interface UserDao {
	public UserVo getUser(@Param("id")String id);

	public void userRegis(@Param("user")UserVo user);

	public ArrayList<UserVo> getAllUser();

	public void updateGrade(@Param("user")UserVo userVo);
}
