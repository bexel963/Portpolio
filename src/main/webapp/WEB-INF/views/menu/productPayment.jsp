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
			padding: 10px 0 0 30px;
			text-align: center;
		}
		.product-box .table .middle{
			height: 120px;
			border-bottom: 1px solid #dedede;
			box-sizing: border-box9;
			padding: 0px 0 0 30px;
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
			width: 550px;
			padding-left: 30px;
		}
		.product-box .table .row3,
		.product-box .table .row4,
		.product-box .table .row5,
		.product-box .table .row6,
		.product-box .table .row7{
			width: 90px;
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
			color: black;
			font-weight: bold;
			cursor: pointer;
		}
		.btn-box1{
			padding-left: 300px;
			cursor: pointer;
		}
		.check{
			cursor: pointer;
		}
		.hidden{
			display: none;
		}
		.hidden-way{
			width: 100%;
			margin-top: 20px;
			position: relative;
		}
		.hidden-way .select-box{
			width: 100%;
			height: 50px;
			border-top: 1px solid #bbbbbb;
			padding: 12px 0 0 70px;
		}
		.hidden-way .select-box:nth-of-type(2){
			border-top: 1px solid #bbbbbb;
			border-bottom: 1px solid #bbbbbb;
			margin-bottom: 40px;
		}
		.hidden-way .select-box span{
			margin-right: 50px;
			color: #767676;
		}
		.hidden-way .select-box select{
			width: 200px;
			height: 25px;
		}
		.hidden-way .agreement-all,
		.hidden-way .agreement-detail{		
			width: 100%;
			height: 100px;
			background-color: f6f6f6;
			border: 1px solid #e6e6e6;
			font-size: 15px;
			padding: 20px 0 0 20px;
		}
		.hidden-way .check{
			font-weight: bold;
		}
		.hidden-way .agreement-all .fa-angle-down,
		.hidden-way .agreement-detail .fa-angle-up{
			position: absolute;
			right: 40;
			top: 290;
			font-size: 40px;
			cursor: pointer;
		}
		.hidden-way .agreement-all div{
			margin-bottom: 10px;
			font-size: 15px;
		}
		.hidden-way .agreement-detail{
			height: 230px;
		}
		.hidden-way .agreement-detail div:nth-of-type(1){
			font-size: 15px;
		}
		.hidden-way .agreement-detail div:nth-of-type(2){
			margin-top: 20px;
		}
		.hidden-way .agreement-detail div{
			margin-bottom: 10px;
			font-size: 12px;
		}
		.choice div.selected-choice{
			background-color: rgb(81,104,238);
			color: black;
			font-weight: bold;
		}
		.choice input{
			display: none;
		}
		.virtual-table{
			font-size: 12px;
			color: #767676;
		}
		.virtual-table th{
			background-color: #f7f7f7;
		}
		.hidden-way.hidden-virtual-account .agreement-all{
			margin-top: 30px;
		}
		.hidden-way.hidden-phone .agreement-all{
			margin-top: 115px;
		}
		.hidden-way.hidden-account .agreement-all{
			margin-top: 225px;
		}
		.delivery-select{
			width: 150px;
			margin-right: 20px;
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
			<form action="<%=request.getContextPath()%>/payment" method="POST" id="submitPayment">
				<div class="product-box">
					<h4 class="">주문상품 확인</h4>
					<div class="table">
						<div class="top">				
							<ul>
								<li class="row1">주문번호</li>
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
										<c:forEach items="${orderInfoList}" var="orderInfo">	
											<c:if test="${orderInfo.product_num == product.product_num && orderInfo.user_id == user.user_id}">
												<li class="row1">${orderInfo.order_num}</li>
												<input type="hidden" name="order_num" value="${orderInfo.order_num}">
											</c:if>															
										</c:forEach> 
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
								<span class="total">${order.total_amount}</span>
								<strong>개</strong>
								<img src="<%=request.getContextPath()%>/resources/img/ico_sum2.png">
								<strong>총 상품 금액</strong>
								<span class="total">${order.total_cost}</span>
								<strong>원</strong>
								<img src="<%=request.getContextPath()%>/resources/img/ico_sum2.png">
								<strong>총 배송비</strong>
								<span class="total">0</span>
								<strong>원</strong>
							</p>
							<p class="p2">
								<strong>총 주문 금액</strong>
								<span class="total">${order.total_cost}</span>
								<input type="hidden" name="payment_cost" value="${order.total_cost}">
								<strong>원</strong>
							</p>
						</div>
						<h4 class="delivery-title">배송지 정보</h4>
						<div class="delivery-info">
							<input type="hidden" name="user_name" value="${user.user_name}" >
							<input type="hidden" name="user_phone" value="${user.user_phone}" >
							<input type="hidden" name="user_address" value="${user.user_address}" >
							<table class="address-table">
								<thead>
								<tr>
									<th class="tap">배송지 선택<br><br></th>
									<td class="input1">
										<select class="delivery-select" name="delivery_name">
											<option value="">선택해주세요</option>
											<c:forEach items="${addressList}" var="address">
												<option value="${address.address_num}">${address.delivery_name}</option>
											</c:forEach>
										</select>
										<input type="checkbox" name="check" class="check_user"> 새주소 입력
									</td>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${addressList}" var="address">								
									<tr class="address-sel-${address.address_num} hidden" >
										<th class="tap">수령인</th>
										<td class="empty hidden">
											<input type="text" name="recipient" style="width:200px">
										</td>
										<td class="user1 user_name">
											${address.recipient}
											<input type="hidden" name="recipient" value="${address.recipient}">
										</td>
									</tr>
									<tr class="address-sel-${address.address_num} hidden">
										<th class="tap">전화번호</th>
										<td class="empty hidden">
											<input type="text" name="home_call" style="width:200px" placeholder=" 예) 010-1234-5778">
										</td>
										<td class="user1 user_phone">
											${address.home_call}
											<input type="hidden" name="home_call" value="${address.home_call}">
										</td>
									</tr>
									<tr class="address-sel-${address.address_num} hidden">
										<th class="tap">폰번호</th>
										<td class="empty hidden">
											<input type="text" name="phone_call" style="width:200px" placeholder=" 예) 010-1234-5778">
										</td>
										<td class="user1 user_phone">
											${address.phone_call}
											<input type="hidden" name="phone_call" value="${address.phone_call}">
										</td>
									</tr>
									<tr class="address-sel-${address.address_num} hidden">
										<th class="tap">주소</th>
										<td class="empty hidden">
											<input type="text" name="delivery_address" style="width:200px" placeholder="예) 서울 동대문구 청계천로 539">
										</td>
										<td class="user1 user_address">
											${address.address}
											<input type="hidden" name="delivery_address" value="${address.address}"> 		
										</td>
									</tr>								
								</c:forEach>
								</tbody>
								<tfoot>
								<tr>
									<th class="tap">요청사항</th>
									<td class="input">
										<input type="text" name="demand" style="width:700px"><br>
										- 요청사항 내용 중 [취소요청, 옵션변경] 은 적용이 되지 않습니다. 해당 내용은 고객센터로 문의해 주세요.
									</td>
								</tr>
								</tfoot>
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
								<div class="card"><input class="payment_way1" type="radio" id="card" name="payment_way" value="신용카드">신용카드</div>
								<div class="phone"><input class="payment_way2" type="radio" id="phone" name="payment_way" value="휴대폰">휴대폰</div>
								<div class="virtual-account"><input class="payment_way3" type="radio" id="virtual-account" name="payment_way" value="가상계좌">가상계좌</div>
								<div class="account"><input class="payment_way4" type="radio" id="account" name="payment_way" value="실시간계좌이체">실시간계좌이체</div>
							</div>
							<div class="cpva hidden-card hidden-way hidden">
								<p>
									신용카드 결제 신청시 승인 진행에 다소 시간이 소요될 수 있으므로 ‘중지’, ‘새로고침’을 누르지 마시고 결과 화면이 나타날때까지 기다려 주십시오.<br>
									결제하기 버튼 클릭시 결제창이 나타나지 않는 경우나 ISP/안전결제 모듈이 설치 되지 않을 경우 수동으로 플러그인을 설치하십시요.
								</p><br>
								<h5 style="font-weight:bold">카드선택</h5>
								<div class="select-box">
									<span>카드종류</span>
									<select name="card" >
										<option>=== 카드 선택 ===</option>
										<option>BC카드</option>
										<option>KB카드</option>
										<option>NH카드</option>
										<option>롯데카드</option>
										<option>삼성카드</option>
										<option>신한카드</option>
										<option>우리카드</option>
										<option>하나카드</option>
										<option>현대카드</option>
									</select>
								</div>
								<div class="select-box">
									<span>할부선택</span>
									<select name="terms">
										<option>일시불</option>
										<c:forEach begin="2" end="12" var="index">
										<option>${index}개월</option>
										</c:forEach>
									</select>
								</div>
								<div class="agreement-all">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all1" type="checkbox"> <span class="check">모두동의</span>
									<i class="fas fa-angle-down"></i>
								</div>
								<div class="agreement-detail hidden">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all" type="checkbox"> <span class="check">모두동의</span>
									<div><input class="check-detail" type="checkbox"> 주문 및 배송처리를 위한 개인정보 공유에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 전자금융거래 기본약관에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 수집 및 이용에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 제공 및 위탁에 동의합니다.</div>
									<i class="fas fa-angle-up"></i>
								</div>
							</div>
							<div class="cpva hidden-phone hidden-way hidden">
								<p class="phone-text">
									휴대폰으로 결제한 금액은 다음달 해당 휴대폰의 요금 결제시 통합 청구 됩니다.<br><br>									
									미성년자 명의의 휴대폰 (단, KT와 LGT는 가입자가 성인인 경우 제외), 사업자 폰, 미납상태의 폰, 정액요금제 가입폰, 외국인 폰 등의 경우에는 휴대폰 결제를
									사용할 수 없습니다. LGT의 경우 번호이동 및 신규 가입한 경우에는 가입일로부터 60일간 월 한도 5만원입니다.<br><br>
									휴대폰 결제의 취소는 주문한 월의 말일까지만 가능합니다.
									현금영수증은 휴대폰 요금을 현금 납부하는 경우에만 해당 이동통신사에서 발급합니다. 발급문의는 이동통신사의 고객센터로 문의 바랍니다.	
								</p>
								<div class="agreement-all">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all2" type="checkbox"> <span class="check">모두동의</span>
									<i class="fas fa-angle-down"></i>
								</div>
								<div class="agreement-detail hidden">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all" type="checkbox"> <span class="check">모두동의</span>
									<div><input class="check-detail" type="checkbox"> 주문 및 배송처리를 위한 개인정보 공유에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 전자금융거래 기본약관에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 수집 및 이용에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 제공 및 위탁에 동의합니다.</div>
									<i class="fas fa-angle-up"></i>
								</div>
							</div>
							<div class="cpva hidden-virtual-account hidden-way hidden">
								<h4>가상계좌 신청</h4>
								<table class="virtual-table">
									<tr>
										<th style="width : 270">입금기한</th>
										<td style="width : 720">2021-03-17</td>
									</tr>
									<tr>
										<th>은행명</th>
										<td>
											<select name="card" >
												<option>=== 카드 선택 ===</option>
												<option>기업은행</option>
												<option>국민은행</option>
												<option>수협은행</option>
												<option>농협은행</option>
												<option>우리은행</option>
												<option>신한은행</option>
												<option>우체국은행</option>
												<option>하나은행</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>입금자명</th>
										<td>
											<input type="text">
										</td>
									</tr>
									<tr>
										<th>계좌번호 안내 휴대폰 번호</th>
										<td>
											<input type="text">
										</td>
									</tr>										
								</table>
								<div class="agreement-all">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all3" type="checkbox"> <span class="check">모두동의</span>
									<i class="fas fa-angle-down"></i>
								</div>
								<div class="agreement-detail hidden">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all" type="checkbox"> <span class="check">모두동의</span>
									<div><input class="check-detail" type="checkbox"> 주문 및 배송처리를 위한 개인정보 공유에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 전자금융거래 기본약관에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 수집 및 이용에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 제공 및 위탁에 동의합니다.</div>
									<i class="fas fa-angle-up"></i>
								</div>
							</div>
							<div class="cpva hidden-account hidden-way hidden">
								실시간계좌이체
								<div class="agreement-all">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all" type="checkbox"> <span class="check">모두동의</span>
									<i class="fas fa-angle-down"></i>
								</div>
								<div class="agreement-detail hidden">
									<div>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</div>
									<input class="check-all4" type="checkbox"> <span class="check">모두동의</span>
									<div><input class="check-detail" type="checkbox"> 주문 및 배송처리를 위한 개인정보 공유에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 전자금융거래 기본약관에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 수집 및 이용에 동의합니다.</div>
									<div><input class="check-detail" type="checkbox"> 결제대행 서비스의 개인정보 제공 및 위탁에 동의합니다.</div>
									<i class="fas fa-angle-up"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="btn-box1">
						<a href="<%=request.getContextPath()%>/myBox"><img src="<%=request.getContextPath()%>/resources/img/btn_gocart_step.gif" alt=""></a>
						<button type="submit" class="payment-btn"><img src="<%=request.getContextPath()%>/resources/img/btn_payment.gif" alt=""></button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
		$('.delivery-select').change(function(){
			console.log('.address-table tbody address-sel-'+$(this).val());
			$('.address-table tbody tr').addClass('hidden');
			$('.address-table tbody .address-sel-'+$(this).val()).removeClass('hidden');
		})
		$('#submitPayment').submit(function(){
			$('.address-table tbody tr').each(function(){
				if($(this).hasClass('hidden')){
					$(this).remove();
				}
			})
		})
		
		$('.check_user').click(function(){
			var check_state = $(this).prop("checked");
			if(!check_state == false){
				$(this).parents('table').find('.empty').removeClass('hidden');
				$(this).parents('table').find('.user1').addClass('hidden')
			}else{
				$(this).parents('table').find('.empty').addClass('hidden')
				$(this).parents('table').find('.user1').removeClass('hidden')
			}	
		})
		
		$('.choice div').click(function(){
			if($(this).hasClass('card')){	
				$('.cpva').addClass('hidden');
				$('.hidden-card').removeClass('hidden');
				$('#card').prop('checked', true);
			}else if($(this).hasClass('phone')){
				$('.cpva').addClass('hidden');
				$('.hidden-phone').removeClass('hidden');
				$('#phone').prop('checked', true);
			}else if($(this).hasClass('virtual-account')){
				$('.cpva').addClass('hidden');
				$('.hidden-virtual-account').removeClass('hidden');
				$('#virtual-account').prop('checked', true);
			}else if($(this).hasClass('account')){
				$('.cpva').addClass('hidden');
				$('.hidden-account').removeClass('hidden');
				$('#account').prop('checked', true);
			}
			$('.choice div').removeClass('selected-choice')
			$(this).addClass('selected-choice');
		})
		
		$('.fa-angle-down').click(function(){
			$('.agreement-detail').removeClass('hidden');
			$('.agreement-all').addClass('hidden');
		})
		
		$('.fa-angle-up').click(function(){
			$('.agreement-all').removeClass('hidden');
			$('.agreement-detail').addClass('hidden');
		})
		
		$('.agreement-detail .check-all').click(function(){
			var check_state = $(this).prop('checked'); 
			if(check_state == true){
				$('.check-detail').prop('checked',true);
			}else{
				$('.check-detail').prop('checked',false);
			}
		})
		
		$('.payment-btn').click(function(){

			var recipient = $('input[name=recipient]').val();
			var address = $('input[name=delivery_address]').val();
			var demand = $('input[name=demand]').val();
			var payment_way;
			
			var check_way1 = $('.payment_way1').prop('checked');
			var check_way2 = $('.payment_way2').prop('checked');
			var check_way3 = $('.payment_way3').prop('checked');
			var check_way4 = $('.payment_way4').prop('checked');
			
			if(check_way1 == true){
				payment_way = $('.payment_way1').val();	
			}else if(check_way2 == true){
				payment_way = $('.payment_way2').val();
			}else if(check_way3 == true){
				payment_way = $('.payment_way3').val();
			}else if(check_way4 == true){
				payment_way = $('.payment_way4').val();
			}	
		
			var check_user = $('.check_user').prop('checked');
			if(check_user == true){
				if(recipient == '' || address == '' || demand == ''){
					alert('배송 정보를 입력하세요.');
					return false;
				}				
			}else if(check_user == false){
				if(demand == ''){
					alert('배송 정보를 입력하세요.');
					return false;
				}
			}
			
			if(check_way1 == false && check_way2 == false && check_way3 == false && check_way4 == false){
				alert('결제수단을 선택하세요');
				return false;
			}
			
			var check_state1 = $('.check-all1').prop('checked');
			var check_state2 = $('.check-all2').prop('checked');
			var check_state3 = $('.check-all3').prop('checked');
			var check_state4 = $('.check-all4').prop('checked');
			if(check_state1 == false && check_state2 == false && check_state3 == false && check_state4 == false){
				alert('이용약관에 동의하세요');
				return false;
			}
		})
	</script>
</body>
</html>