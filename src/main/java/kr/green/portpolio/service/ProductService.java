package kr.green.portpolio.service;

import java.util.ArrayList;

import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;

public interface ProductService {

	void productRegis(ProductVo product);

	void fileRegis(int product_num, String file_oriName, String file_name);

	ArrayList<ProductVo> getProductList();

	ArrayList<FileVo> getMainFileList();

	void mainFileRegis(int product_num, String file_oriName, String file_name);



	


}
