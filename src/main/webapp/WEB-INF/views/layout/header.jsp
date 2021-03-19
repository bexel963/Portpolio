<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
	        .header .logbar .container2 .right .userInfo{
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
	</style>
</head>
<body>
	<div class="header">
        <div class="search-box">
            <div class="container2">
                <div class="left">
                    <input type="text" placeholder="search" size="105">
                </div>
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
                    	<c:if test="${user.user_grade == 0}">
                    		<a href="<%=request.getContextPath()%>/userInfo" class="userInfo">회원정보</a>
                    	</c:if>
                    	<c:if test="${user != null && user.user_grade != 0}">
                    		<a href="<%=request.getContextPath()%>/userInfo" class="userInfo">내정보</a>
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
                        	<li class="menu"><a href="<%=request.getContextPath()%>/productRegis">상품등록</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <script>
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
	    		async: false,
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
    </script>
</body>
</html>