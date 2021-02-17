package kr.green.portpolio.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.ProductVo;

public interface ProductDao {

	void productRegis(@Param("product")ProductVo product);

}
