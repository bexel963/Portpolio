package kr.green.portpolio.service;

import java.util.ArrayList;

import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;

public interface ProductService {

	void productRegis(ProductVo product);	// 제품 등록
	
	void mainFileRegis(int product_num, String file_oriName, String file_name); // 메인사진 등록
	void fileRegis(int product_num, String file_oriName, String file_name);		// 서브사진들 등록
	
	ProductVo getProduct(Integer product_num);	// 해당번호 제품 가져오기
	ArrayList<ProductVo> getProductList();		// 제품 전부 가져오기
	
	FileVo getMainFile(Integer product_num);				// 해당번호 제품에 대한 메인사진 가져오기
	ArrayList<FileVo> getMainFileList();					// 제품 메인사진들 모두 가져오기
	ArrayList<FileVo> getSubFileList(Integer product_num);	// 제품의 서브사진들만 가져오기

	void deleteFiles(Integer product_num);		// 해당번호 제품의 사진들 삭제

	void modifyProduct(ProductVo product);		// 제품 수정

	void productDelete(Integer product_num);	// 해당번호 제품 삭제

	void regisMyBox(String user_id, Integer product_num);

	

	



	


}