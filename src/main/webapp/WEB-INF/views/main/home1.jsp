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
			display:-webkit-box;
			overflow: hidden;
			text-overflow: ellipsis;
			-webkit-line-clamp: 6;
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
        .list .article{
            margin: 5px 0;
            color: #6e6e6e;
            font-size: 16px;
            line-height: 25px;
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
        <div class="rolling-box">
            <div class="contents-box">
                <div class="contents-box-view">
                    <a href="#" class="product n1">  
                        <img src="https://funshop.akamaized.net/abroad/035/17733/Kohler%20Stillness%202_0.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n2">
                        <img src="https://funshop.akamaized.net/abroad/035/17738/Anycall%20Retro%20Case%202_1.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n3">
                        <img src="https://funshop.akamaized.net/abroad/035/17714/Hasbro%20Star%20Wars%20Galaxy%20Edge%20Captain%20Cardinal%20Helmet%201_0.png" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n4">
                        <img src="https://funshop.akamaized.net/abroad/035/17714/Hasbro%20Star%20Wars%20Galaxy%20Edge%20Captain%20Cardinal%20Helmet%201_0.png" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n5">
                        <img src="https://funshop.akamaized.net/abroad/035/17714/Hasbro%20Star%20Wars%20Galaxy%20Edge%20Captain%20Cardinal%20Helmet%201_0.png" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n6">
                        <img src="https://funshop.akamaized.net/abroad/035/17714/Hasbro%20Star%20Wars%20Galaxy%20Edge%20Captain%20Cardinal%20Helmet%201_0.png" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n7">
                        <img src="https://funshop.akamaized.net/abroad/035/17714/Hasbro%20Star%20Wars%20Galaxy%20Edge%20Captain%20Cardinal%20Helmet%201_0.png" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n8">  
                        <img src="https://funshop.akamaized.net/abroad/035/17733/Kohler%20Stillness%202_0.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n9">
                        <img src="https://funshop.akamaized.net/abroad/035/17738/Anycall%20Retro%20Case%202_1.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n10">  
                        <img src="https://funshop.akamaized.net/abroad/035/17733/Kohler%20Stillness%202_0.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n8">  
                        <img src="https://funshop.akamaized.net/abroad/035/17733/Kohler%20Stillness%202_0.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n9">
                        <img src="https://funshop.akamaized.net/abroad/035/17738/Anycall%20Retro%20Case%202_1.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                    <a href="#" class="product n10">  
                        <img src="https://funshop.akamaized.net/abroad/035/17733/Kohler%20Stillness%202_0.jpg" height="400" width="100%" class="img" alt="">
                    </a>
                </div>
                <div class="pointer-box">
                    <i class="fas fa-chevron-left"></i>
                    <i class="fas fa-chevron-right"></i>
                </div>
            </div>
        </div>
        <div class="list">
            <div class="container2">
                <ul class="row1">
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row2">
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row3">
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row4">
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row5">
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://funshop.akamaized.net/abroad/035/17825/NextErgo%201_0.png" alt="" width="100%" height="248">
                        </a>
                        <a href="#">
                            <div class="title">인공지능이 들어간 스탠딩 데스크</div>
                            <div class="category">생활/주방</div>
                            <div class="date">2021-02-01</div>
                            <div class="article">
                                실제 일어서서 책상을 사용한 시간과 앉은 시간 등을 체크하고 조언을 해주며 BMI를 기반으로 하루 서 있는 시간 목표까지 제안한다. 여기에 심호흡, 물 섭취, 간식 섭취 그리고 스트레칭 시간을 알려주기도 한다. 아울러 구글 어시스턴트와 호환되어 책상의 높낮이 조절과 같은 기능은 음성 명령으로 지시할 수 있다. 조만간 킥스타터에서 펀딩을 받을 예정으로 제품을 받기 위한 최소 펀딩 금액은 $600이다.
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
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
