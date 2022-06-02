<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>
	#wrap{width:100%; height:auto}
	#top_img{width:1920px; height:372px; background: url("imgs/faq.png") center no-repeat; position:relative; margin: 0 auto;}
	#top_img .text_box{position:absolute; left:150px; top:100px; }
	#top_img .text_box p{line-height: 80px; font-size:70px; color:#929292; text-align:left}
</style>
</head>
<body>
<form id="wrap" action="list.cu" method="post">
	<input type="hidden" name="curPage" value="1" />
	<div id="top_img">
		<div class="text_box">
			<p><b>아나포에서 여러분의<br>소리를 듣습니다</b></p>
		</div>
	</div>
	<div id='list-top'>
		<ul>
			<!-- 관리자로 로그인된 경우만 글쓰기 가능 -->
			<!-- 로그인 시 정보를 담고 있는 session.setAttribute("loginInfo", vo);
				 을 통해 admin 값을 가져와 비교 -->
			<c:if test="${loginInfo.admin eq 'Y' }">	 
				<li><a href='new.cu'>글쓰기</a></li>
			</c:if>
		</ul>	
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
				<a href='detail.cu?id=${vo.id }'>${vo.title }</a>			
			</td>
			<td>${vo.name}</td>
			<td>${vo.writedate}</td>
			<td>${vo.readcnt}</td>
	      </tr>
		</c:forEach>
	</table>
</form>
</body>
</html>