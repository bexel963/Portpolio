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
			margin: 50px 0 30px 0;
		}
		.right .mid .table-title{
			width: 90%;
			margin: 0 auto;
			font-size: 18px;
			font-weight: bold;
			margin-top: 20px;
			margin-bottom: 10px;
			color: #96796D;
		}
		.right .mid .table{
			width: 85%;
			border-top: 1px solid #d5d5d5;
			border-bottom: 1px solid #d5d5d5;
			margin: 0 auto;
		}
		.right .mid .table tr{
			border-bottom: 1px solid #d5d5d5;
		}
		.right .mid .table tr:last-child{
			border-bottom: none;
		}
		.right .mid .table th{
			width: 20%;
			height: 40px;
			font-size: 14px;
			padding-left: 40px;
			color: #9C9C9C;
			font-weight: 900;
		}
		.right .mid .table td{
			width: 80%;
			height: 40px;
			font-size: 12px;
			color: #000000;
			padding-left: 20px;
		}
		.right .mid .table .text-input{
		    height: 25px;
		    padding: 0 0 0 6px;
		    border: 1px solid #ccc;
		    width: 200px;
		}
		.text{
			color: #AEAEAE;
			font-size: 14px;
			margin: 0 5px 0 5px;
		}
		.right .bot .btn-area{
			width: 300px;
			margin: 0 auto;
		}
		.right .bot .btn-area .add-btn{
			float: left;
			width: 130px;
			height: 30px;
			font-size: 14px;
			background-color: #2257A6;
			color: white;
			border: 1px solid #2257A6;
		}
		.right .bot .btn-area .x-btn{
			float: right;
			width: 130px;
			height: 30px;
			font-size: 14px;
			background-color: white;
			border: 1px solid #dae2e6;
		}
		.ex-text{
			color: #9C9C9C;
    		font-weight: 900;
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
				<div class="table-title">새로운 주소록 추가</div>
				<table class="table">
						<tr>
							<th style="padding-top:15px">배송지 이름</th>
							<td>
								<input class="text-input" type="text" name="user_nickName" value="" style="float: left; margin-right: 10px">
								<span class="ex-text">예) 우리집</span>
							</td>
						</tr>
						<tr>
							<th style="padding-top:15px">수령인</th>
							<td>
								<input class="text-input" type="text" name="user_nickName" value="" style="float: left; margin-right: 10px">
								<span class="ex-text">예) 홍길동</span>
							</td>
						</tr>
						<tr>
							<th style="padding-top:15px">휴대폰번호</th>
							<td>
								<input class="text-input" type="text" name="user_phone1" value="" style="width:155px;"><span class="text">-</span>
								<input class="text-input" type="text" name="user_phone2" value="" style="width:155px;"><span class="text">-</span>
								<input class="text-input" type="text" name="user_phone3" value="" style="width:155px;">
								<input type="hidden" name="user_phone">
							</td>
						</tr>
						<tr>
							<th style="padding-top:15px">전화번호</th>
							<td>
								<input class="text-input" type="text" name="user_homeCall1" value="" style="width:155px;"><span class="text">-</span>
								<input class="text-input" type="text" name="user_homeCall2" value="" style="width:155px;"><span class="text">-</span>
								<input class="text-input" type="text" name="user_homeCall3" value="" style="width:155px;">
								<input type="hidden" name="user_homeCall">
							</td>
						</tr>
						<tr>
							<th style="padding-top:15px">주소</th>
							<td>
								<input class="text-input" type="text" name="user_nickName" value="" style="float: left; margin-right: 10px; width: 500px;">
								<span class="ex-text">예) 서울 동대문구 청계천로 539</span>
							</td>
						</tr>
						<tr>
							<th style="padding-top:15px">상세주소</th>
							<td>
								<input class="text-input" type="text" name="user_nickName" value="" style="float: left; margin-right: 10px; width: 500px;">
								<span class="ex-text">예) xxxx아파트 xxx동 xxx호</span>
							</td>
						</tr>
					</table>
			</div>
			<div class="bot">
				<div class="btn-area">
					<button class="add-btn">주소록 추가</button>
					<button class="x-btn">취  소</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	
	</script>
</body>
</html>