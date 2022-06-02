<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- <link rel='stylesheet' type='text/css' href="resources/css/common.css"> -->
<link rel='stylesheet' type='text/css' href="css/common.css?v=<%=new Date().getTime() %>">

<!-- jQuery 라이브러리 CDN 방식 연결 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery 라이브러리 다운로드한 파일 연결 -->
<!-- <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script> -->
<style>

header {
	background-color: #696aad;
	
	padding: 10px 10px; 
	text-align: left;
	height: 40px;
}

header ul, header ul li {

	display: inline;
}



header .category {
	font-size: 18px;
	 
}

header .category ul li a {
	
	color: #fff;
}

#logo {
	font-weight: bold;
	font-size: 30px;
	
}



header .category ul li:not(:first-child) { /* 첫번째 li만 빼고 지정 */
	padding-left: 30px;
	
}

header .category ul li a:hover, header .category ul li a.active {
	font-weight: bold;
	color : #acafcf;
}



</style>
<header style="">
	<div class="category" style='margin-left: 100px; width: 1200px;' >
		<!-- logo -->
		<div style='position: absolute;left: 0; top: 5px; margin-left: 100px' >
			<ul>
				<li><a href='<c:url value="/" />' id="logo">AnaFor</a></li>
			</ul>	
		</div>
		
		<!-- menu -->
		<div style='position: absolute;right: 0; top: 15px; margin-right: 500px;'>
			<ul>
				<li><a href='box.pr'  ${category eq 'pr' ? 'class="active"' : '' }>제품소개</a></li>		
				<li><a href='list.cu' ${category eq 'cu' ? 'class="active"' : '' }>고객센터</a></li>		
				<li><a href='list.no' ${category eq 'no' ? 'class="active"' : '' }>공지사항</a></li>		
			</ul>	
		</div>
		
		<!-- login -->
 		<div style='position: absolute;right: 0; top: 15px; margin-right: 100px;'>
			<!-- 로그인을 하지 않은 경우 -->
			<c:if test="${ empty loginInfo }">
				<ul>
					<li>

						<a href='userLogin' style="margin-right: 20px;">로그인</a>
						<a href='userJoin'>회원가입</a>

					</li>			
				</ul>
			</c:if>
			
			<!-- 로그인한 경우 -->
			<c:if test="${ !empty loginInfo }">
				<ul>
					<li>
						<strong>${loginInfo.user_name }</strong> 님
					</li>
					<li>			
						<a href='logout'>로그아웃</a>
					</li>
				</ul>
			</c:if>
			
		</div>
		
	</div>
</header>












