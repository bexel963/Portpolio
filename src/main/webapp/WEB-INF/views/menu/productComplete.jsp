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
		.order-box9 .container9 .btn-area{
			width: 1000px;
			text-align: center;
			padding-top: 50px;
			margin-bottom: 50px;
		}
		.order-box9 .container9 .btn-area img{
			cursor: pointer;
		}
		.step-box .row3{
			font-weight: 1000;
			color: black;
		}
		.message-box{
			margin-top: 50px;
			width: 100%;
			height: 300px;
		    color: #555555;
		    font-size: 30px;
		    font-weight: bold;
		    padding: 20px 0 0 0;
		    text-align: center;
		}
		.fa-check-circle{
			font-size: 200px;
			color: rgb(81,104,238);
			margin-bottom: 20px;
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
					<li class="row3"><p>3.주문완료</p></li>
				</ul>
			</div>
			<div class="message-box">
				<a href="<%=request.getContextPath()%>/"><i class="far fa-check-circle"></i></a>
				<p class="message">결제완료</p>
			</div>
		</div>
	</div>
</body>
</html>