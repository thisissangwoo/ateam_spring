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
	height:7%;
	margin:30px;
	padding:0px;
	border-radius: 5px;
	background-color: white;
}

#list-board{
	width:90%;
	height:80%;
	margin:30px;
	margin-top:15px;
	border-radius: 5px;
	background-color: white;
	padding-top: 10px;
}

#list-board ul{
	width:90%;
	margin-top: 30px;
	text-align: right;
}

#list-board table{
	width:80%;
	margin-top:30px;
	margin-bottom:30px;
	border-top: 1px solid #e0e0e0;
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
	<h3>컨텐츠 관리</h3>
</div>
<div id='list-top' >
	<div>
<%-- 		<ul>
			<li><span>카테고리</span></li>			
			<li>
				<select name="code_name" class='w-px160' onchange="$('form').submit()">
					<option value="all" ${dept_id eq 'all' ? 'selected' : '' }>전체</option>
					<c:forEach items="${depts }" var="vo">
<option ${dept_id ne 'all' and dept_id eq vo.department_id ? 'selected' : '' } value="${vo.department_id }" >${vo.department_name }</option>
					</c:forEach>
				</select>
			</li>
		</ul> --%>
	</div>
</div>
<form action="list.co" method="post">
<input type="hidden" name="curPage" value="1" />		
	<div id="list-board">
		<ul>
			<!-- 관리자로 로그인된 경우만 글쓰기 가능 -->
			<!-- 로그인 시 정보를 담고 있는 session.setAttribute("loginInfo", vo);
			 을 통해 admin 값을 가져와 비교 -->
			<!-- 로그인한 경우 -->
			<c:if test="${ !empty loginInfo }">
				<li><a class='btn-empty' href='new.co'>글쓰기</a></li>
			</c:if>
		</ul>
		<table>
			<tr>
				<th class="w-px70">NO</th>
				<th class="w-px80">카테고리</th>
				<th>제목</th>
				<th class="w-px100">작성자</th>
				<th class="w-px120">작성일자</th>
				<th class="w-px100">조회수</th>

			</tr>
			<c:forEach items="${page.list }" var="vo">
				<tr>
					<td>${vo.no }</td>
					<td>${vo.category}</td>
					<td class='left'>
						<c:forEach begin="1" end="${vo.indent }" var="i">			
							${i eq vo.indent ? "<img src='imgs/re.gif' />" : "&nbsp;&nbsp;" }  
						</c:forEach>
						<a href='detail.co?id=${vo.id }'>${vo.title }</a>			
					</td>
					<td>${vo.name}</td>
					<td>${vo.writedate}</td>
					<td>${vo.readcnt}</td>
				</tr>
			</c:forEach>
		</table>
	<div>
		<jsp:include page="/WEB-INF/views/include/page.jsp" />
		<!-- jsp 표준 include를 사용하여 설정 -->
	</div>
</div>
</form>	
</body>
</html>