package kr.green.portpolio.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.UserDao;
import kr.green.portpolio.vo.UserVo;
@Service
public class UserServiceImp implements UserService {
	
	@Autowired
	UserDao userDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	//회원정보 가져옴
	@Override
	public UserVo getUser(String id) {
		return userDao.getUser(id);
	}
	
	//비밀번호 암호화 후 회원정보 등록
	@Override
	public void userRegis(UserVo user) {
		UserVo tmp = userDao.getUser(user.getUser_id());
		if(tmp != null) {
			return;
		}
		String pw = user.getUser_pw();
		String encPw = passwordEncoder.encode(pw);
		user.setUser_pw(encPw);
		userDao.userRegis(user);
	}
	
	//아이디, 비밀번호 일치 확인
	@Override
	public UserVo isUser(String id, String pw) {
		UserVo user = userDao.getUser(id);
		
		if(user == null) {
			System.out.println("아이디 오류");
			return null;
		}
		if(passwordEncoder.matches(pw, user.getUser_pw())) {	
			return user;										
		}
		System.out.println("비밀번호 오류");
		return null;
		
	}

	@Override
	public ArrayList<UserVo> getAllUser() {
		
		return userDao.getAllUser();
	}

	@Override
	public void updateGrade(UserVo userVo) {
		userDao.updateGrade(userVo);
	}

	@Override
	public UserVo getUser(HttpServletRequest request) {
		return (UserVo)request.getSession().getAttribute("user");		// 세션에서 user정보 가져오는 코드
	}
	
}
