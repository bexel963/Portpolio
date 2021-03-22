<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			margin-bottom: 20px;
		}
	.search-box1 input{
		border: 1px solid rgb(204, 204, 204);
		padding-left: 10px;
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
	.result{
		width: 1170px;
		height: 300px;
		border: 1px solid #eee;
		margin: 0 auto;
		font-size: 30px;
		color: #555555;
		text-align: center;
		padding-top: 120px;
	}
</style>
</head>

<body>
	<div class="category-title">
		<div class="text">검색결과</div>
	</div>
	<div class="search-box1">
		<form action="<%=request.getContextPath()%>/search" method="get" id="submit3">
			<div class="input">
				<input type="text" placeholder="search" name="search" style="width:500px; height:28px">
				<button class="btn" type="submit">검색</button>  
			</div>
		</form>
	</div>
	<div class="result">
		"검색 결과가 없습니다."
	</div>
	<script>
		$('#submit3').submit(function(){
	    	var search = $(this).find('input[name=search]').val();
			console.log(search.length);
	    	if( search.length < 2 ){
	    		alert('한글자는 검색 안됩니다.');
		    	return false;
	    	}
	    })
    </script>
</body>
</html>