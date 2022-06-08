<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='js/file_check.js'></script>
<style>
input {
	height: 22px;
	padding: 3px 5px;
	font-size: 15px;
}
 
textarea {
	font-size: 15px; padding:3px 5px;  height: 250px; resize: none;
}
input[name=title], textarea[name=content] { width: calc(100% - 24px) }
input[type=file], #delete-file { display: none; }


.btnSet { margin-top: 20px; }
a.btn-fill, a.btn-empty {
	text-align: center;
	padding: 3px 10px;
	border: 1px solid #696aad;
	border-radius: 1px;
	box-shadow: 1px 1px 2px;
	       오른쪽, 아래쪽, 번짐 정도
}
a.btn-fill {
	background: #696aad;
	color: #fff;	
}
a.btn-empty {
	background: #fff;
	color: #696aad;
}
a.btn-fill-s {
	font-size: 13px; font-weight: bold;
	padding: 1px 10px;
	border: 1px solid #c4dafc;
	border-radius: 3px;
	box-shadow: 2px 2px 2px #022d72;
	background : #b1cdfa;
	color: #0000cd;	
}

table{margin-top:30px; margin-bottom: 20px;}

p{font-size:30px; margin-top:100px; font-weight: bold;}
</style>
</head>
<body>
<p>Q&A 답글 작성</p>
<!-- 파일을 첨부하여 submit() 할 경우
	1. method 는 post 로 지정
	2. form에 반드시 enctype='multipart/form-data' 지정
 -->
<form action="reply_insert.cu" method="post" enctype="multipart/form-data">
	<!-- 답글에 필요한 root, step, indent 값을 hidden으로 전달 -->
	<!-- DB에서 조회하여 가져온 값(vo)을 value에 담아서 전달 -->
	<input type="hidden" name='root' value="${vo.root }">
	<input type="hidden" name='step' value="${vo.step }">
	<input type="hidden" name='indent' value="${vo.indent }">

	<table>
		<tr>
			<th class='w-px120'>제목</th>
			<td>
				<input type="text" name="title" title='제목' class='chk' />
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea name='content' title='내용' class='chk' ></textarea>
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td class='left'>
				<label>
				<a><img src='imgs/select.png' class='file-img' /></a>
				<input type="file" name="file" id='attach-file' />
				</label>
				<span id='file-name'></span>
				<a id='delete-file'><i class="fa-solid fa-circle-minus"></i></a>
			</td>
		</tr>
	</table>
	
</form>
<div class='btnSet'>
	<a class='btn-fill' onclick=" if( emptyCheck() ) $('form').submit()">저장하기</a>
	<a class='btn-empty' href='list.cu'>취소</a>
</div>
</body>
</html>







