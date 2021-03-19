<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.4.1.js"></script>
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
	.category-container{
		padding-top: 50px;
		width: 100%;
	}
	.category-container .content-boxes{
		width: 1170px;
		margin: 0 auto;
	}
	.content-boxes .box{
		width: 500px;
		height: 300px;
		margin: 0 40px 50px 40px;
		float: left;
		border: 1px solid #eee;
		box-shadow: 5px 5px 5px 5px #eee;
		position: relative;
	}
	.content-boxes .box img{
		opacity: 0.8;
	}
	.content-boxes .box span{
		position: absolute;
		padding: 5px 10px;
		text-align: center;
		top: 50%;
		left: 50%;
		transform: translate( -50%, -50% );
		font-weight: bold;
		font-size: 30px;
		color: #212529;
		z-index: 1;
	}
	.after::after{
		clear: both;
		content: '';
		display: block;
	}
</style>
</head>
<body>
	<div class="category-title">
		<div class="text">CATEGORY</div>
	</div>
	<div class="category-container">
		<div class="content-boxes after">
			<div class="box">
				<a href="<%=request.getContextPath()%>/categoryDetail?product_category=1">
					<img width="100%" height="100%"src="<%=request.getContextPath()%>/resources/img/건강.png"><span>1.건강</span>
				</a>
			</div>
			<div class="box">
				<a href="<%=request.getContextPath()%>/categoryDetail?product_category=2">
					<img width="100%" height="100%"src="<%=request.getContextPath()%>/resources/img/생활.jpg"><span>2.생활</span>
				</a>
			</div>
			<div class="box">
				<a href="<%=request.getContextPath()%>/categoryDetail?product_category=3">
					<img width="100%" height="100%"src="<%=request.getContextPath()%>/resources/img/뷰티.png"><span>3.뷰티</span>
				</a>
			</div>
			<div class="box">
				<a href="<%=request.getContextPath()%>/categoryDetail?product_category=4">
					<img width="100%" height="100%"src="<%=request.getContextPath()%>/resources/img/컴퓨터관련.jpg"><span>4.컴퓨터 관련</span>
				</a>
			</div>
			<div class="box">
				<a href="<%=request.getContextPath()%>/categoryDetail?product_category=5">
					<img width="100%" height="100%"src="<%=request.getContextPath()%>/resources/img/기타.png">
				</a>
			</div>
		</div>
	</div>
</body>
</html>