<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img{
		width:200px;
		height:45px;
	}
	input{
		width:450px;
		height:50px;
		margin:10px;
	}
	
	#btn-login{
		width:400px;
		height:50px;
		background-color: #696AAD;
		border-radius:10px;
		text-align:center;
		font-size:20px;
		color:#FFFFFF;
		font-weight:400;
		padding:3px 7px;
	}
	
	#line{
		width:250px;
		border:1px solid #929292;
		margin-left : 0;
	}
	
	#centerdiv{
		width:700px;
		height:50px;
		display:flex;
		justify-content : center;
	}
	
	.sepline{
		display:flex;
		flex-basis:100%;
		align-items:center;
		color:rgba(0,0,0,0.35);
		font-size:16px;
		margin:8px 0px;
	}
	.sepline::before, .sepline::after{
		content:"";
		flex-grow:1;
		background : rgba(0,0,0,0.35);
		height:1px;
		font-size:0px;
		line-height:0px;
		margin:0px 16px;
	}
	

</style>
</head>

<body>
	<div id="AnaforLogo">
		<span id="logo">AnaFor</span><br/>
		<span id="logotitle">아픈 나를 위해서</span>
	</div>
	<div id="login">
		<input type="text" id="userid" placeholder="아이디를 입력하세요" autofocus/><br/>
		<input type="password" id="userpw" placeholder="비밀번호를 입력하세요"/><br/>
		<input type="button" id="btn-login" value="로그인"/>
	</div>
	<div id="centerdiv">
		<div class="sepline">또는</div>
	</div>
	
	<div id="socialLogin">
		<a href="naverLogin"><img src="imgs/naver_login.png" class="social"/></a>
		<a href="kakaoLogin"><img src="imgs/kakao_login.png" class="social"/></a>
	</div>
	<div id="find">
		<a>아이디 찾기</a>
		<span>|</span>
		<a>비밀번호 찾기</a>
	</div>
</body>
</html>