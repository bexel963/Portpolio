package kr.green.portpolio.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portpolio.service.ProductService;
import kr.green.portpolio.service.UserService;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	/* 홈 */
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView mv){
		
		ArrayList<ProductVo> productList = productService.getProductList();
		ArrayList<FileVo> fileList = productService.getFileList();
		System.out.println("DB에서 가져온 제품 리스트 정보 : " + productList);
		System.out.println("DB에서 가져온 파일 리스트 정보 : " + fileList);
		
		mv.addObject("productList", productList);
		mv.addObject("fileList", fileList);
	    mv.setViewName("/main/home");
	    return mv;
	}
	
	/* 로그인 GET */
	@RequestMapping(value= "/login", method = RequestMethod.GET)
	public ModelAndView loginGet(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/main/login");
	    return mv;
	}
	/* 로그인 POST */
	@RequestMapping(value= "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(Locale locale, ModelAndView mv, String user_id, String user_pw){
		UserVo isUser = userService.isUser(user_id, user_pw);
		mv.addObject("user", isUser);	// 인터셉터가 가로챌수있게 컨트롤러에서 화면으로 데이터를 전송해준다.
		if(isUser != null) {
			System.out.println("로그인 성공 : " + isUser);
			mv.setViewName("redirect:/");
		}else {
			System.out.println("로그인 실패");
			mv.setViewName("redirect:/login");
		}
	    return mv;
	}
	/* 로그아웃 */
	@RequestMapping(value= "/logout", method = RequestMethod.GET)
	public ModelAndView logoutGet(ModelAndView mv, HttpServletRequest request){
		request.getSession().removeAttribute("user");
		System.out.println("세션 정보 삭제");
		mv.setViewName("redirect:/");
	    return mv;
	}
	/* 회원가입 GET */
	@RequestMapping(value= "/signup", method = RequestMethod.GET)
	public ModelAndView signupGet(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/main/signup");
	    return mv;
	}
	/* 회원가입 POST */
	@RequestMapping(value= "/signup", method = RequestMethod.POST)
	public ModelAndView signupPost(Locale locale, ModelAndView mv, UserVo user){
		System.out.println("입력한 회원가입 정보: " + user);
		userService.userRegis(user);
	    mv.setViewName("redirect:/");
	    return mv;
	}
	/* 회원정보 GET */
	@RequestMapping(value= "/userInfo", method = RequestMethod.GET)
	public ModelAndView userInfoGet(Locale locale, ModelAndView mv){
		ArrayList<UserVo> userList = new ArrayList<UserVo>();
		userList = userService.getAllUser();
		mv.addObject("list", userList);
	    mv.setViewName("/main/userInfo");
	    return mv;
	}
	/* 회원등급 변경 */
	@RequestMapping(value = "/grade/modify", method = RequestMethod.POST)		
	@ResponseBody
	public Object gradeModifyPost(@RequestBody UserVo userVo) {	
		userService.updateGrade(userVo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		return map;
	}
	
}
