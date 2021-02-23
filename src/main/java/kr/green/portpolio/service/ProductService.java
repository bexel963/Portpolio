package kr.green.portpolio.service;

import java.util.ArrayList;

import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;

public interface ProductService {

	void productRegis(ProductVo product);
	
	void mainFileRegis(int product_num, String file_oriName, String file_name);
	void fileRegis(int product_num, String file_oriName, String file_name);
	
	ProductVo getProduct(Integer product_num);
	ArrayList<ProductVo> getProductList();
	
	FileVo getMainFile(Integer product_num);
	ArrayList<FileVo> getMainFileList();
	ArrayList<FileVo> getSubFileList(Integer product_num);	// 제품의 서브사진만 가져오기

	void deleteFiles(Integer product_num);

	void modifyProduct(ProductVo product);

	void productDelete(Integer product_num);

	

	



	


}
