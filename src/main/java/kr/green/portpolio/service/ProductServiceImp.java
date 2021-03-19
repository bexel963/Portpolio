package kr.green.portpolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portpolio.dao.ProductDao;
import kr.green.portpolio.vo.DeliveryVo;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.MyBoxVo;
import kr.green.portpolio.vo.OrderVo;
import kr.green.portpolio.vo.PaymentVo;
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
	public void regisOrderInfo(Integer order_amount, ProductVo product, UserVo user, String isDel) {
		
		ArrayList<OrderVo> orderInfoList = productDao.getOrderInfos(user);
		
		for(OrderVo order : orderInfoList) {
			if(product.getProduct_num() == order.getProduct_num()) {
				int order_cost = order_amount * product.getProduct_cost();
				System.out.println(order_cost + "원");
				productDao.modifyOrderInfo(order_amount, product, order_cost, user.getUser_id(), isDel);
				return;
			}
		}
		int order_cost = order_amount * product.getProduct_cost();
		productDao.regisOrderInfo(order_amount, product, order_cost, user);
	}
	
	@Override
	public void singleRegisOrderInfo(Integer order_cost, Integer orderAmount, ProductVo product, UserVo user) {
		productDao.regisOrderInfo(orderAmount, product, order_cost, user);
	}

	@Override
	public ArrayList<OrderVo> getOrderInfos(UserVo user) {
		return productDao.getOrderInfos(user);
	}

	@Override
	public OrderVo getOrderInfo(int product_num, UserVo user) {
		OrderVo order = productDao.getOrderInfo(product_num, user);
		return order;
	}

	@Override
	public OrderVo calTotal(ArrayList<OrderVo> orderList) {
		OrderVo order = new OrderVo();
		int total_amount = 0;
		int total_cost = 0;
		for(int i=0 ; i<orderList.size(); i++) {
			total_amount = total_amount + orderList.get(i).getOrder_amount();
			total_cost = total_cost + orderList.get(i).getOrder_cost();	
		}
		order.setTotal_amount(total_amount);
		order.setTotal_cost(total_cost);
		return order;
	}

	@Override
	public void deleteOrderInfo(UserVo user, Integer product_num) {
		productDao.deleteOrderInfo(user, product_num);
	}


	@Override
	public void deleteOrder(UserVo user, Integer product_num) {
		productDao.deleteOrder(user, product_num);
	}

	@Override
	public void regisPayment(UserVo user, PaymentVo payment) {
		productDao.regisPayment(user, payment);
	}

	@Override
	public void regisDelivery(int payment_num, DeliveryVo delivery) {
		productDao.regisDelivery(payment_num, delivery);			
	}

	@Override
	public void regisPresentPayment(int payment_num, int order_num) {
		productDao.regisPresentPayment(payment_num, order_num);
	}

	@Override
	public void modifyPaymentCompletion(UserVo user, int order_num) {
		productDao.modifyPaymentCompletion(user, order_num);
	}

	@Override
	public OrderVo getOrderInfo2(Integer order_num) {
		return productDao.getOrderInfo2(order_num);
	}

	@Override
	public void deleteOrder(Integer order_num) {
		productDao.deleteOrder2(order_num);
	}

	@Override
	public ArrayList<ProductVo> getProductList(Integer product_category) {
		return productDao.getProductList2(product_category);
	}

	@Override
	public ArrayList<ProductVo> getProductSaleRankList() {
		return productDao.getProductSaleRankList();
	}

}
