<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/join-check.js"></script>
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
		width:500px;
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

	#useremail input[type=text], #usercode input[type=text]{
		width:400px;
	}
	
	#usergender #selectbox{
		width:500px;
		height:50px;
		margin:10px auto 0px auto;
		border-radius:10px;
		border:1px solid #ccc;
		padding: 5px 7px 5px 12px;
	}
	
	#usergender select{
		width:470px;
		height:38px;
	}
	
	#idmsg, #codemsg,#pwmsg,#pwmsg2,#namemsg,#telmsg,#genmsg,#birthmsg{
		width:500px;
		text-align:left;
		display:inline-block;
		font-size:13px;
		font-weight:500;
		padding:5px;
	}
	#btn-join{
		display:inline-block;
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
		line-height:45px;
	}
	#joinbutton{
		width:100%;
		height:170px;
		margin:15px 0px 0px 0px;
	}
	
	.visible{
		visibility: visible;
	}
	.hidden{
		visibility: hidden;
	}
	
	.valid{color:green;}
	.invalid{color:red;}
	
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
			<input type="text" name="id" class="chk" placeholder="이메일을 입력하세요 *" maxlength="100"/>
			<input type="button" id="btn-email" onclick="checkEmail()" value="중복확인"/><br/>
			<span id="idmsg">예)happy@anafor.com</span>
		</div>
		<div id="usercode">
			<input type="text" name="code" class="chk"  placeholder="인증코드를 입력하세요 *"/>
			<input type="button" id="btn-code" onclick="sendEmailCode()" value="이메일 인증"/><br/>
			<span id="codemsg">이메일 인증코드를 받고 입력하세요</span>
		</div>
		<div id="userpw">
			<input type="password" name="pw" class="chk" placeholder="비밀번호 *"/><br/>
			<span id="pwmsg">8~16자 이내로 영문 대/소문자와 숫자를 포함하여 입력해주세요</span>
		</div>
		<div id="userpwchk">
			<input type="password" name="pwchk" class="chk"  placeholder="비밀번호 확인*"/><br/>
			<span id="pwmsg2"></span>
		</div>
		<div id="username">
			<input type="text" name="name" class="chk"  placeholder="이름 *"/><br/>
			<span id="namemsg"></span>
		</div>
		
		<div id="userbirth">
			<input type="text" name="birth" class="chk" placeholder="생년월일을 입력하세요 *"/><br/>
			<span id="birthmsg">예)19990101</span>
		</div>
		<div id="userphone">
			<input type="text" name="tel" placeholder="휴대폰 번호 *"/><br/>
			<span id="telmsg">'-'없이 번호만 입력 예)01012345678</span>
		</div>
		<div id="usergender">
			<div id="selectbox">
				<select name="gender" >
					<option value="">성별 *</option>
					<option value="남">남</option>
					<option value="여">여</option>
				</select>
			</div>
			<span id="genmsg"></span>
		</div>
		<div id="joinbutton">
			<a id="btn-join" onclick="go_join()">가입하기</a>
		</div>
	</div>	
</form> 

<script>
function go_join(){

		//이메일 중복확인 검사
		if($('[name=id]').hasClass('checked')){
			//중복확인 검사를 했을 경우
			if($('[name=id]').siblings('span').hasClass('invalid')){
				$('[name=id]').siblings('span').text(join.id.unUsable.desc);
				$('[name=id]').focus();
				return;
			}
		}else{
			//중복확인을 안 했을 경우
			if(!item_check($('[name=id]'))) return;   
			else{
				$('[name=id]').siblings('span').text(join.id.valid.desc); // 사용할 수 있는 id여도 중복확인을 안 했을 경우
				$('[name=id]').focus();
				return;
			}
		}
		//비밀번호 , 비밀번호 확인, 이름 검증 필요
		if(!item_check($('[name=pw]')))	return;
		if(!item_check($('[name=pwchk]'))) return;
		if(!item_check($('[name=name]'))) return;
		if(!item_check($('[name=birth]'))) return;
		
		//성별 선택안했을때
		if($('[name=gender]').val()==''){
			$('#selectbox').css("border","2px solid #696AAD");
			$('#genmsg').text("성별을 선택해주세요").css("color","red");
			return;
		}else{
			$('#selectbox').css("border","1px solid #ccc");
			$('#genmsg').text("");
		}
		
		alert("회원가입이 완료되었습니다");
		return;
}//go_join


$('.chk').on('keyup', function (e) {
	//id 입력 후 enter를 누르면 아이디 중복확인 버튼 실행
	if($(this).attr('name') == 'id'){
		if(e.keyCode == 13){
			checkEmail();
		}
	} 
	var data = join.tag_status($(this)); //입력하고 있는 tag의 값을 보낸 후 결과값 반환
	$(this).siblings('span').text(data.desc).removeClass().addClass(data.code);
});

$('#selectbox').click(function(){
	$('#selectbox').css("border","2px solid #696AAD");
});


function item_check(item){
	var data = join.tag_status(item);
	if(data.code == 'invalid') {
		item.siblings('span').text(data.desc).removeClass().addClass(data.code);
		item.focus();
		return false;
	}
	return true;
}

//이메일 인증 코드 전송 함수
/* function sendEmailCode(){
	
	
	
}
 */


//이메일 중복 확인
function checkEmail(){
	
	var data = join.tag_status($('[name=id]'));
	if(data.code=="invalid"){
		$('[name=id]').siblings('span').text(data.desc);
		$('[name=id]').focus();
		return;
	}
		
	$.ajax({					//ajax 통신
		url: 'userEmailChk',
		data : {id:$('[name=id]').val()},
		success : function(response){
				var data = join.id_usable(response);
				$('[name=id]').siblings('span').text(data.desc).removeClass().addClass(data.code);
				$('[name=id]').addClass('checked');
		}, error : function(req,text){
			alert(text+' : '+req.status);
		}
	});//ajax

}//checkEmail()
</script>

</body>

</html>