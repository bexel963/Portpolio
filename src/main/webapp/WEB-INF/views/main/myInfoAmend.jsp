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
		.right .bot{
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
		.right .mid .table-title{
			width: 90%;
			margin: 0 auto;
			font-size: 18px;
			font-weight: bold;
			margin-top: 20px;
			margin-bottom: 10px;
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
		.pw-btn,
		.dup-check{
			height: 25px;
			color: white;
			text-align: center;
			padding-top: 4px;
			background-color: #3566B0;
			border-radius: 2px;
			cursor: pointer;
		}
		.right .mid .table .text-input{
		    height: 25px;
		    padding: 0 0 0 6px;
		    border: 1px solid #ccc;
		    width: 200px;
		}
		.right .mid .table .year-text{
			margin-right: 10px;
			color: #9C9C9C;
			font-weight: 900;
			font-size: 14px;
		}
		.right .bot .btn-area{
			margin-top: 40px;
			padding-left: 280px;
		}
		.right .bot .conrfirm-btn{
			float: left;
			margin-right: 30px;
			cursor: pointer;
		}
		.right .bot .cancel-btn{
			float: left;
			cursor: pointer;
		}
		.text{
			color: #AEAEAE;
			font-size: 14px;
			margin: 0 5px 0 5px;
		}
		.hidden{
			display: none;
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
				<li>개인정보수정</li>
				<li>나의 주소록</li>
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
					<div class="left">개인정보 수정</div>
					<div class="right">
						<i class="fas fa-caret-right"></i><span>고객님의 주소와 연락처등 개인정보를 수정하실 수 있습니다.</span><br>
						<i class="fas fa-caret-right"></i><span>핸드폰 번호와 이메일, 주소등은 한번 더 꼭 확인하시기 바랍니다.</span>
					</div>
				</div>
			</div>
			<form action="<%=request.getContextPath()%>/myInfoAmend" method="post" id="myInfoModi">
				<div class="mid">
					<input type="hidden" name="user_id" value="${user.user_id}">
					<div class="table-title">기본정보</div>
					<table class="table">
						<tr>
							<th>이 름</th>
							<td>${user.user_name}</td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>${user.user_id}</td>
						</tr>
						<tr>
							<th style="padding-top:15px;">비밀번호</th>
							<td>
								<input type="password" name="user_pw" value="" class="text-input" style="width:300px;">
							</td>
						</tr>
						<tr>
							<th style="padding-top:15px;">비밀번호 확인</th>
							<td>
								<input type="password" name="user_pw_confirm" value="" class="text-input" style="width:300px;">
							</td>
						</tr>
						<tr>
							<th style="padding-top:17px">이메일</th>
							<td style="padding-top:10px">
								<input type="text" name="user_email1" value="" class="text-input">
								<span class="text" style="font-size: 20px;">@</span>
								<input type="text" name="user_email2" value="" class="text-input">
								<input type="hidden" name="user_email">
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
							<th style="padding-top:15px">닉네임</th>
							<td>
								<input class="text-input" type="text" name="user_nickName" value="" style="float: left; margin-right: 10px">
								<div class="dup-check" style="width: 130px; float: left;"><i class="fas fa-check" style="margin-right: 5px"></i>닉네임 중복체크</div>
							</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>
								<select class="year" name="user_age1" id="" style="width: 100px">
									<option value="">선택해주세요</option>
									<c:forEach begin="1920" end="2006" var="index">
										<option class="option" value="${index}">${index}</option>
									</c:forEach>
								</select>
								<span class="year-text">년</span>
								<select class="month" name="user_age2" id="" style="width: 100px">
									<option value="">선택해주세요</option>
									<c:forEach begin="0" end="12" var="index">
										<option class="option" value="${index}">${index}</option>
									</c:forEach>
								</select>
								<span class="year-text">월</span>
								<select class="date" name="user_age3" id="" style="width: 100px">
									<option value="">선택해주세요</option>
									<c:forEach begin="0" end="31" var="index">
										<option class="option" value="${index}">${index}</option>
									</c:forEach>
								</select>
								<span class="year-text">일</span>
								<input type="hidden" name="user_age">
							</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>
								<input type="radio" name="user_gender" value="남성"> 남성
								<input type="radio" name="user_gender" value="여성" style="margin-left: 10px;"> 여성
							</td>
						</tr>
					</table>
				</div>
				<div class="bot">
					<div class="btn-area">
						<div class="conrfirm-btn"><img src="<%=request.getContextPath()%>/resources/img/btn_confirm.gif"></div>
						<div class="cancel-btn"><img src="<%=request.getContextPath()%>/resources/img/btn_cancel02.gif"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
		$('.dup-check').click(function(){
			var obj = $(this);
   			var user_nickName = $('input[name=user_nickName]').val();
       		if(user_nickName == ''){
       			alert('닉네임을 입력하세요');
       			return;
       		}
       		var data = { 'user_nickName' : user_nickName };	// 'id' - 멤버변수 이름 id - 위에서 만든 변수의 값
       		$.ajax({
				url : '<%=request.getContextPath()%>/nickNameDup',
				type : 'post',
				data : data,
				success : function(data){	// 성공하면 서버에서 데이터 받음
					if(data == 'user'){
						alert('사용중인 닉네임 입니다.');
						obj.siblings('input').val('');
						
					}else{
						alert('사용 가능한 닉네임 입니다.');
						dup = true;
					}
				},
				error : function(){
					console.log('실패');
				}
			})
		})
		$('.conrfirm-btn').click(function(){
			var phone1 = $('input[name=user_phone1]').val();
			var phone2 = $('input[name=user_phone2]').val();
			var phone3 = $('input[name=user_phone3]').val();	
			var user_phone = phone1 + '-' + phone2 + '-' + phone3;
			
			var homeCall1 = $('input[name=user_homeCall1]').val();
			var homeCall2 = $('input[name=user_homeCall2]').val();
			var homeCall3 = $('input[name=user_homeCall3]').val();	
			var user_homeCall = homeCall1 + '-' + homeCall2 + '-' + homeCall3;
			
			var year = $('select[name=user_age1]').val();
			var month = $('select[name=user_age2]').val();
			var date = $('select[name=user_age3]').val();
			var user_age = year + '.' + month + '.' + date;
			
			var email1 = $('input[name=user_email1]').val();
			var email2 = $('input[name=user_email2]').val();
			var user_email = email1 + '@' + email2;
			
			$('input[name=user_phone]').val(user_phone);
			$('input[name=user_homeCall]').val(user_homeCall);
			$('input[name=user_age]').val(user_age);
			$('input[name=user_email]').val(user_email);
			
			var pw1 = $('input[name=user_pw]').val();
			var pw2 = $('input[name=user_pw_confirm]').val();
			if( pw1 != pw2){
				alert("비밀번호가 일치하지 않습니다.");
				$('input[name=user_pw]').val('');
				$('input[user_pw_confirm]').val('');
				return false;
			}
			$('#myInfoModi').submit();
		})
	</script>
</body>
</html>