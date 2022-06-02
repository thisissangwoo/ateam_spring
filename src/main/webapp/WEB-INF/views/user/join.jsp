<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>

	#content {
	 min-width: 1280px; min-height: 650px; height: 100%;  
	}
	

	
	.Anaforcenter{
		margin:20px auto;
		text-align:center;
	}
	
	#alogo{
		width:242px;
		height:78px;
		color:#696AAD;
		letter-spacing:-0.015em;
		font-size:32px;
		font-weight:800;
		font-size:32px;
		font-style:normal; 
	}
	
	#alogotitle{
		width:100px;
		height:26px;
		color:#696AAD;
		letter-spacing:-0.015em;
		font-weight:600;
		font-size:12px;
		text-align:center;
		 
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
		height:30px;
		color:#696AAD;
		background: transparent;
		font-weight:400;
		border:1px solid #ccc;
	}
	
	
	input[type=text]:focus, input[type=password]:focus{
		border:2px solid #696AAD;
	}

	table{
		border:1px solid black;
		margin:10px auto;
	}
	td{
		text-align:left;
		border:1px solid black;
	}

</style>
</head>
<body>
	<form action="userjoinChk">
	<div class="Anaforcenter">
		<div id="AnaforLogo">
			<span id="alogo">AnaFor</span><br/>
			<span id="alogotitle">아픈 나를 위해 아나포</span>
		</div>
		<table>
			<tr>
			<td colspan="2">*필수 입력사항</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="이메일을 입력하세요 *"/></td>
				<td><input type="button" value="중복확인"/></td>
			</tr>
			<tr>
			<td colspan="2">예)happy@anafor.com</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="인증코드를 입력하세요 *"/></td>
				<td><input type="button" value="이메일 인증"/></td>
			</tr>
			<tr>
			<td colspan="2">이메일 인증 코드를 받고 입력하세요</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="비밀번호 *"/></td>
			</tr>
			<tr>
			<td colspan="2">8~16자 이내로 영문과 숫자를 혼합하여 입력해주세요</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="비밀번호 확인*"/></td>
			</tr>
			<tr>
			<td colspan="2">비밀번호가 일치합니다.</td></tr>
			<tr>
				<td><input type="text" placeholder="이름 *"/></td>
			</tr>
			<tr>
				<td><input type="text" placeholder="휴대폰 번호 *"/></td>
			</tr>
			<tr>
				<td colspan="2">'-'없이 번호만 입력 예)01012345678</td></tr>
			<tr>
				<td><input type="text" placeholder="생년월일 *"/></td>
			</tr>
			<tr>
				<td colspan="2">예)20220101</td></tr>
			<tr>
				<td colspan="2">성별*</td>
			</tr>
			<tr>
				<td colspan="2"><label><input type="radio" name="gender" value="남">남</label>
				<label><input type="radio" name="gender" value="여">여</label></td>
			</tr>		
		</table>
	</div>	
	</form>
</body>
</html>