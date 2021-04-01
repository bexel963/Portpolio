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
		ArrayList<FileVo> MainfileList = productService.getMainFileList();
		
		ArrayList<FileVo> suffleList = productService.suffle(MainfileList);
		
		mv.addObject("suffleList", suffleList);
		mv.addObject("productList", productList);
		mv.addObject("fileList", MainfileList);
	    mv.setViewName("/main/home");
	    return mv;
	}
	
	/* 카테고리 */
	@RequestMapping(value= "/category", method = RequestMethod.GET)
	public ModelAndView categoryGet(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/main/category");
	    return mv;
	}
	
	/* 카테고리 상세 */
	@RequestMapping(value= "/categoryDetail", method = RequestMethod.GET)
	public ModelAndView categoryDetailGet(Locale locale, ModelAndView mv, Integer product_category){
		ArrayList<ProductVo> productList = productService.getProductList(product_category);
		ArrayList<FileVo> fileList = productService.getMainFileList();
		
		mv.addObject("fileList", fileList);
		mv.addObject("productList", productList);
	    mv.setViewName("/main/categoryDetail");
	    return mv;
	}
	
	/* HOT */
	@RequestMapping(value= "/hot10", method = RequestMethod.GET)
	public ModelAndView hotGet(Locale locale, ModelAndView mv){
		
		ArrayList<ProductVo> productList = productService.getProductSaleRankList();
		ArrayList<FileVo> fileList = productService.getMainFileList();
	
		mv.addObject("fileList", fileList);
		mv.addObject("productList", productList);
	    mv.setViewName("/main/hot10");
	    return mv;
	}
	
	/* SEARCH */
	@RequestMapping(value= "/search", method = RequestMethod.GET)
	public ModelAndView searchGet(Locale locale, ModelAndView mv, String search){
		
		ArrayList<ProductVo> productList = productService.getProductList(search);
		ArrayList<FileVo> fileList = productService.getMainFileList();
		
		if( productList.size() == 0) {
			mv.setViewName("/main/searchAbsence");
			return mv;
		}
		mv.addObject("fileList", fileList);
		mv.addObject("productList", productList);
	    mv.setViewName("/main/search");
	    return mv;
	}
	
	/* SEARCHAJAX */
	@RequestMapping(value= "/searchAjax", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<ProductVo> searchAjaxPost(Locale locale, ModelAndView mv, String search){
		
		ArrayList<ProductVo> productList = productService.getProductList(search);
		ArrayList<FileVo> fileList = productService.getMainFileList();
		
		mv.addObject("fileList", fileList);
		mv.addObject("productList", productList);
	    mv.setViewName("/main/search");
	    return productList;
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
	public ModelAndView signupPost( ModelAndView mv, UserVo user){
		userService.userRegis(user);
	    mv.setViewName("redirect:/");
	    return mv;
	}
	/* 아이디 중복검사 */
	@RequestMapping(value = "/idDup", method = RequestMethod.POST)		//url이 localhost:8080/spring 가 기본 입력 되어있음
	@ResponseBody
	public String idDupPost(String user_id) {
		UserVo user = userService.getUser(user_id);
		if(user == null)
			return "not user";
		return "user";
	}
	/* 닉네임 중복검사 */
	@RequestMapping(value = "/nickNameDup", method = RequestMethod.POST)		//url이 localhost:8080/spring 가 기본 입력 되어있음
	@ResponseBody
	public String nickNameDupPost(String user_nickName) {
		UserVo user = userService.getUser2(user_nickName);
		if(user == null)
			return "not user";
		return "user";
	}
	
	/* 회원등급 변경 */
	@RequestMapping(value = "/grade/modify", method = RequestMethod.POST)		
	@ResponseBody
	public Object gradeModifyPost(@RequestBody UserVo userVo) {	
		userService.updateGrade(userVo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		return map;
	}
	
	/* 내정보 리스트 */
	@RequestMapping(value= "/myInfo", method = RequestMethod.GET)
	public ModelAndView myInfo(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/main/myInfo");
	    return mv;
	}
	
	/* 내정보 변경 GET */
	@RequestMapping(value= "/myInfoAmend", method = RequestMethod.GET)
	public ModelAndView myInfoAmendGet(Locale locale, ModelAndView mv){

	    mv.setViewName("/main/myInfoAmend");
	    return mv;
	}
	
	/* 내정보 변경 POST*/
	@RequestMapping(value= "/myInfoAmend", method = RequestMethod.POST)
	public ModelAndView myInfoAmendPost(Locale locale, ModelAndView mv, UserVo user){

		System.out.println(user);
		userService.modifyUser(user, user.getUser_pw());
	    mv.setViewName("redirect:/");
	    return mv;
	}
	
	/* 내 주소 리스트 GET */
	@RequestMapping(value= "/addressList", method = RequestMethod.GET)
	public ModelAndView addressListGet(Locale locale, ModelAndView mv){

	    mv.setViewName("/main/addressList");
	    return mv;
	}
	/* 내 주소록 추가 GET */
	@RequestMapping(value= "/addressAdd", method = RequestMethod.GET)
	public ModelAndView addressAddGet(Locale locale, ModelAndView mv){

	    mv.setViewName("/main/addressAdd");
	    return mv;
	}
}
