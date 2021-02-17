package kr.green.portpolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.ProductDao;
import kr.green.portpolio.vo.ProductVo;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Override
	public void productRegis(ProductVo product) {
		productDao.productRegis(product);
	}

}
