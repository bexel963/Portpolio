<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<title>Insert title here</title>
	<style>
	  a{
	    text-decoration: none;
	    color: black;
	  }
	        
      .productRegis.container2{
		width: 1000px;
		height: 1200px;
		margin: 0 auto;
		border-bottom: 1px solid #ced4da;
	  }
	  .productRegis.container2 .left{
		box-sizing: border-box;
		float: left;
		width: calc(1000px * 0.2);
		background-color: #e9ecef;
	  }
	  .productRegis.container2 .left>div, .productRegis.container2 .right>div{
		box-sizing: border-box;
		border: 1px solid #ced4da;
		border-bottom: none;
	  }
	  .productRegis.container2 .right>div{
		border-left: none;
	  }
	  .productRegis.container2 .category{
	  	padding: 25px 0 0 10px;
		height: 75px;
	  }
	  .productRegis.container2 .title{
	  	padding: 25px 0 0 10px;
		height: 75px;
	  }
	  .productRegis.container2 .cost{
		height: 75px;
		padding: 25px 0 0 10px;
	  }
	  .productRegis.container2 .amount{
	  	padding: 25px 0 0 10px;
		height: 75px;
	  }
	  .productRegis.container2 .photo{
		height: 300px;
		padding: 20px 0 0 10px;
	  }
	  .productRegis.container2 .main-photo{
	  	height: 300px;
		padding: 10px 0 0 210px;
	  }
	  .productRegis.container2 .content{
		height: 300px;
		padding: 20px 10px 10px 10px;
	  }
	  .productRegis.container2 .right{
		box-sizing: border-box;
		float: right;
		height: 100%;
		width: calc(1000px * 0.8);
	  }
	  .file{
	  	float: left;
	  	width: 200px;
	  	height: 200px;
	  	border: 1px solid #ced4da;
	  	margin-right: 60px;
	  }	
	  .main-file{
	  	float: left;
	  	width: 400px;
	  	height: 250px;
	  	border: 1px solid #ced4da;
	  }
	  .regis-btn{
	  	width: 1000px;
	  	display: block;
	  	margin: 0 auto;
	  }
	  .photo>input{
	  	margin-right: 56px;
	  	margin-top: 50px;
	  }
	  .main-file>img{
	  	width: 100%;
  		height: 100%;
	  }
    </style>
</head>
<body>
	<br><br>
	
	<form action="<%=request.getContextPath()%>/productRegis" method="post" enctype="multipart/form-data">
		<div class="container2 productRegis">
			<div class="left" >
				<div class="category">카테고리</div>
				<div class="title">제품명</div>
				<div class="photo">메인사진</div>
				<div class="photo">사진</div>
				<div class="content">내용</div>
				<div class="amount">수량</div>
				<div class="cost">판매가</div>
			</div>
			<div class="right">
				<div class="category">
					<select name="product_category">
						<option value="1">생활</option>       
						<option value="2">주방</option>       
						<option value="3">뷰티</option>
						<option value="4">컴퓨터관련</option>
						<option value="5">기타</option>
					</select>
				</div>
				<div class="title">
					<input type="text" class="text" style="width:400px;" name="product_title">
				</div>
				<div class="main-photo">
					<div class="main-file"><img id="mainImg" src="#" /></div>
					<input type="file"  onchange="readURL(this);" name="fileList" style="width:200px;" />
				</div>
				<div class="photo">
					<input type="file"  name="fileList" style="width:200px;" />
					<input type="file"  name="fileList" style="width:200px;"/>
					<input type="file"  name="fileList" style="width:200px;"/>
					<input type="file"  name="fileList" style="width:200px;" />
					<input type="file"  name="fileList" style="width:200px;"/>
					<input type="file"  name="fileList" style="width:200px;"/>
				</div>
				<div class="content">
					<textarea style="display:none;"rows="100" name="product_content"></textarea>
					<div id="summernote"></div>
				</div>
				<div class="amount">
					<input type="number" name="product_amount">
				</div>
				<div class="cost">
					<input type="number" name="product_cost">
				</div>
			</div>
		</div><br>
		<button type="submit" class="btn btn-secondary regis-btn">등록</button><br>
	</form>
	
	<br><br>
    <script type="text/javascript">
	    $('#summernote').summernote({
	      placeholder: 'Hello Bootstrap 4',
	      tabsize: 2,
	      height: 150
	    });
	    $('form').submit(function(){
	  	  var content = $('#summernote').summernote('code');
	  	  $('textarea[name=product_content]').val(content);
	    })
	   
	    function readURL(input) {
			if (input.files) {
				var reader = new FileReader();
				reader.onload = function (e) {
					$('#mainImg').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	    


  	</script>
   
</body>
</html>