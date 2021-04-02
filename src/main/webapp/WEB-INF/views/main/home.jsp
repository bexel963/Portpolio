<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.4.1.js"></script>
<html>
<head>

	<title>home</title>
	
	<style>
		a{
            color: black;
         }
        .rolling-box{
            height: 410px;
            background-color: #e8e8e8;
            box-sizing: border-box;
            padding: 5px;
            width: calc(626px * 3);
            margin-left: 10px;
        }
        .rolling-box .contents-box{
            overflow: hidden;
            position: relative;
        }
        .rolling-box .contents-box-view{
            width: calc(1283px * 7);
        }
        .rolling-box .contents-box-view a{
            float: left;
        }
        .rolling-box .pointer-box{
            float: left;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1;
            font-size: 40px;
            cursor: pointer;
            font-weight: bold;
            /*display: none;*/
        }
        .rolling-box .fa-chevron-left{
            margin-right: 220px;
        }
        .rolling-box .fa-chevron-right{
            margin-left: 220px;
        }
        .rolling-box .product{
            display: inline-block;
            height: 400px;
            width: 626px;
            box-sizing: border-box;
            margin: 0 4px 0 4px;
        }
        .body{
            width: 1900px;
            margin: 0 auto;
        }
        .list{
            width: 100%;
            padding: 30px 15px;
        }
        .list .container2{
            width: 100%;
        }
        .list::after{
            content: '';
			clear: both;
			display: block;
        }
        .list li{
            width: 427px;
            height: 480px;
        }
        .list .article{
        	margin: 5px 0;
            color: #6e6e6e;
            font-size: 16px;
            line-height: 26px;
            height: 150px;
			display:-webkit-box;
			overflow: hidden;
			text-overflow: ellipsis;
			-webkit-line-clamp: 4;
			-webkit-box-orient: vertical;
        }
        .list a{
            cursor: pointer;
        }
        .list .title{
            font-size: 22px;
            line-height: 1.4;
            color: #333;
            margin: 5px 0;
        }
        .list .category{
            margin: 5px 0;
            font-size: 12px;
            color: #888;
            display: inline-block;
        }
        .list .date::before{
            content: '';
            display: inline-block;
            width: 1px;
            height: 11px;
            background-color: #bec8d8;
            vertical-align: -1px;
            margin: 0 10px 0 7px;
        }
        .list .date{
            margin: 5px 0;
            font-size: 12px;
            color: #888;
            display: inline-block;
        }
        .list li{
            float: left;
            margin: 30px 19px 0 21px;
            position: relative;
        }
        .list .title:hover{
            color: #6e6e6e;
        }
        .list li:hover{
            transform: scale(1.05);
        }
        .sold-out{
        	width: 45px;
        	height: 25px;
        	background-color: #EA2C4F;
        	color: white;
        	text-align: center;
        	position: absolute;
        	right: 0;
        	top: 0;
        	padding-top: 1px;
        }
	</style>
</head>
<body>
    <div class="body after">
        <div class="rolling-box">
            <div class="contents-box">
                <div class="contents-box-view">
                	<c:forEach items="${suffleList}" var="suffle">
                		<a href="#" class="product">  
                        	<img src="<%=request.getContextPath() %>/resources/img${suffle.file_name}" height="400" width="100%" class="img" alt="">
                    	</a>
                	</c:forEach>
                </div>
                <div class="pointer-box">
                    <i class="fas fa-chevron-left"></i>
                    <i class="fas fa-chevron-right"></i>
                </div>
            </div>
        </div>
        <div class="list">
	        <ul class="row1">
	        	<c:forEach items="${productList}" var="product">
	             <li>
	             	<c:if test="${product.product_amount == 0}">
	             		<div class="sold-out">품절</div>
	             	</c:if>
	             	<c:forEach items="${fileList}" var="file">
	           		      	<a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}" class="img-box">
	                   <c:if test="${file.product_num == product.product_num}">			                        	
	                       <img src="<%=request.getContextPath() %>/resources/img${file.file_name}" alt="" width="100%" height="248px">			                           
	                   </c:if>
	               </a>
	                 </c:forEach>
	                 <a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}">
	                     <div class="title">${product.product_title}</div>
	                     <div class="category">${product.product_category}</div>
	                     <div class="date">${product.product_registerDate}</div>
	                     <div class="article">${product.product_content}</div>
	                 </a>
	             </li>
	            </c:forEach>
	        </ul>        
        </div>
    </div>
    	
    <script>
        $('.rolling-box .fa-chevron-left').click(function(e){
             e.preventDefault();
            if(!$('.rolling-box .product').is(':animated')){ 
                $('.rolling-box .product').first().animate({'margin-left':'-624px'},1000,function(){
                    $(this).detach().appendTo('.contents-box-view');
                    $(this).removeAttr('style');   
                });
            }
        })
        $('.rolling-box .fa-chevron-right').click(function(e){
             e.preventDefault();
            if(!$('.rolling-box .product').is(':animated')){ 
                $('.rolling-box .product').last().css('margin-left','-624px').detach().prependTo('.contents-box-view');
                $('.rolling-box .product').first().animate({'margin-left':'0px'},1000);
            }
        })
    </script>
</body>
</html>
