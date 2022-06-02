<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>
	#wrap{width:100%;height:auto}
	#header{width:100%;height:372px;background: url("imgs/faq.png") center no-repeat; position:relative; }
	#header p{position:absolute; left:150px; top:30px; line-height: 80px; font-size: 70px; color: #929292; text-align: left}
	table{margin-bottom: 100px;}
	h3{margin-top: 100px; margin-left:200px; text-align:left; font-size: 1.5rem; }
</style>
</head>
<body>
<form action="list.cu" method="post">
	<input type="hidden" name="curPage" value="1" />
	<div id="wrap">
		<div id="header">
			<p><b>아나포에서 여러분의<br>소리를 듣습니다</b></p>
		</div>
	</div>
</form>
<table>
	<h3>Q&A</h3>
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
		<td>
			<a href='detail.cu?id=${vo.id }'>${vo.title }</a>			
		</td>
		<td>${vo.name}</td>
		<td>${vo.writedate}</td>
		<td>${vo.readcnt}</td>
      </tr>
	</c:forEach>
</table>
</body>
</html>