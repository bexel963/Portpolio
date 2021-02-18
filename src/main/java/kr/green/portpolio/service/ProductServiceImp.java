package kr.green.portpolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.ProductDao;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.ProductVo;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Override
	public void productRegis(ProductVo product) {
		productDao.productRegis(product);
	}

	@Override
	public void fileRegis(int product_num, String file_oriName, String file_name) {
		productDao.fileRegis(product_num, file_oriName, file_name);	
	}

	@Override
	public ArrayList<ProductVo> getProductList() {
		return productDao.getProductList();
	}

	@Override
	public ArrayList<FileVo> getFileList() {
		return productDao.getFileList();
	}

}
