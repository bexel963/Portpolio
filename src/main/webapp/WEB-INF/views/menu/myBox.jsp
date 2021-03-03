<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<style>
		.order-box{
			width: 1000px;
			margin: 0 auto;
			margin-top: 20px;
		}
		.order-box .container{
			border-top: 1px solid #dedede;
			border-bottom: 1px solid #dedede;
			padding: 20px 0 20px 0;
		}
		.step-box ul{
			list-style: none;
			float: right;
			border: 1px solid #dedede;
			border-left: none;
			padding: 0;
			margin: 0;
			background-color: #f8f8f8;
		}
		.step-box img{
			margin-top: 1px;
		}
		.step-box ul li{
			float: left;
			width: 253px;
			height: 65px;
			color: #767676;
			font-family: Arial, '돋움', dotum,sans-serif;
			font-size: 16px;
			line-height: 1.3;
			padding-top: 15px;
		}
		.step-box ul li p{
			width: 100%;
			text-align: center;
			line-height: 35px;
		}
		.notice-box{
			margin-top: 40px;
		}
		.notice-box ul{
			list-style: none;
			font-size: 12px;
			font-family: Arial,'돋움',dotum,sans-serif;
			padding-top: 20px;
			line-height: 1.8;
		}
		.product-box{
			margin-top: 30px;
		}
		.product-box .table{
			font-size: 12px;
			color: #767676;
			border-top: 2px solid #dedede;
			border-bottom: 2px solid #dedede;
			margin-top: 5px;
		}
		.product-box .table ul{
			list-style: none;
			padding: 0;
			margin: 0;
		}
		.product-box .table li{
			float: left;
		}
		.product-box .table .top{
			background: #f8f8f8;
			height: 40px;
			border-bottom: 1px solid #dedede;
			box-sizing: border-box;
			padding: 10px 0 0 10px;
			text-align: center;
		}
		.product-box .table .middle{
			height: 120px;
			border-bottom: 1px solid #dedede;
			box-sizing: border-box;
			padding: 0px 0 0 10px;
			text-align: center;
		}.product-box .table .middle .row1{
			padding-top: 47px;
		}
		.product-box .table .middle .row2
		{
			padding-top: 15px;
		}
		.product-box .table .middle .row2 .title-box{
			padding-left: 30px;
		}
		.product-box .table .middle .row2 div{
			float: left;
		}
		.product-box .table .middle .row3,
		.product-box .table .middle .row4,
		.product-box .table .middle .row5,
		.product-box .table .middle .row6{
			padding-top: 47px;
		}
		.product-box .table .middle .row7{
			padding-top: 45px;
		}
		.product-box .table .bottom .cal{
			height: 60px;
			border-bottom: 1px solid #dedede;
		}
		.product-box .table .bottom .sum{
			height: 60px;
		}
		.product-box .table .row1{
			width: 50px;
		}
		.product-box .table .row2{
			width: 500px;
		}
		.product-box .table .row3,
		.product-box .table .row4,
		.product-box .table .row5,
		.product-box .table .row6,
		.product-box .table .row7{
			width: 80px;
		}
		.product-box .img-box{
			width: 90px;
			height: 90px;
		}
		.product-box .title-box{
			height: 90px;
			padding-top: 35px;
			margin-left: 20px;
			font-size: 14px;
			color: #464646;
		}
		.product-box .img-box img{
			width: 100%;
			height: 100%;
		}
		.product-box .middle .delete-btn{
			border: 1px solid #dedede;
			background-color: white;
			border-radius: 5px;
			cursor: pointer;
		}
		.product-box .bottom{
			width: 100%;
			height: 120px; 
		}
		.product-box .bottom .cal,
		.product-box .bottom .sum{
			height: 60px;
			box-sizing: border-box;
			padding-top: 20px;
			padding-left: 513px;
		}
		.product-box .bottom .sum{
			padding-left: 800px;
		}
		.product-box .bottom .text{
			font-size: 14px;
			font-weight: bold;
		}
		.product-box .bottom img{
			margin: 0 20px 0 20px;
		}
		.product-box .bottom .value{
			font-size: 18px;
			font-weight: bold;
			color: blue;
		}
		.order-box .container .btn-area{
			width: 1000px;
			text-align: center;
			padding-top: 50px;
			margin-bottom: 50px;
		}
		.order-box .container .btn-area img{
			cursor: pointer;
		}
		.step-box .row1{
			font-weight: 1000;
			color: black;
		}
		button{
			border: 0;
			outline: 0;
		}
    </style>
</head>
<body>
	<div class="order-box">
		<img src="<%=request.getContextPath()%>/resources/img/h2_order.gif" alt="">
		<div class="container">
			<div class="step-box">
				<img src="<%=request.getContextPath()%>/resources/img/h3_cart.gif" alt="">
				<ul>
					<li class="row1"><p>1.장바구니</p></li>
					<li><p>2.결제하기</p></li>
					<li><p>3.주문완료</p></li>
				</ul>
			</div>
			<div class="notice-box">
				<img src="<%=request.getContextPath()%>/resources/img/h4_tit_order_notice.gif" alt="">
				<ul>
					<li>- 펀샵에서 배송되는 제품과 협력업체에서 배송되는 제품은 서로 다른 장바구니에 담겨지며, 다른 장바구니에 담긴 제품들은 묶음 배송이 되지 않습니다.</li>
					<li>- 다른 장바구니에 담긴 제품들은 각기 다른 배송업체, 날짜, 시간에 배송될 수 있으며 합포장의 기준에 따라 각각의 장바구니에 배송료가 별도로 부과됩니다.</li>
					<li>- 장바구니에 담긴 상품 중 일정기간이 지난 후 구매시 실 구매가격과 차이가 발생할 수 있습니다.</li>
				</ul><br>
				<img src="<%=request.getContextPath()%>/resources/img/h4_tit_order_notice01.gif" alt="">
				<ul>
					<li>- 결제 전, 선택 상품의 옵션과 수량을 다시 한 번 확인 부탁드립니다.</li>
					<li>- 장바구니의 상품은 30일간 보관됩니다.</li>
				</ul>
			</div>
			<form action="<%=request.getContextPath()%>/productPayment" method="get">
				<div class="product-box">
					<img src="<%=request.getContextPath()%>/resources/img/h4_company_delivery.gif" alt="">
					<div class="table">
						<div class="top">				
							<ul>
								<li class="row1"><input type="checkbox"></li>
								<li class="row2">상품명/옵션</li>
								<li class="row3">판매가격</li>
								<li class="row4">수량</li>
								<li class="row5">주문금액</li>
								<li class="row6">배송비</li>
								<li class="row7">관리</li>
							</ul>
						</div>
						<c:forEach items="${productList}" var="product">
								<div class="middle">
									<ul>									
										<li class="row1"><input class="check-box" type="checkbox" name="num" value="${product.product_num}"></li>									
										<li class="row2">
											<c:forEach items="${fileList}" var="file">
												<c:if test="${product.product_num == file.product_num}">
													<div class="img-box">
														<img src="<%=request.getContextPath()%>/resources/img/${file.file_name}" alt="">
													</div>
												</c:if>
											</c:forEach>
											<div class="title-box">${product.product_title}</div>						
										</li>
										<li class="row3">${product.product_cost}</li>
										<li class="row4">
											<input type="hidden" name="product_cost" value="${product.product_cost}">
											<input type="hidden" name="product_num" value="${product.product_num}">
											<select class="select-btn" name="order_amount" id="" style="width: 45px">
												<c:forEach begin="1" end="99" var="index">
													<c:forEach items="${orderInfoList}" var="orderInfo">
														<option class="option" value="${index}" <c:if test="${orderInfo.order_amount == index && orderInfo.product_num == product.product_num}">selected</c:if>>${index}</option>
													</c:forEach>                  
												</c:forEach>
											</select>
										</li>
										<c:forEach items="${orderInfoList}" var="orderInfo">
											<c:if test="${orderInfo.product_num == product.product_num}">
												<li class="row5">
													<input type="hidden" name="order_cost" value="${orderInfo.order_cost}">
													<span>${orderInfo.order_cost}원</span>
												</li>
											</c:if>
										</c:forEach>
										<li class="row6">무료</li>
										<li class="row7">
											<input type="hidden" name="product_num" value="${product.product_num}">
											<button type="button" class="delete-btn"><b>삭제하기</b></button>
										</li>
									</ul>	
								</div>
							
						</c:forEach>
						<div class="bottom">
							<div class="cal">
								<span class="text">상품 수량 </span><span class="amount-value">0</span><span class="text"> 개</span><img src="<%=request.getContextPath()%>/resources/img/icon_sum.gif" alt="">
								<span class="text">상품 금액 </span><span class="cost-value">0</span><span class="text"> 원</span><img src="<%=request.getContextPath()%>/resources/img/icon_sum.gif" alt="">
								<span class="text" class="value">배송비 0 원</span>
							</div>
							<div class="sum">
								<span class="text">결제 금액 </span>
								<span class="value">598,000</span><span class="text"> 원</span>
							</div>
						</div>
					</div>
				</div>
				<div class="btn-area">
					<img src="<%=request.getContextPath()%>/resources/img/btn_order (1).gif" alt="">
					<button type="submit" class="account"><img src="<%=request.getContextPath()%>/resources/img/btn_select_order (1).gif" alt=""></button>
					<a href="#"><img src="<%=request.getContextPath()%>/resources/img/btn_shopping (1).gif" alt=""></a>			
				</div>
			</form>
		</div>
	</div>
	
	<script>
		$('.delete-btn').click(function(){
	    	var product_num = $(this).siblings('input').val();
	    	var obj = $(this)
	    	
	    	var data = { 'product_num' : product_num };	
	    	$.ajax({
				url : '<%=request.getContextPath()%>/myBoxDelete',
				type : 'post',
				data : data,
				success : function(data){
					console.log(data);
					obj.parents('.middle').remove();
				},
				error : function(){
					console.log('실패');
				}
			})
	    })
	    
	    $('.select-btn').change(function(){
	    	var amount = $(this).val();
	    	var product_num = $(this).siblings('input[name=product_num]').val();
	    	var product_cost = $(this).siblings('input[name=product_cost]').val();
	    	var sum = amount * product_cost;
	    	
	  		var obj = $(this)
	    	var data = { 'order_amount' : amount, 'product_num' : product_num};	
	    	$.ajax({
				url : '<%=request.getContextPath()%>/orderInfo',
				type : 'post',
				data : data,
				success : function(data){
					obj.parent().siblings('.row5').html(sum);
					
				},
				error : function(){
					console.log('실패');
				}
			})
	    })
	    
	    $('.check-box').click(function(){
	    	var product_num = $(this).parent().siblings('.row4').find('input[name=product_num]').val();
	    	var amount = $(this).parent().siblings('.row4').find('.select-btn').val();
	    	var order_cost = $(this).parent().siblings('.row5').find('input[name=order_cost]').val();
	    	
	    	var sum_amount = amount;
	    	var sum_cost = order_cost;
	    	
	    	$('.amount-value').html(sum_amount);
	    	$('.cost-value').html(sum_cost);
	    	
	    	
	    })
	</script>
</body>
</html>