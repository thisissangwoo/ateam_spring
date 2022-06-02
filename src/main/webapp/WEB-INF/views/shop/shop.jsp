<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 주문</title>
<style type="text/css">
/* table td, table th, table{
	border-bottom: none;
	border-left: none;
	border-top: none;
	border-right: none;
	margin: 5px;
} */

/* .pay_box{width: 698px; height:99px; position: relative; }
.pay_box .model{display: inline-block;position: absolute; left: 100px; top: 30px} */

.wrap {
	width: 1680px;
	height: 0px auto;
	left: 0px;
	top: 60px;
}

.img {
	width: 796px;
	height: 569px;
	left: 50px;
	top: 106px;
	position: absolute;
	/* border-radius: 10px; */
	/* style="position: absolute; width: 796px; height: 569px; left: 50px; top: 106px;" */
}

.text_div {
	position: absolute;
	width: 700px;
	height: 50px;
	left: 932px;
	top: 164px;
}

#name {
	font-style: normal;
	font-weight: 500px;
	font-size: 25px;
	line-height: 50px;
	letter-spacing: -0.05em;
}

#price {
	color: red;

}

hr {
	position: absolute;
	width: 698px;
	height: 0px auto;
	left: 932px;
	top: 229px;
	border: 2px solid #888888;
}

.a {
	position: absolute;
	width: 71px;
	height: 250px;
	left: 947px;
	top: 255px;
}

.b {
	position: absolute;
	width: 200px;
	height: 250px;
	left: 1090px;
	top: 255px;
}

.c {
	position: absolute;
	width: 698px;
	height: 99px;
	left: 932px;
	top: 511px;
	border: 1px solid #CCCCCC;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	border-radius: 10px;
}

</style>
</head>
<body>
	<div class="wrap">
		<div class="img">
			<img src="imgs/shopbox.png">
		</div>
		
		<div class="text_div">
			<p id="name" >아나포 스마트 약통 AnaFor Smart Box IoT 알약 / 영양제 박스</p>
		</div>
		
		<hr/>
		
		<div class="a">
			<p>상품가격</p>
			<p>배송안내</p>
			<p>모델명</p>
			<p>제조회사</p>
			<p>원산지</p>
		</div>
		
		<div class="b">
			<p id="price">30,000원</p>
			<p>대한통운</p>
			<p>AnaFor Smart Box Model 1</p>
			<p>AnaFor</p>
			<p>대한민국</p>
		</div>
		
		<div class="c">
			<p></p>
		
		</div>
		
	
	</div>

	<!-- <div style="height: 500px; margin: 100px;">
		<div style="float: left;">
			<img src="imgs/shopbox.png" style="width: 500px; height: 500px;">	
		</div>
		<div style="font-size: 20px; ">
			아나포 스마트 약통 AnaFor Box Smart IoT 알약/영양제 통<br /> <hr style="width: 900px; aligh:right;">
					
			<table style="float: right; width: 900px; margin-right: 60px;">
				<tr>
					<th>판매가격</th>
					<td style="float: left;">30,000원</td>
				</tr>
				<tr>
					<th>배송안내</th>
					<td style="float: left;">어떻게 해야하지?</td>
				</tr>
				<tr>
					<th>모델명</th>
					<td style="float: left;">AnaFor Box model 1</td>
				</tr>
				<tr>
					<th>제조회사</th>
					<td style="float: left;">AnaFor</td>
				</tr>
				<tr>
					<th>원산지</th>
					<td style="float: left;">대한민국</td>
				</tr>
			</table>
			<br />
		</div>
		
		<div id="pay_box">
			<div id="model">
				<p>아나포 스마트약통</p>
				<p>30,000원</p>
			</div>
			<div id="total">
				<p>총상품금액<b>30,000원</b></p>
				
			</div>
		</div>
		
		
		<input type="button" value="주문하기">
		<input type="button" value="장바구니 담기">
	
		
	</div>
	 -->


</body>
</html>