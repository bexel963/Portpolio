<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<script src="//code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
	<meta charset="UTF-8">
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
		.product-info{
			width: 1170px;
			margin: 0 auto;
			padding: 50px 0 50px 0;
		}
		.product-table{
			margin: 0 auto;
			width: 80%;
			text-align: center;
			border: 1px solid #eee;
			border-left: none;
			border-right: none;
		}
		.product-table tr:nth-of-type(2n){
			background: #f7f7f7;
		}
		.product-table .title{
			border-bottom: 1px solid #eee;
		}
		.product-table .title th{
			padding: 10px 0 10px 0;
			border-bottom: 1px solid #dee2e6;
		}
		.product-table .content th{
			padding: 5px 0 5px 0;
			font-weight: 500;
			border-top: 1px solid #dee2e6;
		}
		.product-table .content{
			font-size: 14px;	
			color: #555555;
		}
	</style>
</head>
<body>
	<div class="category-title">
		<div class="text">상품등록 현황</div>
	</div>
	<div class="product-info">
		<table class="product-table">
			<tr class="title">
				<th>제품번호</th>
				<th>분류</th>
				<th>제품명</th>
				<th>원산지</th>
				<th>등록일</th>
				<th>판매가격</th>
				<th>판매량</th>
				<th>재고량</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr class="content">
					<th>${product.product_num}</th>
					<th>${product.product_category}</th>
					<th>${product.product_title}</th>
					<th>중국</th>
					<th>${product.product_registerDate}</th>
					<th>${product.product_cost}</th>
					<th>${product.product_sale}</th>
					<th>${product.product_amount}</th>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>