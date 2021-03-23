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
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
	<style>
		.category-title{
			width: 100%;
			height: 60px;
			background: #f7f7f7;
	    	border-bottom: 1px solid #eee;
	    	padding-top: 7px;
	    	margin-bottom: 20px;
		}
		.category-title .text{
			width: 1170px;
			font-size: 30px;
			color: #555555;
			margin: 0 auto;
		}
        .btn{
            float: right;
            margin-left: 10px;
        }
        .btn{
        	margin: 20px 1px 20px 0;
        }
        .after::after{
			clear: both;
			content: '';
			display: block;
		}
    </style>
</head>
<body>
	<div class="category-title">
		<div class="text">게시글 등록</div>
	</div>
	<div class="container after">
	  <form action="<%=request.getContextPath()%>/boardRegis" method="post">	
	    <div class="form-group">
	      <label for="title">제목</label>
	      <input type="text" class="form-control" id="title" name="title">
	    </div>
	    <div class="form-group">
	      <label for="writer">작성자</label>
	      <input type="text" class="form-control" id="writer" name="writer" readonly value="${user.user_id}">
	    </div>
	    <div class="form-group">
	      <label for="content">내용</label>
	      <textarea style="display:none; class="form-control"  id="content" name="content"></textarea>
	    </div>
	    <div id="summernote" class="content-box"></div>
	    <button type="submit" class="btn btn-success">등록</button>
	  </form>
	  <a href="<%=request.getContextPath()%>/boardList">
		<button type="button" class="btn btn-success">목록</button><br><br>
	  </a>
	</div>
	
	<script>
      $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 100
      });
      $('form').submit(function(){
    	  var content = $('#summernote').summernote('code');
    	  $('textarea[name=content]').val(content);
      })
    </script>
</body>
</html>