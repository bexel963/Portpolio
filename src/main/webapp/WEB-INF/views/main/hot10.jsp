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
		height: 500px;
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
	.content-boxes .article{
       	margin: 5px 0;
        color: #6e6e6e;
        font-size: 16px;
        line-height: 25px;
        height: 150px;
		display:-webkit-box;
		overflow: hidden;
		text-overflow: ellipsis;
		-webkit-line-clamp: 6;
		-webkit-box-orient: vertical;
	}
    .content-boxes a{
        cursor: pointer;
    }
    .content-boxes .title{
        font-size: 22px;
        line-height: 1.4;
        color: #333;
        margin: 5px 0;
    }
    .content-boxes .category{
        margin: 5px 0;
        font-size: 12px;
        color: #888;
        display: inline-block;
    }
    .content-boxes .date::before{
        content: '';
        display: inline-block;
        width: 1px;
        height: 11px;
        background-color: #bec8d8;
        vertical-align: -1px;
        margin: 0 10px 0 7px;
    }
    .content-boxes .date{
        margin: 5px 0;
        font-size: 12px;
        color: #888;
        display: inline-block;
    }
    .content-boxes .box:hover{
        transform: scale(1.05);
        color: #6e6e6e;
    }
    .rank{
    	font-size: 40px;
    	padding-top: 8px;
        color: #F9F9F8;
    	background-color: #303136;
    	width: 80px;
    	height: 80px;
    	border: 1px solid black;
    	position: absolute;
    	top: 0;
    	left: 0;
    	text-align: center;
    	z-index: 1;
    	opacity: 0.5;
    }
</style>
</head>
<body>
	<div class="category-title">
		<div class="text">HOT10</div>
	</div>
	<div class="category-container">
		<div class="content-boxes after">
			<c:forEach items="${productList}" var="product" varStatus="index">
				<div class="box">
					<div class="rank">${index.count}</div>
					<c:forEach items="${fileList}" var="file">
	             		<a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}" class="img-box">
	                    	<c:if test="${file.product_num == product.product_num}">			                        	
	                        	<img src="<%=request.getContextPath() %>/resources/img${file.file_name}" alt="" width="100%" height="300px">			                           
	                     	</c:if>
	                 	</a>
	                </c:forEach>
	                <a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}">
	                    <div class="title">${product.product_title}</div>
	                    <div class="category">${product.product_category}</div>
	                    <div class="date">${product.product_registerDate}</div>
	                    <div class="article">${product.product_content}</div>
	                </a>
				</div>
	        </c:forEach>
		</div>
	</div>
</body>
</html>