<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrap{width:100%;height:auto}
	#header{width:100%;height:372px;background: url("imgs/notice.png") center no-repeat; position:relative; }
	#header p{position:absolute; right:550px; top:150px; line-height: 80px; font-size: 70px;}
	table{margin-bottom: 100px;}
	h3{margin-top: 100px; margin-left:200px; text-align: left; font-size: 1.5rem; }
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
<!-- 		<p><b>공지글 안내</b></p> -->
	</div>
</div>
<table>
	<h3>공지글 안내</h3>
	<tr>
		<th class="w-px120">제목</th>
		<td class="left" colspan="5">${vo.title }</td>
	</tr>
	<tr>
		<th>글쓴이</th>
		<td>${vo.name }</td>
		<th>날짜</th>
		<td>${vo.writedate }</td>
		<th>조회수</th>
		<td>${vo.readcnt }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td class="left" colspan="5">${fn:replace(vo.content,crlf,'<br>') }</td>
	</tr>
	<tr>
		<th>첨부파일</th>
		<td class="left" colspan="5">${vo.filename }
			<c:if test="${not empty vo.filename}"> <!-- 첨부파일이 없지 않으면 아이콘 표시 -->
				<a href="download.no?id=${vo.id}"><i class="fa-solid fa-download"></i></a>
			</c:if>
		</td>
	</tr>	
</table>
</body>
</html>