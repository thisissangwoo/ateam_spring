<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	#wrap{width:100%;height:auto}
	#header{width:100%;height:372px;background: url("imgs/notice.png") center no-repeat; position:relative; }
	#header p{position:absolute; right:370px; top:150px; line-height: 80px; font-size: 70px;}
	table{margin-bottom: 100px;}
	h3{margin-top: 100px; margin-left:200px; text-align: left; font-size: 1.5rem; }
</style>
</head>
<body>
<form action="list.no" method="post">
	<input type="hidden" name="curPage" value="1" />
	<div id="wrap">
		<div id="header">
			<p><b>아나포 공지사항입니다</b></p>
		</div>
	</div>
</form>
<table>
	<h3>공지사항</h3>
	<tr>
		<th class="w-px70">NO</th>
		<th>제목</th>
		<th class="w-px100">글쓴이</th>
		<th class="w-px100">날짜</th>
		<th class="w-px100">조회수</th>
	</tr>
	<c:forEach items="${list }" var="vo">
      <tr>
		<td>${vo.no }</td>
		<td>
			<a href='detail.no?id=${vo.id }'>${vo.title }</a>			
		</td>
		<td>${vo.name}</td>
		<td>${vo.writedate}</td>
		<td>${vo.readcnt}</td>
      </tr>
	</c:forEach>
</table>
</body>
</html>