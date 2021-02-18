package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;

public interface ProductDao {

	void productRegis(@Param("product")ProductVo product);

	void fileRegis(@Param("product_num")int product_num, @Param("file_oriName")String file_oriName, @Param("file_name")String file_name);

	ArrayList<ProductVo> getProductList();

	ArrayList<FileVo> getFileList();

}
