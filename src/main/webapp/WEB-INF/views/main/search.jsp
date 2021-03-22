<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
		.search-box1{
			width: 1170px;
			height: 50px;
			margin: 0 auto;
			padding-top: 10px;
			margin-top: 20px;
		}
		.search-box1 input{
			border: 1px solid rgb(204, 204, 204);
			padding-left: 10px;
		}
		.result-box{
			width: 1170px;
			margin: 0 auto;
			padding-top: 50px;
		}
		.search-box1 .input{
			width: 602px;
			margin: 0 auto;
		}
		.search-box1 .input .btn{
			background-color: #72c02c;
			border: 1px solid #eee;
			height: 28px;
			padding-top: 2px;
			margin-left: -6px;
			margin-top: -5px;
		}
		.result-box .product{
			width: 100%;
			margin-bottom: 20px;
			border-bottom: 1px solid #eee;
		}
		.result-box .title{
			width: 100%;
			height: 30px;
			font-size: 20px;
			color: #6E6E6E;
			margin-bottom: 5px;
		}
		.result-box .left{
			float: left;
			width: 25%;
			height: 210px;
			padding-top: 5px;
		}
		.result-box .left .img-box{
			width: 90%;
			height: 80%;
			border: 1px solid #eee;
		}
		
		.result-box .left .img-box img{
			width: 100%;
			height: 100%;
		}
		
		.result-box .right{
			float: left;
			width: 75%;
			height: 210px;
		}
		.result-box .right .content{
			padding-top: 5px;
			height: 90px;
			font-size: 16px;
			color: #6E6E6E;
		}
		.result-box .right .content .text{
			height: 70px;
			overflow: hidden;
			white-space: normal;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 2; /* 라인수 */
			-webkit-box-orient: vertical;
		}
		.after::after{
			clear: both;
			content: '';
			display: block;
		}
		.right .date-box{
			padding: 10px 0 0 20px;
		}
		.right .date-box .date, .right .date-box .comment{
			float: left;
			margin-right: 20px;
			font-size: 16px;
			color: #555555;
		}
		.n-result{
			height: 100%;
			padding: 15px 15px 0 0;
			float: right;
			font-size: 12px;
		}
	</style>
</head>

<body>
	<div class="category-title">
		<div class="text">
			<span>검색결과</span>
			<div class="n-result">${productList.size()} 개의 검색 결과가 있습니다.</div>
		</div>
	</div>
	<div class="search-box1">
		<form action="<%=request.getContextPath()%>/search" method="get" id="submit2">
			<div class="input">
				<input type="text" placeholder="search" name="search" style="width:500px; height:28px">
				<button class="btn" type="submit">검색</button>  
			</div>
		</form>
	</div>
	<div class="result-box">
		<c:forEach items="${productList}" var="product">
			<div class="product after">
				<div class="title"><a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}">${product.product_title}</a></div>
				<div class="left">
					<c:forEach items="${fileList}" var="file">
						<c:if test="${product.product_num == file.product_num}">
							<div class="img-box">
								<a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}">
									<img src="<%=request.getContextPath()%>/resources/img/${file.file_name}" alt="">
								</a>
							</div>
						</c:if>
					</c:forEach>	
				</div>
				<div class="right">
					<div class="content">
						<div class="text"><a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}">${product.product_content}</a></div>
					</div>
					<div class="date-box after">
						<div class="date">${product.product_registerDate}</div>
						<div class="comment">0 COMMENTS</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<script>
	$('#submit2').submit(function(){
    	var search = $(this).find('input[name=search]').val();
    	if( search.length < 2 ){
    		alert('한글자는 검색 안됩니다.');
	    	return false;
    	}
    })
	</script>
</body>
</html>