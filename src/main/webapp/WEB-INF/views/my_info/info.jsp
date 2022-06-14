<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/join-check.js"></script>
<style>
	#titlename{ width:100%; background:#929292; height:60px; text-align:left; font-size:20px; font-weight:700; line-height:60px; padding: 0px 10px; color:#FFFFFF; }
	table { width: 70%; border:1px solid black; }
	table th, table td {text-align:left;}
	#userInfo{
		margin-top:50px;
	}
	input[type="text"],input[type="password"]{
		margin-left:10px;
		border:1px solid #ccc;
		width:200px;
		height:30px;
	}
	input[type="radio"]{
		margin-left:10px;
	}
	
	#user_birth, #user_id{
		border:0px;
	}
	span{
		font-size:10px;
		margin-left:10px;
	}
	#pwcond{
		font-size:10px;
		margin:0px 0px 0px 10px;

	}

		input[type="button"]{
		width:150px;
		height:40px;
		margin-right:10px;
		margin-top:30px;
		border-radius:5px;
		font-size:15px;
		color:#FFFFFF;
		cursor:pointer;
	}
	
		input[type="button"]:nth-child(1){
		background:#696AAD;
	}
	input[type="button"]:nth-child(2){
		color:#000000;
	}
	.invalid{color:red;}
	valid{color:green;}
	
</style>
</head>
<body>
		<div id = "titlename">회원정보확인</div>
		<div id="userInfo">
			<form action="userinfoUpdate" method="post">
			<input type="hidden" name="user_pw" value="${loginInfo.user_pw}"/>
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="user_id" id="user_id" value="${loginInfo.user_id}" readonly="readonly"/></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="user_name" class="chk" value = "${loginInfo.user_name}"/><span id="namemsg"></span></td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td><input type="text" name="user_tel" class="chk" value = "${loginInfo.user_tel}"/><span id="telmsg"></span></td>
				</tr>
				<tr>
					<th>비밀번호</th>
						<td><input type="password" name="new_pw" class="chk"/><span id="pwmsg"></span></td>
				</tr>
				<tr>
					<th></th>
					<td><span id="pwcond">*8~16자 이내로 영문 대/소문자와 숫자를 포함하여 입력해주세요</span><br/>
					<span id="pwcond">*비밀번호 변경 시에만 입력해주세요</span></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="new_pwchk" class="chk" /><span id="pwchkmsg"></span></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" value="${loginInfo.user_birth }" id="user_birth" readonly="readonly"/></td> 
				</tr>
				<tr>
					<th style="border-bottom:1px solid black;">성별</th>
					<td style="border-bottom:1px solid black;"><label><input type="radio" name="user_gender" value="남" ${loginInfo.user_gender eq "남" ? 'checked':'' }/>&nbsp;&nbsp;남</label>
					<label><input type="radio" name="user_gender" value="여" ${loginInfo.user_gender eq "여" ? 'checked':'' } />&nbsp;&nbsp;여</label></td>
				</tr>
			</table>
			<div id="btn-class">
				<input type="button" value="확인" onclick="checkedinfo()" />	
				<input type="button" value="취소" onclick="canceled()"/>		
			</div>
		</form>
		</div>
		<script>
			function checkedinfo(){
				//전화번호, 이름, 비밀번호, 비밀번호 확인 검증
				if(!item_check($('[name=new_pw]'))) 		return;
				if(!item_check($('[name=new_pwchk]')))		return;
				if(!item_check($('[name=user_name]')))		return;
				if(!item_check($('[name=user_tel]'))) 		return;
				alert("회원정보가 수정되었습니다!");
				$('form').submit();
				
			}
			

			function item_check(item){
				var data = join.tag_status(item);
				if(data.code == 'invalid') {
					item.siblings('span').text(data.desc).removeClass().addClass(data.code);
					item.focus();
					return false;
				}
				return true;
			}

			
			$('.chk').on('keyup', function (e) {
				//id 입력 후 enter를 누르면 아이디 중복확인 버튼 실행 
				var data = join.tag_status($(this)); //입력하고 있는 tag의 값을 보낸 후 결과값 반환
				$(this).siblings('span').text(data.desc).removeClass().addClass(data.code);
			});
			
			function canceled(){
					alert("변경이 취소되었습니다.");
					location="userinfo.ur";
			}
		
		</script>
</body>
</html>