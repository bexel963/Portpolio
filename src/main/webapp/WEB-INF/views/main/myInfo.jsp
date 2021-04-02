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
		.after::after{
			clear: both;
			content: '';
			display: block;
		}
		.container-title{
			border-bottom: 2px solid #000000;
			width: 1170px;
			margin: 0 auto;
			padding: 30px 0 15px 0;
		}
		.container-title span:nth-of-type(1){
			font-style: italic;
			color: #000000;
			font-weight: bold;
			font-size: 20px;
			margin-right: 5px;
		}
		.container-title span:nth-of-type(2){
			color: #F22D52;
			font-size: 14px;
		}
		.myInfo-container{
			width: 1170px;
			margin: 0 auto;
			padding: 15px 0 0 0;  
			margin-bottom: 130px;
		}
		.user-hi{
			width: 100%;
			margin-bottom: 10px;
			font-size: 12px;
		}
		.myInfo-container .left{
			float: left;
			width: 20%;
		}
		.myInfo-container .left li{
			font-size: 12px;
			color: #767676;
			padding: 10px 0 0 10px;
			margin-bottom: 10px;
			font-weight: bold;
			cursor: pointer;
		}	
		.myInfo-container .right{
			float: right;
			width: 80%;
		}
		.myInfo-container .right div{
			position: relative;
			float: left;
			width: 220px;
			height: 150px;
			border: 1px solid #d3dae4;
			margin: 0 30px 30px 30px;
			padding: 20px 0 0 20px;
			cursor: pointer;
		}
		.myInfo-container .right .text_go{
			position: absolute;
			right: 10px;
			bottom: 10px;
		}
	</style>
</head>
<body>
	<div class="container-title after">
		<span>MY Information</span>
		<span>고객님의 개인 정보, 주문 내역 등의 이용 기록을 조회할 수 있습니다.</span>
	</div>
	<div class="myInfo-container after">
		<div class="user-hi"><span style="font-weight: bold; font-size: 16px;">임재형</span>님 반갑습니다.</div>
		<div class="left after">
			<div><img src="<%=request.getContextPath()%>/resources/img/my_information.gif"></div>
			<ul>
				<li><a href="<%=request.getContextPath()%>/myInfoAmend">개인정보수정</a></li>
				<li><a href="<%=request.getContextPath()%>/addressList">나의 주소록</a></li>
				<li>1:1 상담 내역</li>
				<li>회원탈퇴</li>
			</ul>
			<div><img src="<%=request.getContextPath()%>/resources/img/shopping_info.gif"></div>
			<ul>
				<li>주문내역</li>
				<li>캐쉬</li>
				<li>댓글관리</li>
			</ul>
			<div><img src="<%=request.getContextPath()%>/resources/img/banner_cs_center.gif"></div>
		</div>
		<div class="right">
			<div class="my-amend">
				<a href="<%=request.getContextPath()%>/myInfoAmend">
					<img src="<%=request.getContextPath()%>/resources/img/amand.gif">
				</a>
				<a href="<%=request.getContextPath()%>/myInfoAmend">
					<img class="text_go" src="<%=request.getContextPath()%>/resources/img/txt_go.gif">
				</a>
			</div>
			<div class="address">
				<a href="<%=request.getContextPath()%>/addressList">
					<img src="<%=request.getContextPath()%>/resources/img/address.gif">
				</a>
				<a href="<%=request.getContextPath()%>/addressList">
					<img class="text_go" src="<%=request.getContextPath()%>/resources/img/txt_go.gif">
				</a>
			</div>
			<div class="counsel">
				<img src="<%=request.getContextPath()%>/resources/img/counsel.gif">
				<img class="text_go" src="<%=request.getContextPath()%>/resources/img/txt_go.gif">
			</div>
			<div class="order-history">
				<img src="<%=request.getContextPath()%>/resources/img/order_history.gif">
				<img class="text_go" src="<%=request.getContextPath()%>/resources/img/txt_go.gif">
			</div>
			<div class="cash">
				<img src="<%=request.getContextPath()%>/resources/img/cash.gif">
				<img class="text_go" src="<%=request.getContextPath()%>/resources/img/txt_go.gif">
			</div>
			<div class="my-comment">
				<img src="<%=request.getContextPath()%>/resources/img/my_comment.gif">
				<img class="text_go" src="<%=request.getContextPath()%>/resources/img/txt_go.gif">
			</div>
		</div>
	</div>
</body>
</html>