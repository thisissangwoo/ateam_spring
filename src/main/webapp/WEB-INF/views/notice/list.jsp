<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	#wrap{width:100%; height:auto}
	#top_img{width:1920px; height:372px; background: url("imgs/notice.png") center no-repeat; position:relative; margin: 0 auto;}
	#top_img .text_box{position:absolute; right:380px; top:200px; }
	#top_img .text_box p{line-height: 80px; font-size:70px; color:black;}
	table{margin-top:30px; margin-bottom: 20px;}
</style>
</head>
<body>
	<input type="hidden" name="curPage" value="1" />
	<div id="top_img">
		<div class="text_box">
			<p><b>아나포 공지사항입니다</b></p>
		</div>
	</div>
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