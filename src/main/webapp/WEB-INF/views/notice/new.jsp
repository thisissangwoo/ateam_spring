<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 공지글</title>
<script type="text/javascript" src="js/file_check.js"></script>
</head>
<body>
<h3>신규 공지글</h3>
<form action="insert.no" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<th class='w-px120'>제목</th>
			<td>
				<input type="text" name="title" title="제목" class="chk"/>
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea name="content" title="내용" class="chk"></textarea>
				<!-- textarea는 />닫으면안됨 -->
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td class="left"> 
				<label> 
					<a><img src='imgs/select.png' class="file-img" /></a> 
					<input type="file" name="file" id="attach-file"/> 
				</label> 
				<span id="file-name"></span>
				<!-- 이미지 파일인 경우 미리보기 적용 -->
				<span id="preview"></span>
				<a id='delete-file'><i class="fa-solid fa-circle-minus"></i></a>
				</td>
		</tr>
	</table>
</form>
<div class='btnSet'>
	<a class='btn-fill' onclick="if( emptyCheck() ){ $('form').submit()}">저장하기</a>
	<a class='btn-empty' href="list.no">취소</a>
</div>
</body>
</html>
