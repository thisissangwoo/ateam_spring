<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.box {
	width: 130px;
	height: 130px;
	float: left;
	margin: 30px;
}

.box img {
	width: 80px;
	height: 80px;
}

#myform fieldset {
	display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	border: 0; /* 필드셋 테두리 제거 */
}

#myform input[type=radio] {
	display: none; /* 라디오박스 감춤 */
}

#myform label {
	font-size: 1.8em;			 /* 이모지 크기 */
	color: transparent;			 /* 기존 이모지 컬러 제거 */
	text-shadow: 0 0 0 #f0f0f0;  /* 새 이모지 색상 부여 */
}
#myform fieldset{
    display: inline-block; 		 /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; 			 /* 이모지 순서 반전 */
    border: 0; 					 /* 필드셋 테두리 제거 */
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #6969ff;  /* 마우스 클릭 체크 */
}
 .line {
	display: flex;
	flex-basis: 100%;
	align-items: center;
	color: rgba(0, 0, 0, 0.35);
	margin: 8px 0px;
}

.line::before {
	content: "";
	flex-grow: 1;
	margin: 0px 16px;
	background: rgba(0, 0, 0, 0.35);
	height: 1px;
	font-size: 0px;
	line-height: 0px;
}

.line::after {
	content: "";
	flex-grow: 1;
	margin: 0px 16px;
	background: rgba(0, 0, 0, 0.35);
	height: 1px;
	font-size: 0px;
	line-height: 0px;
}
</style>
</head>
<body>
	<h2>스마트 약통이<br />가장 필요한 순간</h2>
	<h3>매일 약먹는 걸 까먹을때</h3>
	<h3>약을 정해진 시간에 먹어야 할 때</h3>
	<h3>약을 소분해서 가지고 다녀야 할때</h3>
	
	
	<h2>꾸준하게 건강을 챙길 수 있다면?</h2>
		<div>
			<img src="imgs/boxmain.jpg" style="width: 50%;">
		</div>
	
		<br /><br />
		
		
		<div style="width: 760px; height: 150px; margin: auto; display: block;">
			<div class="box">
				<img src="imgs/clockicon.png"><br />
				섭취시간/기록 알림
			</div>
			<div class="box">
				<img src="imgs/boxicon.png"><br />
				분실방지 알림
			</div>
			<div class="box">
				<img src="imgs/gpsicon.png"><br />
				GPS 위치확인
			</div>
			<div class="box">
				<img src="imgs/phoneicon.png"><br />
				중복섭취 방지 알림
			</div>
		</div>
		
		<br /><br />
		
		<div style="width: 400px; height: 80px; border: 1px solid; margin: auto; border-radius: 50px; background-color: #6969ff; color: white; line-height: 80px;">
			<a style="color: white; font-size: 2em;" href="shop.pr">AnaFor Box 구매하기</a>
		</div>
		
		
		
		
		
		
		
		
		
		<br /><br />
		
		 <!--  -->
		<div class="line">
		<details>
				<summary class="line" style="padding: 0 10px; background-color: #6969ff; color: white; height: 50px; width: 150px; line-height: 50px; display: inline; cursor: pointer;">
					펼쳐보기
				</summary>
			
			<br /><br />
			
			<h2>스마트 폰으로 예약하면<br />약먹는 시간을 알려줍니다</h2>
			
			<div>
				<img src="imgs/box.png" style="width: 800px; height: 600px;">
			</div>
			
			<br /><br />
			
			<h2>분실 우려없이 GPS 확인과 위치확인</h2>
			
			<div>
				<img src="imgs/gps.png" style="width: 800px; height: 600px;">
			</div>
			
			<br /><br />
			
			<h2>잊어버리지 않게 섭취 시간 알림<br />언제먹었는지 알수있는 섭취 히스토리</h2>
			
			<div>
				<img src="imgs/phone.png" style="width: 800px; height: 600px;">
			</div>
			
		</details>
		</div>
		
		
		<div style="position: fixed; bottom: 100px; right: 100px; width: 80px; height: 80px; border: 1px solid; border-radius: 50%; background-color: #6969ff; border-radius: 50%;  ">
			<a href="#content" style="display: block; height: 100%; line-height: 80px; color: white;">TOP</a>		
		</div>
		
		
		
		
		<br /><br /><br /><br />
		
		<div style="margin: 50px;">
			<h2 style="margin: 0px; text-align: left;">상품 리뷰</h2>
		
		<form name="myform" id="myform" method="post" action="" style="text-align: left; margin-left: -20px;">
			<fieldset>
				<input type="radio" name="rating" value="1" id="rate1" checked="checked"> <label for="rate1">⭐</label>
				<input type="radio" name="rating" value="2" id="rate2" checked="checked"> <label for="rate2">⭐</label>
				<input type="radio" name="rating" value="3" id="rate3"> <label for="rate3">⭐</label>
				<input type="radio" name="rating" value="4" id="rate4"> <label for="rate4">⭐</label>
				<input type="radio" name="rating" value="5" id="rate5"> <label for="rate5">⭐</label>
			</fieldset>
		</form>
	</div>
		<hr  style="margin: 50px; margin-top: -20px;">
		
	<div style="margin: 50px;">
		<h3 style="text-align: left; margin: 0px;">김상우</h3>
		<form name="myform" id="myform" method="post" action="" style="text-align: left; margin-left: -20px;">
			<fieldset>
				<input type="radio" name="rating" value="1" id="rate1" checked="checked"> <label for="rate1">⭐</label>
				<input type="radio" name="rating" value="2" id="rate2" checked="checked"> <label for="rate2">⭐</label>
				<input type="radio" name="rating" value="3" id="rate3" checked="checked"> <label for="rate3">⭐</label>
				<input type="radio" name="rating" value="4" id="rate4"> <label for="rate4">⭐</label>
				<input type="radio" name="rating" value="5" id="rate5"> <label for="rate5">⭐</label>
			</fieldset>
		</form>
		<h3 style="text-align: left; margin: 0px;">판매자: AnaFor</h3>
		<div style=" width: 100%; height: 150px; text-align: left; padding: 10px; font-size: 1.2em;">
			주문했는데 오늘 배송 가능하죠??
		</div>
	</div>
	<hr  style="margin: 50px;">
	

	
</body>
</html>