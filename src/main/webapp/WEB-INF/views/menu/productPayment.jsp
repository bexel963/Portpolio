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
		.order-box9{
			width: 1000px;
			margin: 0 auto;
			margin-top: 20px;
		}
		.order-box9 .container9{
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
			border-top: 4px solid black;
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
			box-sizing: border-box9;
			padding: 10px 0 0 10px;
			text-align: center;
		}
		.product-box .table .middle{
			height: 120px;
			border-bottom: 1px solid #dedede;
			box-sizing: border-box9;
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
			width: 100px;
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
			box-sizing: border-box9;
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
		.order-box9 .container9 .btn-area{
			width: 1000px;
			text-align: center;
			padding-top: 50px;
			margin-bottom: 50px;
		}
		.order-box9 .container9 .btn-area img{
			cursor: pointer;
		}
		.step-box .row2{
			font-weight: 1000;
			color: black;
		}
		.product-box .title,
		.delivery-title,
		.choice-title{
			font-size: 24px;
			color: #000;
			line-height: 28px;
			font-weight: bold;
		}
		.payment-info{
			margin: 20px 0 50px 0;
			width: 1000px;
			height: 200px;
			border: 4px solid black;
		}
		.payment-info .p1{
			padding-top: 45px;
			text-align: center;
			height: 50%;
		}
		.payment-info .p1 img{
			margin: 0 50px 0 20px;
		}
		.payment-info .p1 strong{
			font-size: 18px;
			margin-right: 30px;
			color: #595959;
		}
		.payment-info .p1 .total{
			font-size: 16px;
			margin-right: 2px;
		}
		.payment-info .p2{
			border-top: 1px solid black;
			padding: 20px 0 0 555px;
			height: 50%;
		}
		.payment-info .p2 strong{
			font-size: 22px;
		}
		.payment-info .p2 .total{
			font-size: 28px;
			color: #0272c9;
			margin: 0 20px 0 50px;
		}
		.delivery-info,
		.choice-box{
			width: 1000px;
			border-top: 4px solid black;
			margin-bottom: 50px;
		}
		.delivery-info table{
			margin-top: 20px;
			width: 100%;
			font-size: 12px;
			color: #767676;
			border: 1px solid #dedede;
		}
		.delivery-info th{
			width: 133px;
			font-size: 13px;
			text-align: center;
			background: #f8f8f8;
			border-right: 1px solid #eaeaea;
			height: 80px;
			padding-top: 30px;
		}
		.delivery-info td{
			box-sizing: border-box;
			padding-top: 30px;
			text-align: left;	
		}
		.delivery-info .input input{
			height: 25px;
			padding: 2px 0 0 4px;
			border: 1px solid #ccc;
			line-height: 23px;
		}
		.delivery-info .input input1{
			margin-right: 2px;
		}
		.bar{
			margin-left: 3px;
		}
		.choice-box{
			margin-bottom: 30px;
		}
		.choice-box img{
			margin: 20px 0 10px 0;
		}
		.choice-box ul{
			height: 40px;
			list-style: none;
		}
		.choice-box .choice{
			width: 100%;
			height: 100px;
			background-color: #f7f7f7;
			padding: 15px 0 0 130px;
			border: 1px solid #dedede;
		}
		.choice div{
			float: left;
			width: 175px;
			height: 70px;
			border: 4px solid #dedede;
			border-radius: 10px;
			text-align: center;	
			padding-top: 20px;	
			background-color: white;
			margin-right: 10px;
			color: #767676;
			font-size: 16px;
			font-weight: bold;
		}
		.choice div:hover{
			background-color: rgb(81,104,238);
			cursor: pointer;
		}
		.btn-box1{
			padding-left: 300px;
			cursor: pointer;
		}
    </style>
</head>
<body>
	<div class="order-box9">
		<img src="<%=request.getContextPath()%>/resources/img/h2_order.gif" alt="">
		<div class="container9">
			<div class="step-box">
				<img src="<%=request.getContextPath()%>/resources/img/h3_cart.gif" alt="">
				<ul>
					<li class="row1"><p>1.장바구니</p></li>
					<li class="row2"><p>2.결제하기</p></li>
					<li><p>3.주문완료</p></li>
				</ul>
			</div>
			<div class="notice-box">
				<img src="<%=request.getContextPath()%>/resources/img/h4_tit_order_notice02.gif" alt="">
				<ul>
					<li>- 정확한 주문을 위해 주문상품과 금액을 꼭 확인하시고, 수령인 및 배송지 정보를 정확하게 입력하시기 바랍니다.</li>
					<li>- 해외 배송은 불가합니다.</li>
				</ul>
			</div>
			<div class="product-box">
				<h4 class="">주문상품 확인</h4>
				<div class="table">
					<div class="top">				
						<ul>
							<li class="row1"><input type="checkbox"></li>
							<li class="row2">상품명/옵션</li>
							<li class="row3">판매가격</li>
							<li class="row4">수량</li>
							<li class="row5">주문금액</li>
							<li class="row6">배송비</li>
						</ul>
					</div>
					<c:forEach items="${productList}" var="product">
							<div class="middle">
								<ul>									
									<li class="row1"><input class="check-box" type="checkbox"></li>									
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
									<li class="row3">${product.product_cost} 원</li>
									<li class="row4">
										<input type="hidden" name="product_cost" value="${product.product_cost}">
										<input type="hidden" name="product_num" value="${product.product_num}">
										<c:forEach items="${orderInfoList}" var="orderInfo">
											<c:if test="${orderInfo.product_num == product.product_num}">${orderInfo.order_amount}</c:if>
										</c:forEach>                  
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
								</ul>	
							</div>
					</c:forEach>
					<div class="payment-info">
						<p class="p1">
							<strong>총 상품 수량</strong>
							<span class="total">1</span>
							<strong>개</strong>
							<img src="<%=request.getContextPath()%>/resources/img/ico_sum2.png">
							<strong>총 상품 금액</strong>
							<span class="total">299,000</span>
							<strong>원</strong>
							<img src="<%=request.getContextPath()%>/resources/img/ico_sum2.png">
							<strong>총 배송비</strong>
							<span class="total">0</span>
							<strong>원</strong>
						</p>
						<p class="p2">
							<strong>총 주문 금액</strong>
							<span class="total">299,000</span>
							<strong>원</strong>
						</p>
					</div>
					<h4 class="delivery-title">배송지 정보</h4>
					<div class="delivery-info">
						<table>
							<tr>
								<th class="tap">배송지 선택</th>
								<td class="input1"><input type="checkbox" class="check"> 회원주소 <input type="checkbox" class="check"> 새로운주소</td>
							</tr>
							<tr>
								<th class="tap">수령인</th>
								<td class="input">
									<input type="text" style="width:200px">
								</td>
							</tr>
							<tr>
								<th class="tap">전화번호</th>
								<td class="input">
									<input type="text" style="width:80px"><img class="bar" src="<%=request.getContextPath()%>/resources/img/txt_dash.gif">
									<input type="text" style="width:80px"><img class="bar" src="<%=request.getContextPath()%>/resources/img/txt_dash.gif">
									<input type="text" style="width:80px"> 예) 010-1234-5778
								</td>
							</tr>
							<tr>
								<th class="tap">주소</th>
								<td class="input">
									<input type="text" style="width:400px"> 예) 서울 동대문구 청계천로 539
								</td>
							</tr>
							<tr>
								<th class="tap">요청사항</th>
								<td class="input">
									<input type="text" style="width:700px"><br>
									- 요청사항 내용 중 [취소요청, 옵션변경] 은 적용이 되지 않습니다. 해당 내용은 고객센터로 문의해 주세요.
								</td>
							</tr>
						</table>
					</div>
					<h4 class="choice-title">결제수단 선택</h4>
					<div class="choice-box">
						<img src="<%=request.getContextPath()%>/resources/img/h5_pay_notice.gif" alt="">
						<ul>
							<li>- 신용카드 결제시 카드 명세표가 세금계산서와 동일한 효력을 가지므로 중복 발행이 되지 않습니다.</li>
							<li>- 현금영수증 발급시 세금계산서는 발급이 되지 않으니 사업자 고객분들께서는 유의하시기 바랍니다.</li>
						</ul>
						<div class="choice">
							<div class="card">신용카드</div>
							<div class="phone">휴대폰</div>
							<div class="virtual-account">가상계좌</div>
							<div class="account">실시간계좌이체</div>
						</div>
					</div>
				</div>
				<div class="btn-box1">
					<img src="<%=request.getContextPath()%>/resources/img/btn_gocart_step.gif" alt="">
					<img src="<%=request.getContextPath()%>/resources/img/btn_payment.gif" alt="">
				</div>
			</div>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html>