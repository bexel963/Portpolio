<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); %>

<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/022cf171a0.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
	<style>
		a{
			text-decoration: none;
			color: black;
		}
		.overlay{
			display: none;
			z-index: 1;
			position: fixed;
			width: 100%; height: 100%;
			left: 0; top: 0;
			background-color: black;
			opacity: 0.9;
			overflow-x: hidden;
		}
		.hidden-box{
			float: left;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			z-index: 1;
			font-size: 40px;
			cursor: pointer;
			font-weight: bold;
			width: 730px;
			height: 690px;
			background-color: white;
			border: 1px solid black;
			box-sizing: border-box;
		}
    	.main-box{
			margin: 0 auto;
			width: 1000px;
			margin-bottom: 10px;
	  	}
		.main-box .top{
			width: 100%;
			height: 40px;
			padding: 10px 40px 10px 40px;
    		border: 1px solid #e7e7e7;
    		background: #f6f6f6;
    		color: #464646;
    		font-size: 14px;
    		font-weight: bold;
			box-sizing: border-box;
		}
		.main-box .top .left{
			float: left;
		}
		.main-box .top .right{
			float: right;
		}
		.main-box .bottom{
			margin-top: 20px;
			width: 100%;
			height: 540px;
			color: #767676;
			font-family: Arial,'돋움',dotum,sans-serif;
			font-size: 13px;
		}
		.bottom .product-img{
			box-sizing: border-box;
			width: 50%;
			height: 100%;
			border-right: 1px solid #e7e7e7;
			float: left;
		}
		.bottom .product-info{
			box-sizing: border-box;
			padding: 30px 0 0 10px;
			width: 50%;
			float: left;
		}
		.product-info .left{
			width: 20%;
			float: left;
		}
		.product-info .right{
			width: 80%;
			float: left;
		}
		.product-info div{
			margin-bottom: 20px;
		}
		.product-info .sum-box{
			box-sizing: border-box;
			padding: 30px 20px 0 0;
			border-top: 1px solid #e7e7e7;
			border-bottom: 1px solid #e7e7e7;
			width: 390px;
			height: 80px;
			font-size: 16px;
			font-weight: bold;
			margin-top: 30px;
		}
		.product-info .sum{
			color: blue;
		}
		.product-info pre{
			float: right;
		}
		.detail-box{
			margin: 0 auto;
			box-sizing: border-box;
			width: 1002px;
			border-top: 1px solid black;
			height: 60px;
			padding: 17px 0 0 360px;
		}
		.detail-box .detail-tab div{
			float: left;
		}
		.detail-box .tab1::after,
		.detail-box .tab2::after{
			content: '';
			display: inline-block;
			width: 1px;
			height: 11px;
			background-color: #bec8d8;
			vertical-align: -1px;
			margin: 0 20px 0 20px;
		}
		.detail-box a:hover{
			color: red;
		}
		.btn-box img{
			width: 128px;
		}
		.description-box{
			margin: 0 auto;
			margin-bottom: 10px;
			padding-top: 50px;
			width: 1002px;
			border: 1px solid #e7e7e7;
		}
		.description-box .title-img-box{
			width: 900px;
			margin: 0 auto;
			margin-bottom: 30px;
		}
		.description-box .title img{
			width: 100%;
			height: 100%;
		}
		.description-box .product-container{
			width: 900px;
			margin: 0 auto;
		}
		.description-box .product-container .img-box{ 
			width: 700px;
			margin: 0 auto;
			margin-bottom: 20px;
		}
		.description-box .product-container .img-box:last-child{
			margin-bottom: 100px;
		}
		.description-box .product-container .img-box img{
			width: 100%;
		}
		.policy-box{
			box-sizing: border-box;
			width: 900px;
			height: 610px;
			margin: 0 auto;
		}
		.policy-box .delivery{
			width: 100%;
			height: 200px;
			border: 1px solid #e7e7e7;
			margin-bottom: 10px;
		}
		.policy-box .delivery .img-box,
		.policy-box .refund .img-box,
		.policy-box .as .img-box{
			margin-bottom: 10px;
		}
		.policy-box .refund{
			width: 100%;
			height: 200px;
			border: 1px solid #e7e7e7;
			margin-bottom: 10px;
		}
		.policy-box .as{
			width: 100%;
			height: 100px;
			border: 1px solid #e7e7e7;
		}
		.policy-box .title-img-box{
			box-sizing: border-box;
			width: 900px;
			border-bottom: 1px solid #e7e7e7;
			margin-bottom: 20px;
			padding-bottom: 20px;
		}
		.policy-box li{
			font-size: 12px;
			padding-left: 10px;
		}
		.product-info .right .text{
			float: left;
			margin-right: 10px;
		}
		.product-info .right .view-img-box{
			height: 19px;
			cursor: pointer;
		}
		.product-info .right .view-img-box img{
			height: 100%;
		}
		.product-info .left .row4{
			margin-bottom: 23px;
		}
		.hidden-box .title{
			height: 50px;
		}
		.hidden-box .text-box{
			font-size: 25px;
			font-family: 'NaumGothic';
			float: left;
			padding: 20px 0 0 180px;
		}
		.hidden-box .img-box{
			padding: 10px 20px 0 0;
			float: right;
		}
		.hidden-box table{
			margin-left: 20px;
			font-size: 12px;
			border: 1px solid #b1b0b4;
			text-align: center;
		}
		.hidden-box table tr:first-child{
			background-color: #EEEEEE;
		}
		.hidden-box .note .title{
			font-size: 17px;
			font-weight: 500;
			color: #212121;
			margin: 30px 0 0 22px;
		}
		.hidden-box .note .content{
			margin-top: -10px;
			font-size: 12px;
			line-height: 1.6;
			margin-left: 25px;
		}
		.product-info .amount{
			line-height: 12px;
		}
    </style>
</head>
<body>
	<div class="main-box">
	
		<div class="top">
			<div class="left">${product.product_title}</div>
			<div class="right">제품 번호 : ${product.product_num}</div>
		</div>
		<div class="bottom">
			
			<div class="product-img">
				<a href="#">
					<img style="width: 90%" src="<%=request.getContextPath() %>/resources/img${mainFile.file_name}" alt="">
				</a>
			</div>
			<div class="product-info">
				<div class="left">
					<div>분류</div>
					<div>원산지</div>
					<div>판매국가</div>
					<div>배송구분</div>
					<div class="row4">카드혜택</div>
					<div class="amount">수량선택</div>
				</div>
				<div class="right">
					<div>${product.product_category}</div>
					<div>${product.product_origin}</div>
					<div>한국</div>
					<div>업체배송(배송비 2,500원 / 30,000원 이상 무료 배송)</div>
					<div>
						<div class="text">최대 6개월 무이자 혜택</div>
						<div class="view-img-box">
							<img src="<%=request.getContextPath()%>/resources/img/card-view.jpg" alt="">
						</div>
					</div>
					<form action="<%=request.getContextPath()%>/buyItNow" id="formSubmit" method="POST">
						<select name="order_amount" style="width:45px">
							<c:forEach begin="1" end="99" var="index">
								<option>${index}</option>
							</c:forEach>
						</select>
						<div class="sum-box">
							<pre>원</pre>
							<pre class="sum">${product.product_cost}</pre>
							<pre class="sum-text">상품금액 : </pre>
						</div>
					
						<input type="hidden" name="product_num" value="${product.product_num}">
						<div class="btn-box">
							<a class="buy-btn" href="#"><img src="<%=request.getContextPath() %>/resources/img/btn_buy.gif" alt=""></a>
							<a class="myBox-btn" href="<%=request.getContextPath()%>/myBoxRegis?user_id=${user.user_id}&product_num=${product.product_num}"><img src="<%=request.getContextPath() %>/resources/img/btn_cart.gif" alt=""></a>
							<a href="<%=request.getContextPath()%>/"><img src="<%=request.getContextPath()%>/resources/img/btn_shopping (1).gif" style="height: 48.11px"></a>
						</div>
					</form>
					<c:if test="${user.user_grade == 0}">
					  	<a href="<%=request.getContextPath()%>/productModify?product_num=${product.product_num}"><button type="submit" class="btn btn-secondary">수정</button></a>
					  	<a href="<%=request.getContextPath()%>/productDelete?product_num=${product.product_num}"><button type="submit" class="btn btn-secondary">삭제</button></a>
				  	</c:if>
				</div>
			</div>
		</div>
	</div>
		<div class="detail-box">
			<div class="detail-tab">
				<div class="tab tab1"><a href="#">상품설명</a></div>
				<div class="tab tab2"><a href="#">댓글&사진후기</a></div>
				<div class="tab tab3"><a href="#">상품 Q & A</a></div>
			</div>
		</div>
		<div class="description-box">
			<div class="title-img-box">
				<img src="<%=request.getContextPath() %>/resources/img/description.png" alt="">
			</div>
			<div class="product-container">
				<c:forEach items="${subFileList}" var="file">
					<div class="img-box">
						<img src="<%=request.getContextPath() %>/resources/img${file.file_name}" alt="">
					</div>
				</c:forEach>
			</div>
			<div class="policy-box">
				<div class="title-img-box">
					<img src="<%=request.getContextPath() %>/resources/img/policy.gif" alt="">
				</div>
				<div class="delivery">
					<div class="img-box">
						<img src="<%=request.getContextPath() %>/resources/img/delivery.gif" alt="">
					</div>
					<ul>
						<li>- 배송기간은 주문일(무통장 입금은 결제 완료일)로 부터 2일~5일(주말/공휴일 제외)이 소요됩니다.</li>
						<li>- 배송비는 30,000원 이상 구매시 무료 입니다.</li>
						<li>- 각 공급사마다 배송비가 부가되며, 배송비 부과 기준에 따라 별도의 배송비가 책정될 수도 있습니다.</li>
						<li>- 직접수령은 불가합니다. 온라인 주문/배송만 가능합니다.</li>
						<li>- 묶음배송은 불가합니다. 각 주문건벼로 별도로 배송됩니다.</li>
						<li>- 제주 및 도서산간지역은 추가 배송비가 발생합니다.</li>
						<li>- 준비 후 상품 준비기간(영업일기준 1일~3일)동안 간혹 예기치 못한 재고부족으로 인한 품절 및 출고지연이 발생될 수 있습니다.</li>
					</ul>
				</div>
				<div class="refund">
					<div class="img-box">
						<img src="<%=request.getContextPath() %>/resources/img/fund.gif" alt="">
					</div>
						<ul>
							<li>- 교환/반품 신청은 배송완료 후 7일 이내 가능합니다. (식품류 제외)</li>
							<li>- 변심반품/교환 제품의 하자나  불량이 아닌 변심건의 경우 왕복배송비를 고객부담으로 하며, 제품 및 포장 상태가 재판매 가능하여야 합니다.</li>
							<li>- 환불 승인 후 영업일 기준 3~7일 이내 환불 및 취소여부 확인 가능합니다.</li>
							<li>- 상품 불량확정 시 배송비를 포함한 전액이 환불됩니다.</li>
							<li>- 상품가치가 훼손된 경우 교환/반품이 불가합니다. (제품포장 개봉 및 주문제작상품/밀봉포장상품 및 스티커부착 상품 / 텍 제거상품 / 식품 등)</li>
							<li>- 출고 이후 환불요청 시 상품 회수 후 처리됩니다.</li>
							<li>- 교환/환불에 대한 브랜드 개별기준이 있는 경우에는 해당 내용이 우선 적용 됩니다.</li>
						</ul>
				</div>
				<div class="as">
					<div class="img-box">
						<img src="<%=request.getContextPath() %>/resources/img/as.gif" alt="">
					</div>
						<ul>
							<li>- A/S 센터를 운영하고 있는 경우 해당 상품의 판매사 A/S 정책을 따르며, 완제품으로 수입된 상품의 경우 A/S가 불가합니다.</li>
						</ul>
					
				</div>
			</div>
		</div>
	
		<div class="overlay">
		<div class="hidden-box">
			<div class="title">
				<div class="text-box">21년 2월 신용카드 무이자 할부</div>
				<div class="img-box">
					<img src="<%=request.getContextPath() %>/resources/img/X.png" alt="">
				</div>
			</div>
			<table border="1" bordercolor="black" width="95%"  style="border-collapse:collapse">
				<tr>                          
					<th>적용기간</th>                 
					<th>카드사명</th>
					<th>대상 금액</th>
					<th>대상 개월수</th>	
					<th>고객 부담</th>
					<th width="170px"></th>
				</tr>
				<tr>
				   <th rowspan="8">2.1 ~ 2.28</th>
				   <th>BC카드</th>
				   <th>5만원이상</th>
				   <th>2~6개월</th>
				   <th>없음</th>
				   <th></th>
			    </tr>
			    <tr>
					<th>하나비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
				<tr>
					<th>삼성비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
				<tr>
					<th>신한비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
				<tr>
					<th>현대비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
				<tr>
					<th>롯데비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
				<tr>
					<th>KB비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
				<tr>
					<th>NH비자</th>
					<th>5만원이상</th>
					<th>2~6개월</th>
					<th>없음</th>
					<th></th>
				</tr>
			</table><br>
			<table border="1" bordercolor="black" width="95%">
				<tr>                          
					<th>적용기간</th>                 
					<th>카드사명</th>
					<th>대상 금액</th>
					<th>대상 개월수</th>	
					<th>고객 부담</th>
					<th width="170px"></th>
				</tr>
				<tr>
				   <th rowspan="2">2.1 ~ 2.28</th>
				   <th rowspan="2">BC카드</th>
				   <th rowspan="2">5만원이상</th>
				   <th>10개월</th>
				   <th>1~3회차</th>
				   <th rowspan="2">
					   	사전 ARS신청 고객에 한함
							(ARS : 1899-5772)
							(하나BC카드 제외)
					</th>
			    </tr>
				<tr>
					<th>12개월</th>
					<th>1~4회차</th>
				 </tr>
			</table>
			<div class="note">
				<div class="title">유의사항</div>
				<ul class="content">
					<li>법인(기업)/체크/선불/기프트/하이브리드/은행계열카드 (BC마크가 없는 NON BC카드) 대상 제외</li>
					<li>카드사직계약 가맹점, 카드사특별제휴가맹점, 가맹점부담계약 가맹점, 오프라인 가맹점 등 일부 제외</li>
					<li>무이자할부 결제 시 포인트, 마일리지 적립 제외</li>
					<li>그외 제외 업종 : 의약품, 제세공과금, 등록금, 도시가스, 상품권 등</li>
					<li>본 행사는 카드사 사정에 따라 변경 또는 중단될 수 있음</li>
				</ul>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	
		$('.view-img-box').click(function(e){
            e.preventDefault();
			$('.overlay').show();
        })
		$('.hidden-box .img-box').click(function(e){
			e.preventDefault();
			$('.overlay').hide();
		})

        $('.myBox-btn').click(function(e){
        	e.preventDefault(); // myBox-btn에 지정한 url로 못가게 막는거
        	var id = '${user.user_id}';
        	var product_num = $('input[name=product_num]').val();	
        	
        	if(id == ''){
        		alert('로그인하세요.');
        		return;
        	}
        	var data = { 'product_num' : product_num };	
        	$.ajax({
				url : '<%=request.getContextPath()%>/myBoxRegis',
				type : 'post',
				data : data,
				success : function(data){
					console.log(data);
					if(data == 'false'){
						alert('이미 등록된 제품 입니다.');
					}
					else if(data == 'success'){
						alert('등록 되었습니다.');					
					}
				},
				error : function(){
					console.log('실패');
				}
			})
        })
        $('.buy-btn').click(function(e){
        	e.preventDefault();	//buy-btn에 지정한 url로 못가게 막고
        	$('#formSubmit').submit();	// formsubmit을 실행
        })
        
	</script>

</body>
</html>