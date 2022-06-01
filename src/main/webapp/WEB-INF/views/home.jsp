<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
 <!doctype html>
<html>
<head>
	
    <meta charset="utf-8" />
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
    <meta content="IE=Edge" http-equiv="X-UA-Compatible"/>
    <meta content="telephone=no, address=no, email=no" name="format-detection" >
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" name="viewport">
	
    <title>아나포</title>   
	
    
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/home.js"></script>

	
	<!-- header -->
	<style>
	#wrap{width:100%;height:auto}
	
	#header{width:100%;height:493px;background: url("imgs/header_bg.png") 95% bottom #696aad no-repeat;position:relative}
	#header .text_box{position:absolute;left:60px;top:160px}
	#header .text_box h3{font-size:56px;font-weight:200;color:#fff;line-height:64px;margin-bottom:10px;position: relative;}
	#header .text_box h3::after{content:'';display:block;height:1px;width:200px;background:#fff;position: absolute;top:32px;right:-240px}
	#header .text_box p{font-size:20px;color:#fff;line-height:24px;font-weight:200}
	#header .btn_app{position: absolute;left:60px;bottom:90px}
	#header .btn_app a{width:200px;height:55px;display:block;border-radius:55px;overflow:hidden;}
	#header .btn_app a img{width:100%}
	
	#wrapj{width:100%;height:auto}
	
	/* jungle */
	#jungle{width:100%;height:730px;background: url("imgs/jungle_bg.png") 100% 40px #e0e0e0 no-repeat;position:relative}
	#jungle .text_jungle{position: absolute;left: 87px; top: 130px; text-align: left;}
	#jungle .text_jungle h3{font-size: 34px;font-weight: 600;line-height: 44px;position: relative;}
	#jungle .text_jungle b{color: #696aad;}
	#jungle .text_jungle p{font-size: 24px;line-height: 24px;}
	#jungle .img_jungle{position: absolute;left: 60px;bottom: 30px;}
	
	/* mid */
	#mid{width:100%;height: 900px; background: url("imgs/mid_img.png") center no-repeat;position: relative;display: block;margin: 0px auto; box-sizing: border-box; margin-top: 30px;margin-bottom: 100px;}
	
	/* bottom */
	#wrapb{width:100%;height:auto}
	
	#bottom{width:100%;height:260px;background: #f5f5f5;position:relative;box-sizing: border-box;}
	#bottom .text_bot{position:absolute;left:60px;top:50px;text-align: left;}
	#bottom .text_bot h3{font-size:28px;font-weight:900;color:#696aad;line-height: 29px;}
	#bottom .text_bot p{font-size:24px;color:#000;font-weight:200;margin: 0px auto;}
	#bottom .btn_appbot{position: absolute;right:120px;bottom:90px;}
	#bottom .btn_appbot a{width:200px;height:55px;display:block;border-radius:55px;overflow:hidden;border: 2px solid #696aad;}
	#bottom .btn_appbot a img{width:100%}
	</style>
	
	
	
	
	
</head>

<body>

<div id="wrap">

	<!-- header -->
	<div id="header">
		<div class="text_box">
			<h3>나는 오늘 <b>아나포</b></h3>
			<p>병원/약국 찾기부터 모바일 상담/계획 관리까지</p>
		</div>
		<div class="btn_app">
			<a href=""><img src="imgs/btn_app.png"></a>
		</div>
	</div>
	<!-- // header  -->
	
	<!-- top -->
	<!-- // top -->
<div id="wrapj">	
	<!-- jungle -->
	<div id="jungle">
		<div class="text_jungle">
			<h3><b>AnaFor</b> 앱으로 스마트하게 건강관리하세요</h3>
			<p>나의 일상생활에 딱맞게 울리는 복약알림, AnaFor 띵동!</p>
		</div>
		<div class="img_jungle">
			<img src="imgs/jungle_con.png">
		</div>
	</div>
	<!-- // jungle -->
</div>	
	<!-- mid -->
	<div id="mid">
		<div>
			
		</div>
	</div>
	<!-- // mid -->
	
	<!-- bottom -->
	<div id="wrapb">
		<div id="bottom">
			<div class="text_bot">
				<h3>AnaFor</h3>
				<p><b>아픈</b> 나를 위한</p>
				<p><b>아나포</b>를 지금<b>만나보세요!</b></p>
			</div>
			<div class="btn_appbot">
				<a href=""><img src="imgs/btn_app.png"></a>
			</div>
		</div>	
	</div>
	<!-- // bottom -->	

</div>

</body>
</html>

