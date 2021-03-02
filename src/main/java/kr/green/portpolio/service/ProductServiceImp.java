package kr.green.portpolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.ProductDao;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.MyBoxVo;
import kr.green.portpolio.vo.OrderVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Override
	public void regisProduct(ProductVo product) {
		if(product==null) {
			return;
		}
		productDao.regisProduct(product);
	}
	
	@Override
	public void mainFileRegis(int product_num, String file_oriName, String file_name) {
		if(file_oriName==null) {
			return;
		}
		productDao.mainFileRegis(product_num, file_oriName, file_name);
	}
	
	@Override
	public void fileRegis(int product_num, String file_oriName, String file_name) {
		if(file_oriName==null) {
			return;
		}
		productDao.fileRegis(product_num, file_oriName, file_name);	
	}
	
	@Override
	public ProductVo getProduct(Integer product_num) {
		return productDao.getProduct(product_num);
	}
	@Override
	public ArrayList<ProductVo> getProductList() {
		return productDao.getProductList();
	}

	@Override
	public ArrayList<FileVo> getMainFileList() {
		return productDao.getMainFileList();
	}
	@Override
	public ArrayList<FileVo> getSubFileList(Integer product_num) {
		return productDao.getSubFileList(product_num);
	}
	@Override
	public FileVo getMainFile(Integer product_num) {
		return productDao.getMainFile(product_num);
	}

	@Override
	public void deleteFiles(Integer product_num) {
		productDao.deleteFiles(product_num);
	}

	
	@Override
	public void modifyProduct(ProductVo product) {
		productDao.deleteFiles(product.getProduct_num());
		productDao.modifyProduct(product);
	}

	@Override
	public void deleteProduct(Integer product_num) {
		productDao.deleteFiles(product_num);
		productDao.deleteProduct(product_num);
	}
	
	@Override
	public void regisMyBox(String user_id, Integer product_num) {
		productDao.regisMyBox(user_id, product_num);
	}

	@Override
	public ArrayList<MyBoxVo> getMyBox(String user_id) {
		return productDao.getMyBox(user_id);
	}

	@Override
	public void deleteMyBox(UserVo user, Integer product_num) {
		productDao.deleteMyBox(user, product_num);
	}

	@Override
	public void regisOrderInfo(Integer order_amount, ProductVo product, UserVo user) {
		
		ArrayList<OrderVo> orderInfoList = productDao.getOrderInfo(user);
		
		for(OrderVo order : orderInfoList) {
			if(product.getProduct_num() == order.getProduct_num()) {
				int order_cost = order_amount * product.getProduct_cost();
				System.out.println(order_cost + "원");
				productDao.modifyOrderInfo(order_amount, product, order_cost);
				return;
			}
		}
		int order_cost = order_amount * product.getProduct_cost();
		productDao.regisOrderInfo(order_amount, product, order_cost, user);
	}

	@Override
	public ArrayList<OrderVo> getOrderInfo(UserVo user) {
		return productDao.getOrderInfo(user);
	}
	

}
