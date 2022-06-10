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

</style>
</head>
<body>

<div style="height: 1000px; width: 100%">

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


</div>

</div>

<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script type="text/javascript">



</script>
</body>
</html>