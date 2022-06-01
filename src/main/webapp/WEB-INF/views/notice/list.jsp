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
	#header p{margin-top:100px; margin-left:500px;	line-height: 300px; font-size: 70px; }
</style>
</head>
<body>
<form action="list.no" method="post">
	<input type="hidden" name="curPage" value="1" />
	<div id="wrap">
		<div id="header">
			<p>아나포 공지사항입니다</p>
		</div>
	</div>
</form>
<table>
	<tr>
		<th class="w-px70">NO</th>
		<th>제목</th>
		<th class="w-px100">글쓴이</th>
		<th class="w-px100">작성일자</th>
		<th class="w-px100">조회수</th>
	</tr>
	<c:forEach items="${list }" var="vo">
      <tr>
         <td>${vo.no }</td>
         <td>${vo.title}</td>
         <td>${vo.name}</td>
         <td>${vo.writedate}</td>
         <td>${vo.readcnt}</td>
      </tr>
	</c:forEach>
</table>
</body>
</html>