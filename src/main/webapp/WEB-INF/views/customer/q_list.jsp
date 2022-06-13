<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>

#wrap {
	width: 100%;
	height: auto
}

#top_img {
	width: 1903px;
	height: 372px;
	background: url("imgs/qna.png") center no-repeat;
	position: relative;
	margin: 0 auto;
}

#top_img .text_box {
	position: absolute;
	left: 150px;
	top: 100px;
}

#top_img .text_box p {
	line-height: 80px;
	font-size: 70px;
	color: #ffffff;
	text-align: left
}

table {
	margin-bottom: 20px;
}

#list-top{
	width: 1500px;
	display: block;
	margin: 0 auto;
	padding-left:5px;
	padding-right:220px;
}

#list-content{
	margin: 0 auto;
	display: block;
}

a.btn-empty {
	width:70px;
	background: #fff;
	color: #929292;
	text-align: center;
	padding: 3px 10px;
	margin-left: 5px;
	border: 1px solid #b0b0b0;
}

input {
	height: 30px;
	margin-left: 5px;
	font-size: 15px;
	border: 1px solid #b0b0b0;
}

select {
	height: 30px;
	border: 1px solid #b0b0b0;
	padding: 0 5px;
	cursor: pointer;
}

#menu_form {
	width:218px;
	height: 100px; 
	margin: auto; 
	padding-top: 30px;
}

#wrap #menu {
	margin:0 auto; 
	height: 50px; 
	cursor: pointer; 
} 

#menu ul {
	oveflow: hidden;
}

#menu ul li {
	float: left;
}

#menu ul li a {
	font-size: 30px;
	display: block;
	padding: 10px 20px;
	border: 1px solid #929292;
}

#menu ul li a:hover {
	background-color: #b0b0b0;
	color: white;
}

#menu ul li:nth-child(2) a {
	border-left: 0px;
	background-color : #929292;
	color: white;	
}


</style>
</head>
<body>
	<form id="wrap" action="list.cu" method="post">
		<input type="hidden" name="curPage" value="1" />
		<div id="top_img">
			<div class="text_box">
				<p>
					<b>아나포에서 여러분의<br>소리를 듣습니다
					</b>
				</p>
			</div>
		</div>
		<div id="menu_form">
			<div id="menu">
				<ul>	
					<li><a href="f_list.cu">FAQ</a></li>
					<li><a href="list.cu">Q&A</a></li>
				</ul>
			</div>
		</div>
		<div id='list-top'>
			<div>
				<!-- 항목별 검색 처리 부분 -->
				<ul>
					<tr>
						<select name='search' class='w-px90'>
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
						<input type="text" name='keyword' value="${page.keyword }"
							class='w-px300' />
					</tr>
					<!-- 검색 버튼 생성 -->
					<tr>
						<a class='btn-empty' onclick="$('form').submit()">검색</a>
					</tr>
				</ul>

 				<ul>
<%-- 					<!-- 관리자로 로그인된 경우만 글쓰기 가능 -->
					<!-- 로그인 시 정보를 담고 있는 session.setAttribute("loginInfo", vo);
					 을 통해 admin 값을 가져와 비교 -->
					<!-- 로그인한 경우 -->
					<c:if test="${ !empty loginInfo }">
						<li><a class='btn-empty' href='new.cu'>글쓰기</a></li>
					</c:if> --%>
				</ul>
			</div>
		</div>
	</form>
	<div id="list-content">
		<table>
			<tr>
				<th class="w-px70">NO</th>
				<th>제목</th>
				<th class="w-px100">작성자</th>
				<th class="w-px120">작성일자</th>
				<th class="w-px100">조회수</th>
			</tr>
			<c:forEach items="${page.list }" var="vo">
				<tr>
					<td>${vo.no }</td>
					<td class='left'><c:forEach begin="1" end="${vo.indent }"
							var="i">
						${i eq vo.indent ? "<img src='imgs/re.gif' />" : "&nbsp;&nbsp;" }
					</c:forEach> <a href='detail.cu?id=${vo.id }'>${vo.title }</a></td>
					<td>${vo.name}</td>
					<td>${vo.writedate}</td>
					<td>${vo.readcnt}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/include/page.jsp" />
		<!-- jsp 표준 include를 사용하여 설정 -->
	</div>
</body>
</html>