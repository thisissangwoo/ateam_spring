<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
	
	#AnaforLogo{
		margin-bottom:10px;
	}

	img{
		width:200px;
		height:45px;
	}
	input[type=text], input[type=password]{
		width:400px;
		height:50px;
		margin:10px 0px 0px 0px;
		border-radius:10px;
		padding: 0px 45px;
	}
	
	#btn-login{
		width:480px;
		height:50px;
		background-color: #696AAD;
		border-radius:10px;
		text-align:center;
		font-size:20px;
		color:#FFFFFF;
		font-weight:400;
		padding:3px 7px;
		border:0px;
		margin:10px;
	}
	
	
 	#centerdiv{
		width:100%;
		height:50px;
		margin:0px auto;
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
	
	#alogo{
		width:242px;
		height:78px;
		text-align:center;
		color:#696AAD;
		letter-spacing:-0.015em;
		font-weight:800;
		font-size:64px;
		font-style:normal;
		font-family: 'Montserrat';
	}
	
		#alogotitle{
		width:197px;
		height:26px;
		text-align:center;
		color:#696AAD;
		letter-spacing:-0.015em;
		font-weight:600;
		font-size:18px;
	}
	

	#usericon{
		position: absolute;
		top:142px;
		left:20px;
		font-size:20px;
	}
	
	#pwicon{
		position: absolute;
		left:20px;
		top: 202px;
		font-size:20px;
	} 
	
	#checkmsg{
		width:100%;
		height:50px;
	}
	
	#check{
		display: inline-block;
		font-size : 14px;
		color:#ff0000;
		float:left;
		margin:18px 0px 0px 10px;
	}
	
	#find{
		margin-top: 20px;
	}
	
	#find ul li{
		float:left;
	}

</style>
</head>

<body>
	<div class="center">
		<div id="AnaforLogo">
			<span id="alogo">AnaFor</span><br/>
			<span id="alogotitle">아픈 나를 위해 아나포</span>
		</div>
		<div id="login">
			<input type="text" id="userid" placeholder="이메일을 입력하세요" autofocus/>
			<i class="fa-solid fa-user" id="usericon"></i><br/>
			<input type="password" id="userpw" placeholder="비밀번호를 입력하세요"/>
			<i class="fa-solid fa-lock" id="pwicon"></i><br/>
			<div id="checkmsg">
			<span id="check"> 아이디 혹은 비밀번호가 일치하지 않습니다.</span>
			</div>
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
			<ul>
				<li><a>비밀번호 찾기</a></li>
				<li><a href="userJoin">회원가입</a></li>
			</ul>
		</div>
	</div>
</body>
</html>