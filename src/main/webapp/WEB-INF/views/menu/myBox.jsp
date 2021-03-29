<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<script src="//code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<style>
		.category-title{
			width: 100%;
			height: 60px;
			background: #f7f7f7;
	    	border-bottom: 1px solid #eee;
	    	padding-top: 7px;
		}
		.category-title .text{
			width: 1170px;
			font-size: 30px;
			color: #555555;
			margin: 0 auto;
		}
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
			padding: 10px 0 0 62px;
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
			width: 500px;
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
			height: 40px;
			background-color: #f8f8f8; 
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
		.hidden{
			display: none;
		}
    </style>
</head>
<body>
	<div class="category-title">
		<div class="text">MY BOX</div>
	</div>
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
								<li class="row2">상품명</li>
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
										<li class="row1"><input class="check-box" type="checkbox" name="num" value="${product.product_num}" <c:forEach items="${orderInfoList}" var="orderInfo"><c:if test="${product.product_num == orderInfo.product_num && user.user_id == orderInfo.user_id && orderInfo.isDel == 'N'}">checked</c:if></c:forEach>></li>																		
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
										<li class="row3 row3-val">${product.product_cost} 원</li>
										<li class="row4">
											<input type="hidden" name="product_cost" value="${product.product_cost}">
											<input type="hidden" name="product_num" value="${product.product_num}">
											<select class="select-btn" name="order_amount" id="" style="width: 45px">
												<c:forEach begin="1" end="99" var="index">
													<c:if test="${orderInfoList.size() != 0 }">
														<c:forEach items="${orderInfoList}" var="orderInfo">
															<option class="option" value="${index}" <c:if test="${orderInfo.order_amount == index && orderInfo.product_num == product.product_num && orderInfo.isDel == 'N'}">selected</c:if>>${index}</option>
														</c:forEach>
													</c:if>
													<c:if test="${orderInfoList.size() == 0 }">												
														<option class="option">${index}</option>
													</c:if>                  
												</c:forEach>
											</select>
										</li>
										<c:if test="${orderInfoList.contains(product)}">	<!-- 화면에 가격 나타내는거 ( 주문 내역에 해당 제품이 있으면 ) -->
											<c:forEach items="${orderInfoList}" var="orderInfo">
												<c:if test="${orderInfo.product_num == product.product_num}">
													<li class="row5">
														<input type="hidden" name="order_cost" value="${orderInfo.order_cost}">
														<span>${orderInfo.order_cost} 원</span>
													</li>
												</c:if>
											</c:forEach>
										</c:if>
										<c:if test="${!orderInfoList.contains(product)}">	<!-- 화면에 가격 나타내는거 ( 주문 내역에 해당 제품이 없으면 ) -->
											<li class="row5">
												<input type="hidden" name="order_cost" value="${orderInfo.order_cost}">
												<span>${product.product_cost} 원</span>
											</li>
										</c:if>
										<li class="row6">무료</li>
										<li class="row7">
											<input type="hidden" name="product_num" value="${product.product_num}">
											<button type="button" class="delete-btn"><b>삭제하기</b></button>
										</li>
									</ul>	
								</div>
							
						</c:forEach>
		
						<div class="bottom">
							
						</div>
					</div>
				</div>
				<div class="btn-area">
					<button type="submit" class="account-btn"><img src="<%=request.getContextPath()%>/resources/img/btn_select_order (1).gif" alt=""></button>
					<a href="<%=request.getContextPath()%>/"><img src="<%=request.getContextPath()%>/resources/img/btn_shopping (1).gif" alt=""></a>			
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
	    	
	  		var obj = $(this);
	  		obj.parent().siblings('.row1').find('.check-box').prop('checked',true);
	    	var data = {'order_amount' : amount, 'product_num' : product_num, 'isDel':'N'};	
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
	    	var box = $('input[name=box').val();
	    	if(box==1){
	    		$('.empty-box').addClass('hidden');
	    	}
	    	var check_state = $(this).prop("checked");
	    	var product_num = $(this).parent().siblings('.row4').find('input[name=product_num]').val();
	    	var product_cost = $('.row3-val').html();
	    	var order_amount = $(this).parent().siblings('.row4').find('select[name=order_amount]').val();
	    	var obj = $(this);
    		if(check_state == true){
    			console.log('빈 박스 클릭');
    			var data = {'order_amount' : order_amount, 'product_num' : product_num, 'isDel':'N'};
    	    	$.ajax({
    				url : '<%=request.getContextPath()%>/orderInfo',
    				type : 'post',
    				data : data,
    				success : function(data){
    					
    				},
    				error : function(){
    					console.log('실패');
    				}
    			})
    		}else{
    			console.log('체크 되어있는 박스 클릭');
    			obj.parent().siblings('.row4').find('.select-btn').val(1)
    			console.log(product_cost);
    			obj.parent().siblings('.row5').html(product_cost);
    			var data2 = {'product_num' : product_num, 'isDel':'Y'};
    	    	$.ajax({
    				url : '<%=request.getContextPath()%>/deleteOrderInfo',
    				type : 'post',
    				data : data2,
    				success : function(data){
    					
    				},
    				error : function(){
    					console.log('실패');
    				}
    			})
    		}

	    })
	    
	    $('.account-btn').click(function(e){
	    	var check = $('input[name=num]').is(':checked');
	    	if(check == false){
	    		alert("상품을 선택하세요");	    
	    		return false;
	    	}
	    })
	</script>
</body>
</html>