<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상품 정보</title>
<style type="text/css">

.product {
	width: 1451px; 
	height: 1080px;  
}

.product_textarea {
	position: absolute;
	width: 1240px;
	height: 40%;
	left: 200px;
	top: 20px;
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

#payment::after {
	content:'';
	display:block;
	height: 1px;
	width: 1000px;
	background: #888888;
}

#bank::after {
	content:'';
	display:block;
	height: 1px;
	width: 1000px;
	background: #888888;
}

#total_result::after {
	content:'';
	display:block;
	height: 1px;
	margin-left: -864px;
	margin-top: -9px;
	width: 1000px;
	background: #888888;
}



</style>
</head>
<body>
<form action="order.pr" method="post">
<div class="product" >
	<div class="product_textarea">
		<p id="product_text" >주문 상품 정보</p>
		<img src="imgs/shopbox.png" style="position: absolute; width: 221px; height: 210px; left: 246px; top: 80px; border-radius: 11px;">
		<p style="position: absolute; width: 593px; height: 50px; left: 389px; top: 130px; font-weight: bold; font-size: 17px; line-height: 50px; letter-spacing: -0.05em;">아나포 스마트 약통 AnaFor Smart IoT 알약/영양제</p>
		<p style="position: absolute; width: 147px; height: 50px; left: 465px; top: 160px; font-weight: bold; font-size: 17px; line-height: 50px; letter-spacing: -0.05em; color: red;">30,000원</p>
		<p style="position: absolute; width: 147px; height: 50px; left: 446px; top: 190px; font-weight: bold; font-size: 16px; line-height: 50px; letter-spacing: -0.05em;">1개</p>
	</div>
	
	<div class="order_detail" style="position: absolute; width: 1239px; height: 350px; left: 200px; top: 330px;">
		<p id="detail" style="position: absolute; float: left; width: 150px; height: 50px; left: 248px; font-weight: bold; font-size: 20px; line-height: 50px; letter-spacing: -0.05em;">주문자 정보 입력</p>
	</div>
	
	<div style="position: absolute; width: 127px; height: 237px; left: 450px; top: 390px; line-height: 50px; letter-spacing: -0.05em;">
		<p style="font-size: 14px; font-weight: bold;">받는사람</p>
			<input type="text" style="position: absolute; width: 200px; height: 25px; left: 150px; top: 10px; border: 1px solid #d5d5d5; border-radius: 5px; font-size: 12px">
		<p style="font-size: 14px; font-weight: bold;">연락처</p>
			<input type="text" name="tel" maxlength="3" style="position: absolute; width: 50px; height: 25px; left: 150px; top: 58px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
			<p style="position: absolute; left: 205px; top: 46px;">-</p>
			<input type="text" name="tel" maxlength="4" style="position: absolute; width: 60px; height: 25px; left: 215px; top: 58px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
			<p style="position: absolute; left: 281px; top: 46px;">-</p>
			<input type="text" name="tel" maxlength="4" style="position: absolute; width: 60px; height: 25px; left: 290px; top: 58px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
		<p class="addr" style="font-size: 14px; font-weight: bold;">받는주소</p>
		<button onclick="daum_post()" style="position: absolute; background: #696aad; color: white; width: 80px; height: 25px; left: 150px; top: 110px; cursor: pointer; border: none; letter-spacing: 0.7px; font-size: 13px;">우편번호</button>
			<input type="text" name="post" readonly style="border: 1px solid #d5d5d5; position: absolute; left: 240px; top: 110px; height: 25px; width: 60px;" /><br />
			<p style="position: absolute; left: 545px; font-size: 11px; color: #808080; width: 60px; top: 127px;">기본주소</p>
			<input type="text" name="addr" readonly style="border: 1px solid #d5d5d5; position: absolute; left: 150px; top: 140px; height: 25px; width: 400px;"/><br/>
			<p style="position: absolute; left: 550px; font-size: 11px; color: #808080; width: 60px; top: 158px;">나머지주소</p>
			<input type="text" name="addr" style="border: 1px solid #d5d5d5; position: absolute; left: 150px; top: 170px; height: 25px; width: 400px; font-size: 12px;"/><br/>
		<p id="delivery" style="position: absolute; top: 200px; left: 30px; font-size: 14px; font-weight: bold;">배송요청사항</p>
		<textarea style="position: absolute; border: 1px solid #d5d5d5; top: 214px; left: 150px; width: 400px; height: 50px; resize: none; font-size: 12px;"></textarea>
		<p id="payment" style="position: absolute; width: 85px; height: 46px; top: 300px; font-weight: bold; font-size: 20px; line-height: 50px; letter-spacing: -0.05em; text-align: right;">결제 수단</p>
		<p id="bank" style="position: absolute; height: 46px; top: 350px; font-size: 13px; line-height: 50px; letter-spacing: -0.05em; font-weight: bold;">농협은행(무통장입금)</p>
		
		<div style="position: absolute; width: 400px; height: 93px; left: 600px; top: 351px; background: #C4C4C4;">
			<div style="width: 93px; height: 93px; left: 987px; top: 866px;">
				<p style="font-weight: bold; font-size: 14px;">총 상품가격</p>
				<p style="font-weight: bold; font-size: 14px; margin-right: 30px;">배송비</p>
			</div>
			
			<div style="position: absolute; width: 86px; height: 93px; left: 300px; top: -1px; letter-spacing: 0.2px; ">
				<p style="font-weight: bold; font-size: 14px; color: red; letter-spacing: 0.2px;">30,000원</p>
				<p style="font-weight: bold; font-size: 14px;">0원</p>
			</div>
		</div>
		
		<div style="position: absolute; width: 400px; height: 93px; left: 600px; top: 444px; background: #C4C4C4;">
			<div style="widows: 93px; height: 93px; left: 987px; top: 866px;">
				<p style="font-weight: bold; font-size: 14px; margin-left: 10px; text-align: left; margin-top: 5px;">농협은행(무통장입금)</p>
				<p style="font-weight: bold; font-size: 14px; margin-left: 10px; text-align: left; margin-top: -5px;">총 결제금액</p>
			</div>
			
			<div style="position: absolute; width: 187px; height: 86px; left: 228px; top: 6px;">
				<p style="font-size: 14px; margin-left: 10px; letter-spacing: 0.5px; color: black; font-weight: bold;">356-0769-1562-03</p>
				<p id="total_result" style="font-weight: bold; font-size: 14px; margin-left: 35px; letter-spacing: 0.5px; color: red; margin-top: -5px; font-size: 16px; ">30,000원</p>
			</div>
		
		</div>
	</div>
	
	<button class="order_result" type="submit" style="position: absolute; width: 350px; height: 60px; left: 760px; top: 970px; background: #696aad; border-radius: 10px; border: none; font-size: 17px; color: white;">주문하기</button>
		
</div>
</form>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

function daum_post() {
	
	new daum.Postcode({
		oncomplete: function(res) {
			$("[name=post]").val(res.zonecode);
			// 지번, 도로명 구분
			var addr = res.userSelectedType == "J" ? res.jibunAddress : res.roadAddress;	// 선택 한 것이 J 인지 (Jibun 지번)
	        // name 이 addr 인 태그의 0 번지에 addr 값을 할당
	        
	        // 건물명이 있을 경우 기존 주소의 건물명 값을 추가
	        if(res.buildingName != "") addr += '(' + res.buildingName + ')';
	        
	        $("[name=addr]").eq(0).val(addr);
		}
	}).open();
}

</script>

</body>
</html>