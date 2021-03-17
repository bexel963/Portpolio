package kr.green.portpolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portpolio.vo.DeliveryVo;
import kr.green.portpolio.vo.FileVo;
import kr.green.portpolio.vo.MyBoxVo;
import kr.green.portpolio.vo.OrderVo;
import kr.green.portpolio.vo.PaymentVo;
import kr.green.portpolio.vo.ProductVo;
import kr.green.portpolio.vo.UserVo;

public interface ProductDao {

	void regisProduct(@Param("product")ProductVo product);

	void mainFileRegis(@Param("product_num")int product_num,  @Param("file_oriName")String file_oriName, @Param("file_name")String file_name);
	
	void fileRegis(@Param("product_num")int product_num, @Param("file_oriName")String file_oriName, @Param("file_name")String file_name);

	ProductVo getProduct(@Param("product_num")Integer product_num);
	ArrayList<ProductVo> getProductList();

	ArrayList<FileVo> getMainFileList();
	ArrayList<FileVo> getSubFileList(@Param("product_num")Integer product_num);

	FileVo getMainFile(@Param("product_num")Integer product_num);

	void deleteFiles(@Param("product_num")Integer product_num);

	void modifyProduct(@Param("product")ProductVo product);

	void deleteProduct(@Param("product_num")Integer product_num);

	void regisMyBox(@Param("user_id")String user_id, @Param("product_num")Integer product_num);

	ArrayList<MyBoxVo> getMyBox(@Param("user_id")String user_id);

	void deleteMyBox(@Param("user")UserVo user, @Param("product_num")Integer product_num);

	void regisOrderInfo(@Param("order_amount")Integer order_amount, @Param("product")ProductVo product, @Param("order_cost")Integer order_cost, @Param("user")UserVo user);

	ArrayList<OrderVo> getOrderInfos(@Param("user")UserVo user);

	void modifyOrderInfo(@Param("order_amount")Integer order_amount, @Param("product")ProductVo product, @Param("order_cost")Integer order_cost, @Param("user_id")String user_id, @Param("isDel") String isDel);

	OrderVo getOrderInfo(@Param("product_num")int product_num, @Param("user")UserVo user);

	void deleteOrderInfo(@Param("user")UserVo user, @Param("product_num")Integer product_num);


	void deleteOrder(@Param("user")UserVo user, @Param("product_num")Integer product_num);

	void regisPayment(@Param("user")UserVo user, @Param("payment")PaymentVo payment);

	void regisDelivery(@Param("payment_num")int payment_num, @Param("delivery")DeliveryVo delivery);

	void regisPresentPayment(@Param("payment_num")int payment_num, @Param("order_num")int order_num);

	void modifyPaymentCompletion(@Param("user")UserVo user, @Param("order_num")int order_num);

	OrderVo getOrderInfo2(@Param("order_num")Integer order_num);

	void deleteOrder2(@Param("order_num")Integer order_num);

	
	

}
