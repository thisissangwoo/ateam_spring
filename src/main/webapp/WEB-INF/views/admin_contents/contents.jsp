<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

#list-top{
	width:90%;
	height:8%;
	margin:30px;
	padding:0px;
	border-radius: 5px;
	background-color: white;
}

#list-board{
	width:90%;
	height:75%;
	margin:30px;
	margin-top:15px;
	border-radius: 5px;
	background-color: white;
}
</style>
</head>
<body>
	<div id="header">
		<h3>컨텐츠 관리</h3>
	</div>
	<div id='list-top' >
		<!-- 항목별 검색 처리 부분 -->
		<ul>
			<tr>
				<select name="search" class="w-px100">
					<option value="all" ${page.search eq 'all' ? 'selected' : '' }>전체</option>
					<option value="title"
						${page.search eq 'title' ? 'selected' : '' }>제목</option>
					<option value="content"
						${page.search eq 'content' ? 'selected' : '' }>내용</option>
					<option value="writer"
						${page.search eq 'writer' ? 'selected' : '' }>작성자</option>
				</select>
			</tr>
			<!-- 검색 키워드를 입력할 input 태그  -->
			<tr>
				<input type="text" name="keyword" value="${page.keyword }" class="w-px500" />
			</tr>
			<!-- 검색 버튼 생성 -->
			<tr>
				<a class="btn-empty" onclick="$('form').submit()">검색</a>
			</tr>
		</ul>
	</div>	
	<div id="list-board">
	
	</div>
	
	<div>
		<jsp:include page="/WEB-INF/views/include/page.jsp" />
		<!-- jsp 표준 include를 사용하여 설정 -->
	</div>
</body>
</html>