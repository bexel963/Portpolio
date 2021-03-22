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
            line-height: 25px;
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
        }
        .list .title:hover{
            color: #6e6e6e;
        }
        .list li:hover{
            transform: scale(1.05);
        }
	</style>
</head>

<body>
    <div class="body">
        <div class="list">
            <div class="container2">
                <ul class="row1">
                	<c:forEach items="${productList}" var="product">
	                    <li>
	                    	<c:forEach items="${fileList}" var="file">
                   		      	<a href="<%=request.getContextPath()%>/productDetail?product_num=${product.product_num}" class="img-box">
			                        <c:if test="${file.product_num == product.product_num}">			                        	
			                            <img src="<%=request.getContextPath() %>/resources/img${file.file_name}" alt="" width="100%" height="248">			                           
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
    </div>
    
    <script>

    </script>
</body>
</html>
