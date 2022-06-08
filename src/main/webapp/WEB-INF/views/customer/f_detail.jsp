<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<style>

a.btn-empty {
	background: #fff;
	color: #696aad;
	text-align: center;
	padding: 3px 10px;
	border: 1px solid #696aad;
	border-radius: 1px;
	box-shadow: 1px 1px 1px;
}

table{margin-top:30px; margin-bottom: 20px;}

p{font-size:30px; margin-top:100px; font-weight: bold;}
</style>
</head>
<body>
<p>Q&A</p>
<table>
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
				<a href="download.cu?id=${vo.id}"><i class="fa-solid fa-download"></i></a>
			</c:if>
		</td>
	</tr>	
</table>
<div>
	<a class='btn-empty' href='list.cu?curPage=${page.curPage }&serch=${page.search}&keyword=${page.keyword }'>목록으로</a>
	<a class='btn-empty' href='modify.cu?id=${vo.id}'>수정</a>
	<a class='btn-empty' onclick="if(confirm('정말 삭제하시겠습니까?')){href='delete.cu?id=${vo.id}'}">삭제</a>
	
	<!-- 로그인되어 있는 경우에만 답글 쓰기 가능 -->
	<c:if test="${ ! empty loginInfo }">
	<a class='btn-empty' href='reply.cu?id=${vo.id }'>답글쓰기</a>
	</c:if>	
</div>
</body>
</html>