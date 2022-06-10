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
		<form action="list.co" method="post">
			<div>
				<ul>		
					<li>
						<select name="notice_name" class='w-px160' onchange="$('form').submit()">
							<option value="all" ${code eq 'all' ? 'selected' : '' }>전체</option>
							<c:forEach items="${depts }" var="vo">
								<option ${dept_id ne 'all' and dept_id eq vo.department_id ? 'selected' : '' } value="${vo.department_id }" >${vo.department_name }</option>
							</c:forEach>
						</select>
					</li>
				</ul>
			
			</div>
		</form>
	</div>	
	<div id="list-board">
	
	</div>
	
	<div>
		<jsp:include page="/WEB-INF/views/include/page.jsp" />
		<!-- jsp 표준 include를 사용하여 설정 -->
	</div>
</body>
</html>