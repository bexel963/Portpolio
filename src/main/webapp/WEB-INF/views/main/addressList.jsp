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
		.hidden{
			display: none;
		}
		input:focus{
			border: none;
    		outline:none;
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
		.right .top,
		.right .mid,
		.right .bot,
		.right .delete{
			width: 100%;
		}
		.right .top .title-box{
			width: 100%;
			color: #767676;
		    border: 1px solid #d5d5d5;
		    padding: 20px 0 20px 20px;
		}
		.right .top .title-box .left{
			width: 20%;
			height: 60px;
			font-size: 20px;
			color: #000000;
			font-weight: bold;
			float: left;
			border-right: 1px solid #d5d5d5;
			margin: 0 auto;
			text-align: center;
			padding-top: 13px;
		}
		.right .top .title-box .right{
			padding-left: 20px;
			width: 80%;
			font-size: 12px;
			color: #464646;
			float: left;
			padding-top: 7px;
			line-height: 2;
		}
		.right .top .title-box .right i{
			margin-right: 5px;
			color: blue;
		}
		.myInfo-container .right .mid{
			margin: 50px 0 20px 0;
		}
		.myInfo-container .right .mid .btn-box{
			float: right;
			cursor: pointer;
		}
		.myInfo-container .right .bot .table .row1 th{
		    height: 40px;
		    font-size: 12px;
		    color: #9C9C9C;
		    font-weight: 900;
		    text-align: center;
		}
		.myInfo-container .right .bot .table .row2 th{
			height: 80px;
			font-size: 12px;
		    color: #000000;
		    text-align: center;
		    border-bottom: 1px solid #dee2e6;
		    padding-top: 30px;
		}
		.myInfo-container .right .amend-btn{
			background-color: white;
			border: 1px solid #dae2e6;
			width: 40px;
			height: 20px;
			cursor: pointer;
		}
		.myInfo-container .right .delete{
			margin-top: 20px;
		}
		.myInfo-container .right .delete-btn{
			background-color: white;
			border: 1px solid #dae2e6;
			width: 125px;
			height: 25px;
			cursor: pointer;
			font-size: 12px;
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
			<div class="top">
				<div class="title-box after">
					<div class="left">나의 주소록</div>
					<div class="right">
						<i class="fas fa-caret-right"></i><span>자주 사용하시는 배송지를 주소록에 등록해두시면 보다 편리하게 이용할 수 있습니다.</span><br>
						<i class="fas fa-caret-right"></i><span>최대 100개까지 등록하실 수 있습니다.</span>
					</div>
				</div>
			</div>
			<div class="mid after">
				<div class="btn-box after">
					<a href="<%=request.getContextPath()%>/addressAdd"><img src="<%=request.getContextPath()%>/resources/img/btn_addaddress.gif"></a>
				</div>
			</div>
			<div class="bot">
				<table class="table">
					<tr class="row1">
						<th>선택</th>
						<th>배송지이름</th>
						<th>수령인</th>
						<th>휴대폰번호</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>관리</th>
					</tr>
					<tr class="row2">
						<th><input type="checkbox"></th>
						<th>우리집</th>
						<th>임재형</th>
						<th>010-5608-0601</th>
						<th>070-4578-1248</th>
						<th>
							<span>충청북도 청주시 서원구 수곡로 88 (수곡동, 세원홍실아파트)</span><br>
							<span>101동 408호</span>
						</th>
						<th>
							<button class="amend-btn">수정</button>
						</th>
					</tr>
				</table>
			</div>
			<div class="delete">
				<button class="delete-btn">선택한 주소록 삭제</button>
			</div>
		</div>
	</div>
	<script>
	
	</script>
</body>
</html>