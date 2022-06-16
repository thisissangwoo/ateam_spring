<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠관리</title>
<style>
body{
	background-color: #E5E5E5;
}
#header {
	width:100%;
	height:60px;
	padding: 20px;
	background-color:#929292; 
}

#header h3{
	font-size: 25px;
	font-weight: bold;
	text-align: left;
	color: white;
}

#list-board{
	width:90%;
	height:85%;
	margin:30px;
	border-radius: 5px;
	background-color: white;
	padding-top: 20px;
}

table{
	width:80%;
	margin-top:30px;
	border-top: 1px solid #e0e0e0;
	margin-bottom: 30px;
}

#list-board p {
	font-size: 30px;
	margin-top: 20px;
	margin-bottom: 20px;
	font-weight: bold;
}

#list-board table tr:nth-child(3) td{
	height: 400px;
}

a.btn-empty {
	background: #D9D9D9;
	color: black;
	text-align: center;
	padding: 3px 10px;
	margin-left: 5px;
	border: 1px solid #b0b0b0;
}
</style>
</head>
<body>
	<div id="header">
		<h3>컨텐츠 관리 > ${vo.category}</h3>
	</div>
	<div id="list-board">
		<p>${vo.category}</p>
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
					<c:if test="${not empty vo.filename}">
						<!-- 첨부파일이 없지 않으면 아이콘 표시 -->
						<a href="download.co?id=${vo.id}"><i class="fa-solid fa-download"></i></a>
					</c:if>
				</td>
			</tr>
		</table>
		<div>
			<a class='btn-empty' href='list.co?curPage=${page.curPage }&serch=${page.search}&keyword=${page.keyword }'>목록으로</a>
			<a class='btn-empty' href='modify.co?id=${vo.id}'>수정</a> 
			<a class='btn-empty' onclick="if(confirm('정말 삭제하시겠습니까?')){href='delete.co?id=${vo.id}'}">삭제</a>
			<c:if test="${vo.code eq 'N03'}">
				<a class='btn-empty' href='reply.co?id=${vo.id }'>답글쓰기</a>
			</c:if>
		</div>
	</div>

</body>
</html>