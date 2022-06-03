<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상품 정보</title>
<style type="text/css">

.product {
	position: absolute; 
	width: 1680px; 
	height: 100%;  
}

.product_textarea {
	position: absolute;
	width: 1240px;
	height: 40%;
	left: 200px;
	top: 47px;
}

.product #product_text::after {
	content:'';
	display:block;
	height: 1px;
	width: 1000px;
	background: #888888;
}

#product_text {
	position: absolute; 
	width: 137px; 
	height: 50px; 
	left: 248px; 
	font-weight: bold; 
	font-size: 20px; 
	line-height: 50px;
}

.product #detail::after {
	content:'';
	display:block;
	height: 1px;
	width: 1000px;
	background: #888888;
}






</style>
</head>
<body>

<div class="product" >
	<div class="product_textarea">
		<p id="product_text" >주문 상품 정보</p>
		<img src="imgs/shopbox.png" style="position: absolute; width: 221px; height: 210px; left: 246px; top: 100px; border-radius: 11px;">
		<p style="position: absolute; width: 593px; height: 50px; left: 389px; top: 150px; font-weight: bold; font-size: 17px; line-height: 50px; letter-spacing: -0.05em;">아나포 스마트 약통 AnaFor Smart IoT 알약/영양제</p>
		<p style="position: absolute; width: 147px; height: 50px; left: 465px; top: 180px; font-weight: bold; font-size: 17px; line-height: 50px; letter-spacing: -0.05em; color: red;">30,000원</p>
		<p style="position: absolute; width: 147px; height: 50px; left: 446px; top: 210px; font-weight: bold; font-size: 16px; line-height: 50px; letter-spacing: -0.05em;">1개</p>
	</div>
	
	<div style="position: absolute; width: 1239px; height: 60%; left: 200px; top: 445px;">
		<p id="detail" style="position: absolute; float: left; width: 150px; height: 50px; left: 248px; font-weight: bold; font-size: 20px; line-height: 50px; letter-spacing: -0.05em;">주문자 정보 입력</p>
	</div>
	
	<div style="position: absolute; width: 127px; height: 200px; left: 450px; top: 500px; font-weight: bold; font-size: 20px; line-height: 50px; letter-spacing: -0.05em; color: #808080;">
		<p>받는사람</p>
		<input type="text" style="position: absolute; width: 300px; height: 35px; left: 130px; top: 500; border-radius: 5px; border: 1px solid #B0B0B0;"/>
		<p>연락처</p>
		<p>주소</p>
		<p>배송요청사항</p>
	</div>
</div>

</body>
</html>