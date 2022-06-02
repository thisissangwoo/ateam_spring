<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


#wrap{
	width: 100%;
	height: auto;
}

#text{
	width: 100%;
	height: 1300px;
	position: relative;
}

#review{
	width: 100%;
	height: auto;
	position: relative;
	margin: 20px;
}

#text div {
	height: 70px;
	font-size: 40px;
	font-weight: bold;
	background: center;
	line-height: 50px;
}
h1 {
	background: position: absolute; center; top: 200px; 
	margin: 0px auto;
	line-height: 80px; 
	font-size: 70px;
	font-weight: bold;
}

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
	border: 0; 				/* 필드셋 테두리 제거 */
}

#myform input[type=radio] {
	display: none; /* 라디오박스 감춤 */
}

#myform label {
	font-size: 25px;			 /* 이모지 크기 */
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
details div{
	font-size: 30px;
	font-weight: bold;
	line-height: 40px;
}

</style>
</head>
<body>
	<div id="wrap">
		<div id="text">
			<div style="margin-top: 130px;">스마트 약통이</div>
			<div>가장 필요한 순간</div>
			<div style="margin-top: 150px;">매일 약먹는 걸 까먹을때</div>
			<div style="margin-top: 50px;">약을 정해진 시간에 먹어야 할 때</div>
			<div style="margin-top: 50px;">약을 소분해서 가지고 다녀야 할때</div>
			<div style="margin-top: 250px;">꾸준하게 건강을 챙길 수 있다면?</div>
		</div>
			<div>
				<img src="imgs/boxmain.jpg" style="width: 80%;">
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
			<!-- <div class="line"> -->
			<details>
					<summary class="line" style="padding: 0 10px; background-color: #6969ff; color: white; height: 50px; width: 200px; line-height: 50px; display: inline; cursor: pointer;">
						펼쳐보기
					</summary>
				
				<br /><br />
				
				<div style="height: 50px; line-height: 90px;">스마트 폰으로 예약하면</div>
				<div style="height: 50px; line-height: 70px;">약먹는 시간을 알려줍니다</div>
				<div>
					<img src="imgs/box.png" style="width: 800px; height: 600px;">
				</div>
				<div style="height: 100px; line-height: 160px;">분실 우려없이 GPS 확인과 위치확인</div>
				<div>
					<img src="imgs/gps.png" style="width: 800px; height: 600px;">
				</div>
				<div style="height: 60px; line-height: 120px;">잊어버리지 않게 섭취 시간 알림</div>
				<div style="height: 60px; line-height: 80px;">언제먹었는지 알수있는 섭취 히스토리</div>				
				<div>
					<img src="imgs/phone.png" style="width: 800px; height: 600px;">
				</div>
			</details>
			<!-- </div> -->
			
			
			<div style="position: fixed; bottom: 80px; right: 80px; width: 50px; height: 50px; border: 1px solid; border-radius: 50%; background-color: #6969ff; border-radius: 50%;  ">
				<a href="#content" style="display: block; height: 100%; line-height: 50px; color: white;">TOP</a>		
			</div>
			
			
			
			
			<br /><br /><br /><br />
			<div id="review">
				<div style="height: 80px; text-align: left;">
					<div style="height: 20px; font-size: 20px; line-height: 20px;">상품 리뷰</div>
				<form name="myform" id="myform" method="post" action="" style="height: 40px; line-height: 40px;">
					<fieldset>
						<input type="radio" name="rating" value="1" id="rate1" checked="checked"> <label for="rate1">⭐</label>
						<input type="radio" name="rating" value="2" id="rate2" checked="checked"> <label for="rate2">⭐</label>
						<input type="radio" name="rating" value="3" id="rate3"> <label for="rate3">⭐</label>
						<input type="radio" name="rating" value="4" id="rate4"> <label for="rate4">⭐</label>
						<input type="radio" name="rating" value="5" id="rate5"> <label for="rate5">⭐</label>
					</fieldset>
				</form>
			</div>
			<div style="border-bottom: 1px solid; height: 1px; margin-bottom: 20px; margin-right: 20px;"></div>
			
			
			 <c:forEach items="${list } " var="vo">
			 
				<div style="height: 200px; text-align: left;">
					<span style="height: 20px; font-size: 20px; line-height: 20px;">${vo.name }</span>
					<span>${vo.rev_date }</span>
					
					
					
					<div style="height: 20px; font-size: 20px; line-height: 20px;">판매자 : AnaFor</div>
					<div style="height: 100px; margin-top: 10px; border-bottom: 1px solid; margin-right: 20px;">
						${vo.rev_content }
					</div>
				</div>
			</c:forEach>
			
			
			<!-- <div style="height: 200px; text-align: left;">
				<span style="height: 20px; font-size: 20px; line-height: 20px;">김상우</span>
				<span>2022.01.01</span>
				<form name="myform" id="myform" method="post" action="" style="height: 40px; line-height: 40px;">
					<fieldset>
						<input type="radio" name="rating" value="1" id="rate1" checked="checked"> <label for="rate1">⭐</label>
						<input type="radio" name="rating" value="2" id="rate2" checked="checked"> <label for="rate2">⭐</label>
						<input type="radio" name="rating" value="3" id="rate3" checked="checked"> <label for="rate3">⭐</label>
						<input type="radio" name="rating" value="4" id="rate4"> <label for="rate4">⭐</label>
						<input type="radio" name="rating" value="5" id="rate5"> <label for="rate5">⭐</label>
					</fieldset>
				</form>
				<div style="height: 20px; font-size: 20px; line-height: 20px;">판매자 : AnaFor</div>
				<div style="height: 100px; margin-top: 10px; border-bottom: 1px solid; margin-right: 20px;">
					주문했는데 오늘 배송 가능하죠??
				</div>
			</div> -->
	</div>			
</body>
</html>