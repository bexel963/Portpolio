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
        	width: 1170px;
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
    	.search-box{
    		padding-left: 70px;
    		margin-bottom: 30px;
    	}
    </style>
</head>
<body>
	<div class="category-title">
		<div class="text">게시판</div>
	</div>
	<div class="container">
		<div class="search-box"><br>
			<form class="input-group mb-3">
				<div class="input-group-append">
					<select class="form-control" name="type">
						<option value="1" <c:if test="${pm.criteria.type == 1}">selected</c:if>>전체</option>
						<option value="2" <c:if test="${pm.criteria.type == 2}">selected</c:if>>제목</option>
						<option value="3" <c:if test="${pm.criteria.type == 3}">selected</c:if>>내용</option>
						<option value="4" <c:if test="${pm.criteria.type == 4}">selected</c:if>>작성자</option>
					</select>
				</div>
				<input type="text" class="form-control" name="search" placeholder="Search" value = ${pm.criteria.search}>
				<div class="input-group-append">
	      			<button class="btn btn-success" type="submit">Go</button>  
	     		</div>
			</form>
		</div>
	    <table class="table">
	      <thead>
	        <tr>
	          <th width="50">NO</th>
	          <th width="500">제목</th>
	          <th width="100">글쓴이</th>
	          <th width="90">날짜</th>
	          <th width="50">조회</th>
	          <th width="50">추천</th>    
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
		    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/boardList?page=${pm.startPage-1}&search=${pm.criteria.search}&type=${pm.criteria.type}">이전</a></li>
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
		    	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/boardList?page=${pm.endPage+1}&search=${pm.criteria.search}&type=${pm.criteria.type}">다음</a></li>
		    </c:if>
		</ul>
	    <a href="<%=request.getContextPath()%>/boardRegis"><button type="button" class="write-btn btn btn-success">글쓰기</button></a>
	    <input type="hidden" name="user" value="${user.user_id}">
	</div>
	<script>
		$('.write-btn').click(function(){
			var user = $('input[name=user]').val();
			if(user == ''){
				alert('로그인 후 이용하세요.');
				return false;
			}
		})
	</script>
</body>
</html>