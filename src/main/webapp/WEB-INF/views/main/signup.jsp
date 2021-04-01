<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.after::after{
			clear: both;
			content: '';
			display: block;
		}
		button:focus{
			border: none;
    		outline:none;
		}
		input:focus{
			border: none;
    		outline:none;
		}
		.signup-container{
			width: 1170px;
			margin: 0 auto;
			border: 1px solid #cfcfcf;
			margin-top: 30px;
			margin-bottom: 30px;
			padding: 0 5px 30px 5px;
		}
		.greet-box{
			width: 100%;
			height: 200px;
			background-color: #FAFAFA;
			text-align: center;
			padding-top: 40px;
		}
		.greet-box p{
			color: #000000;
			font-size: 30px;
			font-weight: bold;
		}
		.greet-box span{
			color: #AEAEAE;
			font-size: 16px;
			font-weight: bold;
		}
		.process-box{
			width: 80%;
			margin: 0 auto;
			padding-top: 40px;
		}
		.process-box .dup-check{
			width: 90px;
		    line-height: 48px;
		    margin-left: 6px;
		    border: 1px solid #1f4aa0;
		    border-radius: 3px;
		    background-color: #1f4aa0;
		    box-sizing: border-box;
		    text-align: center;
		    color: #fff;
		    font-size: 16px;
		    vertical-align: top;
		    height: 49px;
		}
		.process-box ul li{
			float: left;
		}
		.process-box ul{
			padding-right: 15px;
		    font-weight: bold;
		    color: #212121;
		    font-size: 20px;
		    line-height: 24px;
		    letter-spacing: -2.5px;
		    margin-bottom: 10px;
		}
		.process-box .text-input{
			height: 50px;
			border: 1px solid #cfcfcf;
			padding-left: 4px;
		}
		.process-box .row1{
			width: 30%;
			padding: 13px 0 0 50px;
			
		}
		.process-box .row2{
			width: 70%;
		}
		.signup-container .btn-box{
			width: 100%;
			margin-top: 60px;
			padding-left: 300px;
		}
		.text{
			color: #AEAEAE;
			font-size: 14px;
			margin: 0 5px 0 5px;
		}
		.signup-container .btn-box .go{
			width: 253px;
		    height: 58px;
		    line-height: 58px;
		    border: 1px solid #153351;
		    background-color: #1f4aa0;
		    color: #fff;
		    font-weight: bold;
		    font-size: 18px;
		    margin-top: 10px;
		}
		.signup-container .btn-box .cancel{
			width: 253px;
		    height: 58px;
		    line-height: 58px;
		    margin-left: 10px;
		    border: 1px solid #dcdcdc;
		    background-color: #f1f1f1;
		    color: #666;
		    font-weight: bold;
		    font-size: 18px;
		}
		.year-text{
			margin-right: 10px;
			color: #9C9C9C;
			font-weight: 900;
			font-size: 14px;
		}
		.process-box select{
			font-size: 14px;
		}
		.process-box .select-box{
			padding-top: 10px;
		}
		.process-box .gender{
			padding-top: 10px;
		}
	</style>
</head>
<body>
	<div class="signup-container after">
		<div class="greet-box after">
			<p>Portpolio에 오신걸 환영합니다.</p>
			<span>Portpolio에 오신 걸 환영합니다. Portpolio 회원으로 가입하시면 Portpolio의 모든 서비스를 안전하게 이용하실 수 있습니다.</span><br>
			<span>Portpolio은 회원님의 소중한 개인정보를 안전하게 관리하고 있습니다.</span>
		</div>
		<form action="<%=request.getContextPath()%>/signup" method="post">
			<div class="process-box after">
				<ul class="after">
					<li class="row1">이름</li>
					<li class="row2"><input type="text" name="user_name" value="" class="text-input" style="width:470px;"></li>
				</ul>
				<ul class="after">
					<li class="row1">아이디</li>
					<li class="row2">
						<input type="text" name="user_id" value="" class="text-input" style="width:370px;">
						<button type="button" class="dup-check id">중복체크</button>
					</li>
				</ul>
				<ul class="after">
					<li class="row1">닉네임</li>
					<li class="row2">
						<input type="text" name="user_nickName" value="" class="text-input" style="width:370px;">
						<button type="button" class="dup-check nickName">중복체크</button>
					</li>
				</ul>
				<ul class="after">
					<li class="row1">비밀번호</li>
					<li class="row2"><input type="password" name="user_pw" value="" class="text-input" style="width:470px;"></li>
				</ul>
				<ul class="after">
					<li class="row1">비밀번호 확인</li>
					<li class="row2"><input type="password" name="user_pw_confirm" value="" class="text-input" style="width:470px;"></li>
				</ul>
				<ul class="after">
					<li class="row1">이메일</li>
					<li class="row2">
						<input type="text" name="user_email1" value="" class="text-input">
						<span class="text" style="font-size: 20px;">@</span>
						<input type="text" name="user_email2" value="" class="text-input">
						<input type="hidden" name="user_email">
					</li>
				</ul>
				<ul class="after">
					<li class="row1">생년월일</li>
					<li class="row2 select-box">
						<select class="year" name="user_age1" id="" style="width: 130px">
							<option value="">선택해주세요</option>
							<c:forEach begin="1920" end="2006" var="index">
								<option class="option" value="${index}">${index}</option>
							</c:forEach>
						</select>
							<span class="year-text">년</span>
						<select class="month" name="user_age2" id="" style="width: 130px">
							<option value="">선택해주세요</option>
							<c:forEach begin="0" end="12" var="index">
								<option class="option" value="${index}">${index}</option>
							</c:forEach>
						</select>
							<span class="year-text">월</span>
						<select class="date" name="user_age3" id="" style="width: 130px">
							<option value="">선택해주세요</option>
							<c:forEach begin="0" end="31" var="index">
								<option class="option" value="${index}">${index}</option>
							</c:forEach>
						</select>
						<span class="year-text">일</span>
						<input type="hidden" name="user_age">
					</li>
				</ul>
				<ul class="after">
					<li class="row1">전화번호</li>
					<li class="row2">
						<input type="text" name="user_homeCall1" value="" class="text-input" style="width:155px;"><span class="text">-</span>
						<input type="text" name="user_homeCall2" value="" class="text-input" style="width:155px;"><span class="text">-</span>
						<input type="text" name="user_homeCall3" value="" class="text-input" style="width:155px;">
						<input type="hidden" name="user_homeCall">
					</li>
				</ul>
				<ul class="after">
					<li class="row1">폰번호</li>
					<li class="row2">
						<input type="text" name="user_phone1" value="" class="text-input" style="width:155px;"><span class="text">-</span>
						<input type="text" name="user_phone2" value="" class="text-input" style="width:155px;"><span class="text">-</span>
						<input type="text" name="user_phone3" value="" class="text-input" style="width:155px;">
						<input type="hidden" name="user_phone">
					</li>
				</ul>
				<ul class="after">
					<li class="row1">성별</li>
					<li class="row2 gender">
						<input type="radio" name="user_gender" value="남성"> 남성
						<input type="radio" name="user_gender" value="여성" style="margin-left: 20px;"> 여성
					</li>
				</ul>
			</div>
			<div class="btn-box after">
				<span class="text">본인은 만 14세 이상이며,이용약관 및 개인정보처리방침에 동의합니다.</span><br>
				<button type="submit" class="go">동의하고 가입하기</button>
				<button class="cancel">취소</button>
			</div>
		</form>
	</div>
	<script>
		$('.go').click(function(){
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
			var pw2 = $('input[user_pw_confirm]').val();
			if( pw1 != pw2){
				alert("비밀번호가 일치하지 않습니다.");
				$('input[name=user_pw]').val('');
				$('input[user_pw_confirm]').val('');
				return false;
			}
		})
		
	   	var dup = false;	// 전역변수 - 중북검사를 했는지 안 했는지 기억하는 변수
	   	$('.dup-check').click(function(){
	   		if($(this).hasClass('id')){
	   			var obj = $(this);
	   			var user_id = $('input[name=user_id]').val();
	       		if(user_id == ''){
	       			alert('아이디를 입력하세요');
	       			return;
	       		}
	       		var data = { 'user_id' : user_id };	// 'id' - 멤버변수 이름 id - 위에서 만든 변수의 값
	       		$.ajax({
					url : '<%=request.getContextPath()%>/idDup',
					type : 'post',
					data : data,
					success : function(data){	// 성공하면 서버에서 데이터 받음
						if(data == 'user'){
							alert('이미 가입된 아이디 입니다.');
							obj.siblings('input').val('');
						}else{
							alert('가입 가능한 아이디 입니다.');
							dup = true;
						}
					},
					error : function(){
						console.log('실패');
					}
				})
	   		}
	   		if($(this).hasClass('nickName')){
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
	   		}
	   	})
	   	$('input[name=user_id]').change(function(){ // id값이 바뀌면 중복검사 다시 해야한다.
	   		dup = false;
	   	})
	   	$('form').submit(function(){
	   		if(!dup){
	   			alert('아이디 중복검사를 하세요');
	   			return false;
	   		}
	   	})
	</script>
</body>
</html>