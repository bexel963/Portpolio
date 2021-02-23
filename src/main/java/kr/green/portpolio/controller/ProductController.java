package kr.green.portpolio.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portpolio.service.ProductService;
import kr.green.portpolio.utils.UploadFileUtils;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;
//import kr.green.portpolio.utils.UploadFileUtils;


@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
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
		
		productService.productRegis(product);	
		
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
	public ModelAndView productDetailGet(Locale locale, ModelAndView mv, Integer product_num){
	
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
		System.out.println(product);
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
	
	/* 상품수정 GET */
	@RequestMapping(value= "/productDelete", method = RequestMethod.GET)
	public ModelAndView productDeleteGet(Locale locale, ModelAndView mv, Integer product_num){
		
		productService.productDelete(product_num);
		
		mv.setViewName("redirect:/");
	    return mv;
	}
}
