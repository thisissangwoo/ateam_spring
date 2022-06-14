<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#titlename{ width:100%; background:#929292; height:60px; text-align:left; font-size:20px; font-weight:700; line-height:60px; padding: 0px 10px; color:#FFFFFF; }

</style>
</head>
<body>
	<div id = "titlename">회원정보확인</div>
	<div id = "msg_user">
		<p>${loginInfo.user_id}</p>
		<p> 님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인 합니다.</p><br/>
		<table>
			<tr>
			</tr>		
		</table>
	</div>
</body>
</html>