package kr.green.portpolio.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portpolio.service.CommentService;
import kr.green.portpolio.service.ProductService;
import kr.green.portpolio.service.UserService;
import kr.green.portpolio.utils.UploadFileUtils;
import kr.green.portpolio.vo.AddressVo;
import kr.green.portpolio.vo.CommentFileVo;
import kr.green.portpolio.vo.CommentVo;
import kr.green.portpolio.vo.DeliveryVo;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.MyBoxVo;
import kr.green.portpolio.vo.OrderVo;
import kr.green.portpolio.vo.PaymentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;
//import kr.green.portpolio.utils.UploadFileUtils;


@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	CommentService commentService;
	
	private String uploadPath = "D:\\digit\\a\\digital\\Portpolio\\src\\main\\webapp\\resources\\img";
	
	/* 상품등록 GET */
	@RequestMapping(value= "/productRegis", method = RequestMethod.GET)
	public ModelAndView productRegisGet(Locale locale, ModelAndView mv){
		
	    mv.setViewName("/menu/productRegis");
	    return mv;
	}
	
	/* 상품현황 GET */
	@RequestMapping(value= "/productPresent", method = RequestMethod.GET)
	public ModelAndView productPresentGet(Locale locale, ModelAndView mv){
		
		ArrayList<ProductVo> productList = new ArrayList<ProductVo>();
		productList = productService.getProductList();
		
		mv.addObject("productList", productList);
	    mv.setViewName("/menu/productPresent");
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
		
		ProductVo product = productService.getProduct(product_num);
		ArrayList<FileVo> subfileList = productService.getSubFileList(product_num);
		FileVo mainFile = productService.getMainFile(product_num);
		
		ArrayList<CommentVo> commentList = commentService.getCommentList(product_num);
		ArrayList<CommentFileVo> commentFileList = new ArrayList<CommentFileVo>();
		for(int i=0 ; i<commentList.size() ; i++) {
			CommentFileVo commentFile= commentService.getCommentFile(commentList.get(i).getComment_num());
			commentFileList.add(commentFile);
		}
		
		mv.addObject("commentList", commentList);
		mv.addObject("commentFileList", commentFileList);
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
		if(myBoxList != null) {
			for(MyBoxVo myBox : myBoxList) {
				productList.add(productService.getProduct(myBox.getProduct_num()));
				fileList.add(productService.getMainFile(myBox.getProduct_num()));
			}
		}
		ArrayList<OrderVo> orderInfoList = productService.getOrderInfos(user);

		mv.addObject("productList", productList);
		mv.addObject("fileList", fileList);
		mv.addObject("orderInfoList", orderInfoList);
		mv.addObject("myBoxList", myBoxList);
		mv.setViewName("/menu/myBox");
	    return mv;
	}
	
	/* 마이박스에 정보 있는지 확인 */
	@RequestMapping(value="/myBoxExistence", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyBoxVo> myBoxExistence(String user, HttpServletRequest request){
		
		ArrayList<MyBoxVo> myBoxList = productService.getMyBox(user);
	    return myBoxList;
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
	
	/* 마이박스 삭제 POST */
	@RequestMapping(value="/myBoxDelete", method = RequestMethod.POST)
	@ResponseBody
	public String myBoxRegisDeletePost(Integer product_num, HttpServletRequest request){
		
		UserVo user = userService.getUser(request);
		productService.deleteMyBox(user, product_num);
		productService.deleteOrder(user, product_num);
	    return "success";
	}
	
	/* 주문정보 POST */
	@RequestMapping(value="/orderInfo", method = RequestMethod.POST)
	@ResponseBody
	public String orderInfoPost(Integer order_amount, Integer product_num, String isDel, HttpServletRequest request){
		
		UserVo user = userService.getUser(request);
		ProductVo product = productService.getProduct(product_num);
		productService.regisOrderInfo(order_amount, product, user, isDel);

	    return "success";
	}
	
	/* 주문상품 삭제 POST */
	@RequestMapping(value="/deleteOrderInfo", method = RequestMethod.POST)
	@ResponseBody
	public String deleteOrderInfoPost(Integer product_num, HttpServletRequest request){
		
		UserVo user = userService.getUser(request);
		productService.deleteOrderInfo(user, product_num);
	
	    return "success";
	}
	
	/* 바로구매 후 결제창 POST */
	@RequestMapping(value= "/buyItNow", method = RequestMethod.POST)
	public ModelAndView buyItNowPost(Locale locale, ModelAndView mv, ProductVo productInfo, Integer order_amount, HttpServletRequest request){
		

		ProductVo product = productService.getProduct(productInfo.getProduct_num());	
		FileVo file = productService.getMainFile(productInfo.getProduct_num());

		request.getSession().setAttribute("orderProduct", product);
		request.getSession().setAttribute("orderAmount", order_amount);
		request.getSession().setAttribute("orderCost", order_amount * product.getProduct_cost());
		
		mv.addObject("product", product);
		mv.addObject("file", file);
		mv.setViewName("/menu/productPaymentSingle");
	    return mv;
	}
	
	/* 바로구매 후 결제실행 POST */
	@RequestMapping(value= "/directPayment", method = RequestMethod.POST)
	public ModelAndView directPaymentPost(ModelAndView mv, HttpServletRequest request, PaymentVo payment, DeliveryVo delivery){
	
		UserVo user = userService.getUser(request);
		productService.regisPayment(user, payment);
		productService.regisDelivery(payment.getPayment_num(), delivery);
		
		int order_cost = (Integer)request.getSession().getAttribute("orderCost");
		int orderAmount = (Integer)request.getSession().getAttribute("orderAmount");
		ProductVo product = (ProductVo)request.getSession().getAttribute("orderProduct");
		
		productService.singleRegisOrderInfo(order_cost, orderAmount, product, user);
		
		OrderVo order = productService.getOrderInfo(product.getProduct_num(), user);
		
		productService.regisPresentPayment(payment.getPayment_num(), order.getOrder_num());			
		productService.modifyPaymentCompletion(user, order.getOrder_num());			
	
		request.getSession().removeAttribute("orderProduct");
		request.getSession().removeAttribute("orderAmount");
		request.getSession().removeAttribute("orderCost");
		
		productService.modifyProduct(product.getProduct_num(), 1);
	
		mv.setViewName("/menu/productComplete");
	    return mv;
	}
	
	/* 결제창 GET */
	@RequestMapping(value= "/productPayment", method = RequestMethod.GET)
	public ModelAndView productPaymentGet(Locale locale, ModelAndView mv, Integer[] num, HttpServletRequest request){
		
		UserVo user = userService.getUser(request);

		ArrayList<ProductVo> productList = new ArrayList<ProductVo>();
		ArrayList<FileVo> fileList = new ArrayList<FileVo>();
		ArrayList<OrderVo> orderList = new ArrayList<OrderVo>();
		ArrayList<AddressVo> addressList = new ArrayList<AddressVo>();
		for(int product_num : num) {
			orderList.add(productService.getOrderInfo(product_num, user));
			
			System.out.println(productService.getOrderInfo(product_num, user));
			
			productList.add(productService.getProduct(product_num));
			fileList.add(productService.getMainFile(product_num));
		}
		addressList = userService.getAddressList(user);
		OrderVo order = productService.calTotal(orderList);
		request.getSession().removeAttribute("order");
		
		mv.addObject("addressList", addressList);
		mv.addObject("order", order);
		mv.addObject("productList", productList);
		mv.addObject("fileList", fileList);
		mv.addObject("orderInfoList", orderList);
		mv.setViewName("/menu/productPayment");
	    return mv;
	}
	
	/* 결제실행 POST */
	@RequestMapping(value= "/payment", method = RequestMethod.POST)
	public ModelAndView paymentGet(Locale locale, ModelAndView mv, HttpServletRequest request, PaymentVo payment, DeliveryVo delivery, Integer[] order_num){
	
		UserVo user = userService.getUser(request);
		productService.regisPayment(user, payment);
		productService.regisDelivery(payment.getPayment_num(), delivery);
		
		
		for(int num : order_num) {
			productService.regisPresentPayment(payment.getPayment_num(), num);			
			productService.modifyPaymentCompletion(user, num);			
		}
		
		ArrayList<OrderVo> orderList = new ArrayList<OrderVo>();
		for(int num : order_num) {
			orderList.add(productService.getOrderInfo2(num));
		}

		int[] product_num = new int[orderList.size()];
		int[] product_sale = new int[orderList.size()];
 
		for(int i=0 ; i<orderList.size(); i++) {
			product_num[i] = orderList.get(i).getProduct_num();
			product_sale[i] = orderList.get(i).getOrder_amount(); 
		}

		for(int i=0 ; i<product_num.length ; i++) {
			productService.modifyProduct(product_num[i], product_sale[i]);
		}
		
		for(int i=0 ; i < orderList.size() ; i++) {
			productService.deleteMyBox(user, orderList.get(i).getProduct_num());			
		}
		
		mv.setViewName("/menu/productComplete");
	    return mv;
	}
}
