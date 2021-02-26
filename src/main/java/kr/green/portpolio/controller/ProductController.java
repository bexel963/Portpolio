package kr.green.portpolio.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portpolio.service.ProductService;
import kr.green.portpolio.service.UserService;
import kr.green.portpolio.utils.UploadFileUtils;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.MyBoxVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;
//import kr.green.portpolio.utils.UploadFileUtils;


@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	private String uploadPath = "D:\\digit\\a\\digital\\Portpolio\\src\\main\\webapp\\resources\\img";
	
	/* 상품등록 GET */
	@RequestMapping(value= "/productRegis", method = RequestMethod.GET)
	public ModelAndView productRegisGet(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/menu/productRegis");
	    return mv;
	}
	/* 상품등록 POST */
	@RequestMapping(value= "/productRegis", method = RequestMethod.POST)
	public ModelAndView productRegisPost(Locale locale, ModelAndView mv, ProductVo product, MultipartFile[] fileList) throws IOException, Exception{
		
		productService.regisProduct(product);	
		
		if(fileList != null){
			String mainFileName = UploadFileUtils.uploadFile(uploadPath, fileList[0].getOriginalFilename(), fileList[0].getBytes());
			productService.mainFileRegis(product.getProduct_num(), fileList[0].getOriginalFilename(), mainFileName);
			for(int i=1 ; i<fileList.length ; i++) {
				if(fileList != null && fileList[i].getOriginalFilename().length() != 0) {
					String fileName = UploadFileUtils.uploadFile(uploadPath, fileList[i].getOriginalFilename(), fileList[i].getBytes());
					productService.fileRegis(product.getProduct_num(), fileList[i].getOriginalFilename(), fileName);
				}
			}
		}
		
	    mv.setViewName("redirect:/");
	    return mv;
	}
	
	/* 상품상세 GET */
	@RequestMapping(value= "/productDetail", method = RequestMethod.GET)
	public ModelAndView productDetailGet(Locale locale, ModelAndView mv, Integer product_num, HttpServletRequest request){
		
		UserVo user = userService.getUser(request);
		ProductVo product = productService.getProduct(product_num);
		ArrayList<FileVo> subfileList = productService.getSubFileList(product_num);
		FileVo mainFile = productService.getMainFile(product_num);
		
		mv.addObject("mainFile", mainFile);
		mv.addObject("subFileList", subfileList);
		mv.addObject("product", product);
	    mv.setViewName("/menu/productDetail");
	    return mv; 
	}
	
	/* 상품수정 GET */
	@RequestMapping(value= "/productModify", method = RequestMethod.GET)
	public ModelAndView productModifyGet(Locale locale, ModelAndView mv, Integer product_num){
		
		ProductVo product = productService.getProduct(product_num);
		
		
		mv.addObject("product", product);
	    mv.setViewName("/menu/productModify");
	    return mv;
	}
	/* 상품수정 POST */
	@RequestMapping(value= "/productModify", method = RequestMethod.POST)
	public ModelAndView productModifyPost(Locale locale, ModelAndView mv, ProductVo product, MultipartFile[] fileList) throws IOException, Exception{
		
		productService.modifyProduct(product);
		
		if(fileList != null){
			String mainFileName = UploadFileUtils.uploadFile(uploadPath, fileList[0].getOriginalFilename(), fileList[0].getBytes());
			productService.mainFileRegis(product.getProduct_num(), fileList[0].getOriginalFilename(), mainFileName);
			for(int i=1 ; i<fileList.length ; i++) {
				if(fileList != null && fileList[i].getOriginalFilename().length() != 0) {
					String fileName = UploadFileUtils.uploadFile(uploadPath, fileList[i].getOriginalFilename(), fileList[i].getBytes());
					productService.fileRegis(product.getProduct_num(), fileList[i].getOriginalFilename(), fileName);
				}
			}
		}
		
		mv.setViewName("redirect:/");
	    return mv;
	}
	
	/* 상품삭제 GET */
	@RequestMapping(value= "/productDelete", method = RequestMethod.GET)
	public ModelAndView productDeleteGet(Locale locale, ModelAndView mv, Integer product_num){
		
		productService.deleteProduct(product_num);
		
		mv.setViewName("redirect:/");
	    return mv;
	}
	
	/* 마이박스 리스트 GET */
	@RequestMapping(value= "/myBox", method = RequestMethod.GET)
	public ModelAndView myBoxGet(Locale locale, ModelAndView mv, HttpServletRequest request){
		
		ArrayList<ProductVo> productList = new ArrayList<ProductVo>();
		ArrayList<FileVo> fileList = new ArrayList<FileVo>();
		UserVo user = userService.getUser(request);
		
		ArrayList<MyBoxVo> myBoxList = productService.getMyBox(user.getUser_id());
		for(MyBoxVo myBox : myBoxList) {
			productList.add(productService.getProduct(myBox.getProduct_num()));
			fileList.add(productService.getMainFile(myBox.getProduct_num()));
		}
		mv.addObject("productList", productList);
		mv.addObject("fileList", fileList);
		mv.addObject("myBoxList", myBoxList);
		
		mv.setViewName("/menu/myBox");
	    return mv;
	}
	
	/* 마이박스 등록 POST */
	@RequestMapping(value="/myBoxRegis", method = RequestMethod.POST)
	@ResponseBody
	public String myBoxPost(Integer product_num, HttpServletRequest request){
		
		UserVo user = userService.getUser(request);
		ArrayList<MyBoxVo> myBoxList = productService.getMyBox(user.getUser_id());
		
		for(int i=0 ; i<myBoxList.size() ; i++){
			if(myBoxList.get(i).getProduct_num() == product_num){
				return "false";
			}
		}
		productService.regisMyBox(user.getUser_id(), product_num);
		
	    return "success";
	}
}
