package kr.green.portpolio.service;

import java.util.ArrayList;

import kr.green.portpolio.vo.DeliveryVo;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.MyBoxVo;
import kr.green.portpolio.vo.OrderVo;
import kr.green.portpolio.vo.PaymentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

public interface ProductService {

	void regisProduct(ProductVo product);	// 제품 등록
	
	void mainFileRegis(int product_num, String file_oriName, String file_name); // 메인사진 등록
	void fileRegis(int product_num, String file_oriName, String file_name);		// 서브사진들 등록
	
	ProductVo getProduct(Integer product_num);						// 해당번호 제품 가져오기
	ArrayList<ProductVo> getProductList();							// 제품 전부 가져오기
	ArrayList<ProductVo> getProductList(Integer product_category);	// 해당 카테고리에 대한 제품 가져오기 
	
	FileVo getMainFile(Integer product_num);				// 해당번호 제품에 대한 메인사진 가져오기
	ArrayList<FileVo> getMainFileList();					// 제품 메인사진들 모두 가져오기
	ArrayList<FileVo> getSubFileList(Integer product_num);	// 제품의 서브사진들만 가져오기

	void deleteFiles(Integer product_num);		// 해당번호 제품의 사진들 삭제

	void modifyProduct(ProductVo product);		// 제품 수정

	void deleteProduct(Integer product_num);	// 해당번호 제품 삭제

	void regisMyBox(String user_id, Integer product_num);	// 마이박스에 제품 등록하기

	ArrayList<MyBoxVo> getMyBox(String user_id);	// 마이박스 정보 가져오기

	void deleteMyBox(UserVo user, Integer product_num);	// 마이박스 목록 삭제

	void regisOrderInfo(Integer order_amount, ProductVo product, UserVo user, String isDel);	// 주문정보 등록

	ArrayList<OrderVo> getOrderInfos(UserVo user);	// 해당 유저에 대한 주문정보들 가져오기

	OrderVo getOrderInfo(int product_num, UserVo user);	// 해당 제품에 대한 주문정보 가져오기
	
	OrderVo getOrderInfo2(Integer order_num);	// 해당 주문번호에 대한 주문정보 가져오기

	OrderVo calTotal(ArrayList<OrderVo> orderList);	// 총 금액 계산

	void deleteOrderInfo(UserVo user, Integer product_num);	// 주문정보의 isDel을 Y로 변경

	void deleteOrder(UserVo user, Integer product_num);	// 해당 유저와 제품번호의 주문정보 삭제
	
	void deleteOrder(Integer order_num);	// 해당 주문번호의 주문정보 삭제

	void regisPayment(UserVo user, PaymentVo payment);	// 결제정보 등록

	void regisDelivery(int payment_num, DeliveryVo delivery);	// 배달정보 등록

	void regisPresentPayment(int payment_num, int order_num);	// 결제번호-주문번호 보여주는 테이블에 정보 등록

	void modifyPaymentCompletion(UserVo user, int order_num);	// 결제하면 주문내역에 결제 완료됨을 표시

	void singleRegisOrderInfo(Integer order_cost, Integer orderAmount, ProductVo product, UserVo user);	// 바로구매시 주문정보 등록

	ArrayList<ProductVo> getProductSaleRankList();		// 판매순위 높은거 순으로 제품 10개 가져오기



	

	

	


	

	



	


}
