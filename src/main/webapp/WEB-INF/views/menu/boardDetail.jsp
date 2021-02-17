<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style>
        .btn{
            float: right;
            margin-left: 10px;  
        }
        .like{
        	float: left;
        	margin-left: -10px;
        }
        .content{
        	width: 1110px;
        	background-color: #e9ecef;
        	border: 1px solid #ced4da;
        	border-radius: .25rem;
        	padding: 6px 12px;
        }
    </style>
</head>
<body>
	<div class="container">
	  <form action="">	
	  	<div class="form-group">
	      <label>게시글 번호</label>
	      <input type="text" class="form-control" name="num" value="${board.num}" readonly>
	    </div>
	    <div class="form-group">
	      <label for="title">제목</label>
	      <input type="text" class="form-control" id="title" name="title" readonly value="${board.title}">
	    </div>
	    <div class="form-group">
	      <label for="writer">작성자</label>
	      <input type="text" class="form-control" id="writer" name="writer" readonly value="${board.writer}">
	    </div>
	    <div class="form-group">
	      <label for="writer">작성일</label>
	      <input type="text" class="form-control" id="registerDate" name="registerDate" readonly value="${board.registerDate}">
	    </div>
	    <div class="form-group">
	      <label for="writer">조회</label>
	      <input type="text" class="form-control" id="views" name="views" readonly value="${board.views}">
	    </div>
	    <div class="form-group">
	      <label for="content">내용</label>
	      <div class="content">${board.content}</div>
	    </div>
	    <div class="form-group like">
	      <button type="button" class="btn btn-<c:if test="${like==null || like.up != -1}">outline-</c:if>success down">비추천</button>
	      <button type="button" class="btn btn-<c:if test="${like==null || like.up != 1}">outline-</c:if>success up">추천</button>
	    </div><br><br><br>
	  </form>
	  <c:if test="${user != null && user.user_id == board.writer}">
		  <a href="<%=request.getContextPath()%>/boardModify?num=${board.num}"><button type="submit" class="btn btn-secondary">수정</button></a>
		  <a href="<%=request.getContextPath()%>/boardDelete?num=${board.num}"><button type="submit" class="btn btn-secondary">삭제</button></a>
	  </c:if>
	  <a href="<%=request.getContextPath()%>/boardList"><button type="button" class="btn btn-secondary">목록</button><br><br></a>
	</div>
	<script type="text/javascript">
		$('.btn.up, .btn.down').click(function(){
	
			var userId = '${user.user_id}';
			if(userId == ''){
				alert('회원이 아닙니다.')
				return;
			}
			var boardNum = $('input[name=num]').val();
			var up = 0;
			if($(this).hasClass('up')){
				up = 1;
			}
			else{
				up = -1;
			}
		
			var sendData = {'userId' : userId, 'boardNum' : boardNum, 'up' : up}	
			$.ajax({
				url : '<%=request.getContextPath()%>/boardLike',
				type : 'post',
				data : JSON.stringify(sendData),
				dataType:"json",
		        contentType:"application/json; charset=UTF-8",
				success : function(data){	
					if(up == 1){
						alert('추천했습니다.')
						
					}else if(up == -1){
						alert('비추천했습니다.');
					}
				},
				error : function(){
					console.log('추천/비추천 과정에 문제가 있습니다.')
				}
			})
		})
	</script>
	${like}
</body>
</html>