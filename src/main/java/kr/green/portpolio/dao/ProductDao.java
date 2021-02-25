package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;

public interface ProductDao {

	void productRegis(@Param("product")ProductVo product);

	void mainFileRegis(@Param("product_num")int product_num,  @Param("file_oriName")String file_oriName, @Param("file_name")String file_name);
	
	void fileRegis(@Param("product_num")int product_num, @Param("file_oriName")String file_oriName, @Param("file_name")String file_name);

	ProductVo getProduct(@Param("product_num")Integer product_num);
	ArrayList<ProductVo> getProductList();

	ArrayList<FileVo> getMainFileList();
	ArrayList<FileVo> getSubFileList(@Param("product_num")Integer product_num);

	FileVo getMainFile(@Param("product_num")Integer product_num);

	void deleteFiles(@Param("product_num")Integer product_num);

	void modifyProduct(@Param("product")ProductVo product);

	void deleteProduct(@Param("product")Integer product_num);

	void regisMyBox(@Param("user_id")String user_id, @Param("product_num")Integer product_num);


	

}
