<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login</title>
  	<style>
  		a{
            color: black;
         }
  		.container{
  			width: 1140px;
  			margin: 0 auto;
  			padding: 100px 0;
  		}
  		.find-pw{
  			margin-top: 20px;
  		}
  	</style>
</head>
<body>
	<div class="container">
		
			<form action="<%=request.getContextPath()%>/login" method="post">	
				<div class="form-group">
					<label for="usr">ID:</label>
				    <input type="text" class="form-control" id="usr" name="user_id">
				</div>
				<div class="form-group">
				    <label for="pwd">PW:</label>
				    <input type="password" class="form-control" id="pwd" name="user_pw">
				</div>
				<button type="submit" class="btn btn-secondary col-12">로그인</button>
			</form>
		
		<br>
		<a href="#" class="find-pw">비밀번호 찾기</a>
	</div>
</body>
</html>