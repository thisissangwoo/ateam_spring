<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	
	.Anaforcenter{
		margin:0px auto;
		width:60%;
		height:auto;
	}
	
	#AnaforLogo{
		margin : 40px 40px 30px 40px;
	}
	#AnaforLogo #alogo{
		width:242px;
		height:90px;
		color:#696AAD;
		letter-spacing:-0.015em;
		font-size:42px;
		font-weight:800;
		font-style:normal; 
	}
	
	#AnaforLogo #alogotitle{
		width:100px;
		height:26px;
		color:#696AAD;
		letter-spacing:-0.015em;
		font-weight:600;
		font-size:12px;
	}
	
	input[type=text], input[type=password]{
		width:400px;
		height:50px;
		margin:10px 0px 0px 0px;
		border-radius:10px;
		padding: 0px 20px;
		border:1px solid #ccc;
		line-height:50px;
	}
	
	
	
	input[type=button]{
		width:100px;
		height:50px;
		color:#696AAD;
		background: transparent;
		font-weight:600;
		border-radius:10px;
		border:1px solid #ccc;
		margin:10px 0px 0px 0px;

	}
	
	input[type=button]:hover{
		cursor:pointer;
	}
	
	
	input[type=text]:focus, input[type=password]:focus{
		border:2px solid #696AAD;
	}
	
	#noticejoin{
		width:100%;
		height:20px;
		text-align:center;
		margin-bottom:10px;
	}
	
	
	#notice{
		width:500px;
		text-align:left;
		display:inline-block;
		font-size:14px;
		color:#696AAD;
		font-weight:500;
		height:14px;
	}

	#pw,#pwchk,#name,#tel,#birth{
		width:500px;
	}
	
	#gender{
		width:500px;
		height:50px;
		margin:10px 0px 0px 0px;
		border-radius:10px;
		padding: 0px 20px;
		border:1px solid #ccc;
		line-height:50px;
	}
	
	#idmsg, #codemsg,#pwmsg,#pwmsg2,#namemsg,#telmsg,#genmsg,#birthmsg{
		width:500px;
		text-align:left;
		display:inline-block;
		font-size:13px;
		color:#696AAD;
		font-weight:500;
		padding:5px;
	}
		
	
	#btn-join{
	
		width:500px;
		height:50px;
		background-color: #696AAD;
		border-radius:10px;
		text-align:center;
		font-size:20px;
		color:#FFFFFF;
		font-weight:400;
		padding:3px 7px;
		border:0px;
	}
	#joinbutton{
		width:100%;
		height:170px;
	}
	
	.visible{
		visibility: visible;
	}
	.hidden{
		visibility: hidden;
	}

</style>
</head>
<body>
	<div id="AnaforLogo">
		<span id="alogo">AnaFor</span><br/>
		<span id="alogotitle">아픈 나를 위해 아나포</span>
		</div>	
	<form action="userjoinChk" method="post">
	<div class="Anaforcenter">
		<div id="noticejoin">
		<span id="notice">* 필수 입력사항</span>
		</div>
		<div id="useremail">
			<input type="text" name="id" id="id" placeholder="이메일을 입력하세요 *" maxlength="100"/>
			<input type="button" value="중복확인"/><br/>
			<span id="idmsg">예)happy@anafor.com</span>
		</div>
		<div id="usercode">
			<input type="text" name="code" id="code" placeholder="인증코드를 입력하세요 *"/>
			<input type="button" value="이메일 인증"/><br/>
			<span id="codemsg">이메일 인증코드를 받고 입력하세요</span>
		</div>
		<div id="userpw">
			<input type="password" name="pw" id="pw" placeholder="비밀번호 *"/><br/>
			<span id="pwmsg">8~16자 이내로 영문과 숫자를 혼합하여 입력해주세요</span>
		</div>
		<div id="userpwchk">
			<input type="password" name="pwchk" id="pwchk"  placeholder="비밀번호 확인*"/><br/>
			<span id="pwmsg2"></span>
		</div>
		<div id="username">
			<input type="text" name="name" id="name"  placeholder="이름 *"/><br/>
			<span id="namemsg"></span>
		</div>
		
		<div id="userbirth">
			<input type="text" name="birth" id="birth"  placeholder="생년월일을 입력하세요 *"/><br/>
			<span id="birthmsg">예)1990101</span>
		</div>
		<div id="userphone">
			<input type="text" name="tel" id="tel"  placeholder="휴대폰 번호 *"/><br/>
			<span id="telmsg">'-'없이 번호만 입력 예)01012345678</span>
		</div>
		<div id="usergender">
		<select name="gender" id="gender">
			<option value="">성별 *</option>
			<option value="남">남</option>
			<option value="여">여</option>
		</select>
		<br/>
		<span id="genmsg"></span>
		</div>
		<div id="joinbutton">
			<input type="button" id="btn-join" onclick="commoncheck()" value="가입하기"/>
		</div>
	</div>	
	</form>

<script>
	
	function commoncheck(){
		
		if($("#id").val()==""){
			$("#idmsg").text("아이디를 입력하세요 예)happy@anafor.com").css("color","red");
			$("#id").focus();
		}else if($("#code").val()==""){
			$("#codemsg").text("인증코드를 입력하세요").css("color","red");
			$("#code").focus();
		}else if($("#pw").val()==""){
			$("#pwmsg").text("8~16자 이내로 영문과 숫자를 혼합하여 입력해주세요").css("color","red");
			$("#pw").focus();
		}else if($("#pwchk").val()==""){
			$("#pwmsg2").text("비밀번호를 다시 한번 입력해주세요").css("color","red");
			$("#pwchk").focus();
		}else if($("#name").val()==""){
			$("#namemsg").text("이름을 입력해주세요").css("color","red");
			$("#name").focus();
		}else if($("#birth").val()==""){
			$("#birthmsg").text("생년월일을 입력해주세요 예)1990101").css("color","red");
			$("#birth").focus();
		}else if($("#tel").val()==""){
			$("#telmsg").text("전화번호를 입력해주세요 '-'없이 번호만 입력 예)01012345678").css("color","red");
			$("#tel").focus();
		}else if($("#gender").val()==""){
			$("#genmsg").text("성별을 선택해주세요").css("color","red");
		}
		
	}
	
	






</script>



</body>

</html>