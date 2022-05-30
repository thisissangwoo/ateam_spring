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
	background-color: #606aad;
	

}

header ul, header ul li {
	margin: 0;
	padding: 0;
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
	color : #0000cd;
}

</style>
<header style="border-bottom: 1px solid #ccc; padding: 10px 10px; text-align: left;">
	<div class="category" style='margin-left: 100px;' >
	
		<ul>
			<li><a href='<c:url value="/" />' id="logo">AnaFor</a></li>
		</ul>	
		<ul>
<!-- 		<li><img src="resources/images/clcd_logo.png" /></li> -->
			
			<li><a href='list.pr' ${category eq 'pr' ? "class='active'" : '' }>제품소개</a></li>		
			<li><a href='list.cu' ${category eq 'cu' ? 'class="active"' : '' }>고객센터</a></li>		
			<li><a href='list.no' ${category eq 'no' ? 'class="active"' : '' }>공지사항</a></li>		
		</ul>	
		
		<div style='position: absolute;right: 0; top: 15px; margin-right: 200px;'>
			<!-- 로그인을 하지 않은 경우 -->
			<c:if test="${ empty loginInfo }">
				<ul>
					<li>
						<a href='login'>로그인</a>
						<a href='user'>회원가입</a>
					</li>			
				</ul>
			</c:if>
			
			<!-- 로그인한 경우 -->
			<c:if test="${ !empty loginInfo }">
				<ul>
					<li>
						<strong>${loginInfo.name }</strong> 님
					</li>
					<li>			
						<a href='logout'>로그아웃</a>
					</li>
				</ul>
			</c:if>
			
		</div>
		
	</div>
</header>












