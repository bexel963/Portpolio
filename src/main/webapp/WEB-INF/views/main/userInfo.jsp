<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="//code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
	<style>
		.modify-btn{
			height: 30px;
			font-size: 12px;
		}
	</style>
</head>
<body>
	<div class="container">   
	  <br><br>   
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>아이디</th>
	        <th>이름</th>
	        <th>나이</th>
	        <th>전화번호</th>
	        <th>이메일</th>
	        <th>등급</th>
	        <th>수정</th>
	      </tr>
	    </thead>
	    <tbody>
	      <c:forEach items="${list}"  var = "user">
		      <tr class="user-rows">
		        <td class="id">${user.user_id}</td>
		        <td>${user.user_name}</td>
		        <td>${user.user_age}</td>
		        <td>${user.user_phone}</td>
		        <td>${user.user_email}</td>
		        <td>
					<select class="grade">
						<c:forEach begin="0" end="5" var="i">
							<option <c:if test="${i == user.user_grade}">selected</c:if>>${i}</option>
						</c:forEach>
					</select>
				</td>
				<td class="button"><button class="btn btn-outline-success modify-btn">수정</button></td>
		      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  <br><br>
	</div>
	<script>
		$('.modify-btn').click(function(){
			var id = $(this).parents('.user-rows').find('.id').text();
			var grade = $(this).parents('.user-rows').find('.grade').val();
			console.log(id + ", " + grade);
		
			var sendData = { 'id' : id, 'grade' : grade };
			$.ajax({
				url : '<%=request.getContextPath()%>/grade/modify',
				type : 'post',
				data : JSON.stringify(sendData),
				dataType:"json",
		        contentType:"application/json; charset=UTF-8",
				success : function(data){	
					alert('권한 변경에 성공했습니다.')
				},
				error : function(){
					alert('권한 변경에 실패했습니다.')
				}
			})
		})
	</script>
</body>
</html>