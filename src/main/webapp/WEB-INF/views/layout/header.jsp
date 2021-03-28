<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>header</title>
	<style>
			*{
	            margin: 0;
	            padding: 0;
	        }
	        a{
	            text-decoration: none;
	            color: black;
	        }
	        ul,ol{
	            list-style: none;
	        }
	        .header{
	        	position: relative;
	        }
	        .header .search-box{
	            height: 50px;
	            width: 100%;
	            position: relative;
	            background-color: #404148;
	            display: none;
	        }
	        .header .search-box .container2{
	            position:absolute;
	            width: 1170px;
	            height: 34px;
	            top: 50%;
	            left: 50%;
	            transform: translate(-50%, -50%);
	            padding: 10px 13px 0px 5px;
	            box-sizing: border-box;
	        }
	        .header .search-box .container2 .left{
	            float: left;
	        }
	        .header .search-box .container2 .left input{
	            font-size: 15px;
	            border: none;
	            background-color: #404148;
	            color: white;
	            text-align: middle; 
	        }
	        .header .search-box .container2 .left input:focus{
	            outline: none;
	        }
	        .header .search-box .container2 .right{
	            float: right;
	            color: white;
	        }
	        .header .search-box .close-btn{
	            cursor: pointer;
	        }
	        .header .logbar{
	            height: 60px;
	            width: 100%;
	            position: relative;
	            background-color: black;
	        }
	        .header .logbar .container2{
	            position:absolute;
	            width: 1170px;
	            height: 34px;
	            top: 50%;
	            left: 50%;
	            transform: translate(-50%, -50%);
	        }
	        .header .logbar .container2 .left{
	            height: 100%;
	            float: left;
	            color: #fff;
	            text-transform: uppercase;
	            font-size: 13px;
	            letter-spacing: 1px;
	            padding: 10px 12px 7px 0;
	            float: left;
	        }
	        .header .logbar .container2 .left .time{
	            float: right;
	            font-weight: bold;
	        }
	        .header .logbar .container2 .right{
	            height: 100%;
	            padding: 10px 12px;
	            float: right;
	        }
	        .header .logbar .container2 .right .login,
	        .header .logbar .container2 .right .logout,
	        .header .logbar .container2 .right .signup,
	        .header .logbar .container2 .right .myInfo{
	            font-size: 12px;
	            color: #eee;
	            float: left;
	            margin-right: 10px;
	            letter-spacing: 1px;
	            font-weight: bold;
	            text-transform: uppercase;
	        }
	        .header .login::after,
	        .header .logout::after{
	            content: '';
	            display: inline-block;
	            width: 1px;
	            height: 11px;
	            background-color: #bec8d8;
	            vertical-align: -1px;
	            margin: 0 10px 0 20px;
	        }
	        .header .logbar .container2 .right .search-btn{
	            float: left;
	            color: white;
	            cursor: pointer;
	            margin-left: 20px;
	        }
	        .header .navbar{
	            height: 94px;
	            width: 100%;
	            text-align: center;
	            position: relative;
	            box-shadow:0px 0px 0px 4px #eee;
	        }
	        .header .navbar .container2{
	            width: 1170px;
	            height: 100%;
	            box-sizing: border-box;
	            position: absolute;
	            top: 50%;
	            left: 50%;
	            transform: translate(-50%, -50%);
	            padding-top: 15px;
	        }
	        .header .navbar .container2 .left{
	            float: left;
	            
	        }
	        .header .navbar .container2 .right{
	            float: right;
	        }
	        .header .navbar .container2 .right li{
	            float: left;
	            padding: 20px;
	            font-weight: bold;
	        }
	        .header .navbar .container2 .right li a:hover,
	        .header .logbar .container2 .right .login:hover,
	        .header .logbar .container2 .right .logout:hover,
	        .header .logbar .container2 .right .signup:hover,
	        .header .logbar .container2 .right .userInfo:hover,
	        .header .logbar .container2 .right .search-btn:hover{
	            color: red;
	        }
	        .manager-list{
	        	position: absolute;
	        	right: calc(50% - 1170px / 2);
	        	top: 140;
	        	width: 120px;
	        	height: 300px;
	        	z-index: 1000;
	        	background-color: white;
	        	border: 1px solid #dee2e6;
	        }
	        .manager-list li{
	        	margin: 0 auto;
	        	width: 90%;
	        	border-bottom: 1px solid #dee2e6;
	        	height: calc(300px / 4 );
	        	text-align: center;
	        	padding-top: 25px;
	        	cursor: pointer;
	        	font-size: 16px;
	        	font-weight: bold;
	        	color: black;
	        }
	        .manager-list li:hover,
	        .menu.manager:hover{
	        	color: red;
	        }
	        .manager-list li:last-child{
	        	border-bottom: none;
	        }
	        .hidden{
	        	display: none;
	        }
	        .menu.manager{
	        	cursor: pointer; 	
	        }
	</style>
</head>
<body>
	<div class="header">
        <div class="search-box">
            <div class="container2">
            	<form action="<%=request.getContextPath()%>/search" method="get" id="submit">
	                <div class="left">
	                    <input type="text" placeholder="search" name="search" style="width:1000px" size="105">
	                    <button class="success-btn" type="submit" style="display:none">Go</button>
	                </div>
                </form>
                <div class="right">
                    <div class="close-btn">
                        <i class="far fa-times-circle"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="logbar">
            <div class="container2">
                <div class="left">
                    <div>
                        <img src="//file3.funshop.co.kr/funtenna/funshop_link@2x.png" alt="" height="17">
                        <div class="time">JAN 28, 2021</div>
                    </div>
                </div>
                <div class="right">
                	<c:if test="${user == null}">
	                    <a href="<%=request.getContextPath()%>/login" class="login">로그인</a>
	                    <a href="<%=request.getContextPath()%>/signup" class="signup">회원가입</a>
                    </c:if>
                    <c:if test="${user != null}">
                    	<a href="<%=request.getContextPath()%>/logout" class="logout">로그아웃</a>
                    	<c:if test="${user != null && user.user_grade != 0}">
                    		<a href="<%=request.getContextPath()%>/myInfo" class="myInfo">내정보</a>
                    	</c:if>
                    </c:if>
                    <div class="search-btn"><i class="fas fa-search"></i></div>
                </div>
            </div>
        </div>
        <div class="navbar">
            <div class="container2">
                <div class="left">
                    <a href="<%=request.getContextPath()%>/"><img src="//file3.funshop.co.kr/funtenna/logo@2x.png" width="250" height="50"alt=""></a>
                </div>
                <div class="right">
                    <ul>
                        <li class="menu"><a href="<%=request.getContextPath()%>/">HOME</a></li>
                        <li class="menu"><a href="<%=request.getContextPath()%>/category">CATEGORY</a></li>
                        <li class="menu"><a href="<%=request.getContextPath()%>/hot10">HOT 10</a></li>
                        <c:if test="${user != null}">
                        	<input type="hidden" name="user" value="${user.user_id}">
                        	<li class="menu mybox"><a href="<%=request.getContextPath()%>/myBox">MY BOX</a></li>
                        </c:if>
                        <li class="menu"><a href="<%=request.getContextPath()%>/boardList">게시판</a></li>
                        <c:if test="${user.user_grade == 0}">
                        	<li class="menu manager">관리자</li>
                        </c:if>
                    </ul>
                </div>
                
            </div>
        </div>
    </div>
    <div class="manager-list hidden">
    	<ul>
    		<li><a href="<%=request.getContextPath()%>/productRegis">상품등록</a></li>
    		<li>상품등록 현황</li>
    		<li><a href="<%=request.getContextPath()%>/userInfo" class="userInfo">회원관리</a></li>
    		<li>직원관리</li>
    	</ul>
    </div>
    <script>
    	$('.menu.manager').click(function(){
    		if($('.manager-list').hasClass('hidden')){
	    		$('.manager-list').removeClass('hidden');			
    		}else{
    			$('.manager-list').addClass('hidden');
    		}
    	})
	    $('.header .logbar .search-btn').click(function(e){
	        e.preventDefault();
	        $('.search-box').slideToggle(500);
	    })
	    $('.header .search-box .close-btn').click(function(e){
	        e.preventDefault();
	        $('.search-box').slideUp(500);
	    })
	   
	    $('.mybox').click(function(e){
	    	var user = $('input[name=user]').val();
	
	    	var data = { 'user' : user };	
	    	$.ajax({
	    		async: false,	// ajax 비동기 : ajax의 내용이 전부 실행 되기 전까지 다른 내용은 대기
				url : '<%=request.getContextPath()%>/myBoxExistence ',
				type : 'post',
				data : data,
				success : function(data){
					console.log(data);
					if(data.length == 0){
						alert('mybox에 등록된 상품이 없습니다.');
						e.preventDefault();
						return false;
					}
				},
				error : function(){
					console.log('실패');
				}
			})
	    	
	    })
	    $('#submit').submit(function(){
	    	var search = $('input[name=search]').val();
			
	    	if( search.length < 2 ){
	    		alert('한글자는 검색 안됩니다.');
		    	return false;
	    	}
	    })
    </script>
</body>
</html>