<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
  	<style>
  		.container{
  			padding: 100px 0;
  			width: 1140px;
  			margin: 0 auto;
  		}
  		button{
  			margin-bottom: 20px;
  		}
  	</style>
</head>
<body>
	<div class="container">
        <form action="<%=request.getContextPath()%>/signup" method="post">
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" class="form-control" id="usr" name="user_id" value="${user.user_id}">	<!-- user클래스의 getUserId()메소드가 호출된다. -->
            </div>
            <button type="button" class="btn btn-secondary col-12" id="dup">아이디 중복검사</button>
            <div class="form-group">
                <label for="pw">비밀번호</label>
                <input type="password" class="form-control" id="usr" name="user_pw" value="">
            </div>
            <div class="form-group">
                <label for="pw2">비밀번호 확인</label>
                <input type="password" class="form-control" id="usr" name="user_pw2" value="">
            </div>
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" class="form-control" id="usr" name="user_name" value="">
            </div>
            <div class="form-group">
                <label for="age">나이</label>
                <input type="text" class="form-control" id="usr" name="user_age" value="">
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" class="form-control" id="usr" name="user_email" value="">
            </div>
            <div class="form-group">
                <label for="num">전화번호</label>
                <input type="text" class="form-control" id="usr" name="user_phone" value="">
            </div>
            <div class="form-group">
                <label for="num">주소</label>
                <input type="text" class="form-control" id="usr" name="user_address" value="">
            </div>
            <button type="submit" class="btn btn-secondary col-12">회원가입</button>
        </form>
	</div>
</body>
</html>