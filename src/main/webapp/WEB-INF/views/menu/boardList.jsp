<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
		a{
	    	text-decoration: none;
	    	color: black;
	  	}
		.title{
			color: black;
		}
        .container{
            padding: 50px 50px;  
        }
        .table{
            text-align: center;
            font-size: 11px;
            width: 900px;
            border-bottom: solid 2px #dee2e6;
            margin: 0 auto;
        }
    	.board{
    		width: 900px;
    		margin: 0 auto;
    	}
    	.btn{
    		float: right;
    		margin-right: 70px;
    	}
    </style>
</head>
<body>
	<div class="category-title">
		<div class="text">�Խ���</div>
	</div>
	<div class="container">
	    <table class="table">
	      <thead>
	        <tr>
	          <th width="50">NO</th>
	          <th width="500">����</th>
	          <th width="100">�۾���</th>
	          <th width="90">��¥</th>
	          <th width="50">��ȸ</th>
	          <th width="50">��õ</th>    
	        </tr>
	      </thead>
	      <tbody>
		      <c:forEach items="${boardList}" var="list">
		        <tr>
		          <td>${list.num}</td>
		          <td><a href="<%=request.getContextPath()%>/boardDetail?num=${list.num}" class="title">${list.title}</a></td>
		          <td>${list.writer}</td>
		          <td>${list.registerDate}</td>
		          <td>${list.views}</td>
		          <td>1</td>
		        </tr>
		      </c:forEach>
	      </tbody>
	    </table><br>
	    <ul class="pagination justify-content-center">
		  	<c:if test="${pm.prev}">
		    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/boardList?page=${pm.startPage-1}&search=${pm.criteria.search}&type=${pm.criteria.type}">����</a></li>
		  	</c:if>
		    <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
		    	<c:if test="${index == pm.criteria.page}">
		    		<li class="page-item active"><a class="page-link" href="<%=request.getContextPath()%>/boardList?page=${index}&search=${pm.criteria.search}&type=${pm.criteria.type}">${index}</a></li>
		    	</c:if>
		    	<c:if test="${index != pm.criteria.page}">
		    		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/boardList?page=${index}&search=${pm.criteria.search}&type=${pm.criteria.type}">${index}</a></li>
		    	</c:if>
		    </c:forEach>
		    <c:if test="${pm.next}">
		    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/boardList?page=${pm.endPage+1}&search=${pm.criteria.search}&type=${pm.criteria.type}">����</a></li>
		    </c:if>
		</ul>
	    <a href="<%=request.getContextPath()%>/boardRegis"><button type="button" class="btn btn-secondary">�۾���</button></a>
	</div>
</body>
</html>