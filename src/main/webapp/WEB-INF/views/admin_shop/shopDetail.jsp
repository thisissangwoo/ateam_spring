<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상세</title>
<style type="text/css">

#order_text::after {
   content:'';
   display:block;
   height: 1.5px;
   width: 1460px;
   margin-left: -25px;
   margin-top: 20px;
   background: #888888;
}

#order_information_text::after {
   content:'';
   display:block;
   height: 1.5px;
   width: 1460px;
   margin-left: -30px;
   margin-top: 20px;
   background: #888888;
}


#textarea {
   position: absolute; 
   border: 1px solid #d5d5d5; 
   top: 162px; 
   left: 0px; 
   width: 400px; 
   height: 50px; 
   resize: none; 
   font-size: 14px;
}

</style>
</head>
<body>

<div style="position: absolute; width: 100%; height: 59px; background: #929292;">
	<p style="position: absolute; width: 106px; left: 20px; top: 20px; font-weight: bold; font-size: 21px; letter-spacing: 0.5px; color: white;">주문 상세</p>
</div>

<div style="position: absolute; width: 1460px; height: 400px; top: 52px; background: white; margin: 80px;">
	<p id="order_text" style="position: absolute; width: 154px; margin: 25px; font-weight: bold; font-size: 18px; letter-spacing: 0.5px;">2022.06.09 주문</p>
	<img src="imgs/shopbox.png" style="position: absolute; width: 220px; height: 210px; left: 70px; top: 125px; border-radius: 11px; ">
	<p style="position: absolute; width: 410px; left: 320px; top: 170px; font-weight: bold; font-size: 17px; letter-spacing: 0.5px;">아나포 스마트 약통 AnaFor Smart IoT 알약/영양제</p>
	<p style="position: absolute; width: 80px; left: 322px; top: 210px; font-weight: bold; font-size: 17px; letter-spacing: 0.5px; color: red;">30,000원</p>
	<p style="position: absolute; width: 80px; left: 297px; top: 254px; font-weight: bold; font-size: 17px; letter-spacing: 0.5px;">1개</p>
</div>

<div style="position: absolute; width: 1460px; height: 600px;  top: 530px; background: white; margin: 80px;">
	<p id="order_information_text" style="position: absolute; margin: 30px; font-weight: bold; font-size: 18px; letter-spacing: 0.5px; width: 100px;">주문자 정보</p>
	
	<div style="position: absolute; width: 100px; height: 213px; left: 32px; top: 100px;">
		<p style="font-size: 14px; letter-spacing: 0.5px; font-weight: bold; margin: 5px">받는사람</p>
		<p style="font-size: 14px; letter-spacing: 0.5px; font-weight: bold; margin-top: 20px;">연락처</p>
		<p style="font-size: 14px; letter-spacing: 0.5px; font-weight: bold; margin-top: 20px;">받는주소</p>
		<p style="font-size: 14px; letter-spacing: 0.5px; font-weight: bold; margin-top: 70px;">배송요청사항</p>
	</div>
	
	<div style="position: absolute; width: 400px; height: 213px; left: 160px; top: 100px;">
	
		<!-- 받는사람 -->
		<input type="text" name="name" id="person_receive" style="position: absolute; width: 200px; left: 1px; height: 25px; border: 1px solid #d5d5d5; border-radius: 5px; font-size: 14px;">
		
		<!-- 연락처 -->
		<input id="phone" type="text" name="tel" maxlength="3" style="position: absolute; width: 50px; height: 25px; left: 1px; top: 38px; border: 1px solid #d5d5d5; border-radius: 5px; font-size: 14px;"/>
	    <p style="position: absolute; left: 55px; top: 40px;">-</p>
	    <input type="text" name="tel" maxlength="4" style="position: absolute; font-size: 14px; width: 60px; height: 25px; left: 65px; top: 38px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
	    <p style="position: absolute; left: 130px; top: 40px;">-</p>
	    <input type="text" name="tel" maxlength="4" style="position: absolute; font-size: 14px; width: 60px; height: 25px; left: 140px; top: 38px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
	    
	    <!-- 기본주소 -->
        <input type="text" id="default" name="addr" style="border: 1px solid #d5d5d5; font-size: 14px; position: absolute; left: 1px; top: 80px; height: 25px; width: 400px;"/><br/>
         
        <!-- 상세주소 -->
        <input type="text" name="addr" style="border: 1px solid #d5d5d5; position: absolute; left: 1px; top: 120px; height: 25px; width: 400px; font-size: 14px;"/><br/>
	     
	    <!-- 배송요청사항 -->
	    <textarea id="textarea"></textarea>
	</div>
	
	
</div>



<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script type="text/javascript">



</script>
</body>
</html>