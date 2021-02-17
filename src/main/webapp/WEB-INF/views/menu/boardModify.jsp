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
    </style>
</head>
<body>
	<div class="container">
	  <h4>${board.num}번 게시글 수정</h4><br>
	  <form action="<%=request.getContextPath()%>/boardModify" method="post">	
	  	<div class="form-group" hidden>
	      <label for="title">번호</label>
	      <input type="text" class="form-control" id="num" name="num" value="${board.num}">
	    </div>
	    <div class="form-group">
	      <label for="title">제목</label>
	      <input type="text" class="form-control" id="title" name="title">
	    </div>
	    <div class="form-group">
	      <label for="writer">작성자</label>
	      <input type="text" class="form-control" id="writer" name="writer" readonly value="${user.user_id}">
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
	      <textarea class="form-control" id="content" name="content"></textarea>
	    </div>
	  <a href="<%=request.getContextPath()%>/boardModify"><button type="submit" class="btn btn-secondary">등록</button></a>
	  </form>
	  <a href="<%=request.getContextPath()%>/boardList"><button type="button" class="btn btn-secondary">목록</button><br><br></a>
	</div>
</body>
</html>