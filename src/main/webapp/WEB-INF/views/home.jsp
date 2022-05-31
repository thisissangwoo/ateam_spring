<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<style>
.heroA{
	width: 100%;
	height: 400px;
	background-color: #696aad;
	padding: 20px 40px;
	
}	

.content1{
	font-style: normal;
	font-weight: 400;
	font-size: 50px;
	line-height: 40px;
	/* identical to box height, or 143% */
	text-align: left;
	letter-spacing: -0.05em;
	display: inline;
	color: #FFFFFF;
	
	
}

.line {
	
	
	border: 1px solid #FFFFFF;
	width: 210px;
	
}

.content2{
	
	
	font-family: 'Inter';
	font-style: normal;
	font-weight: 400;
	font-size: 16px;
	line-height: 24px;
	display: flex;
	align-items: center;
	text-align: center;
	letter-spacing: -0.02em;
	
	color: #FFFFFF;

}
	
	
	
	
</style>

<html>

<head>
	<title>Home</title>
</head>
<body>
	<div class="heroA">
		<div class="content1" style="margin-bottom: 5px;">나는 오늘 &nbsp;<strong>아나포</strong><!-- <hr class="line" /> --></div>
		
		<div class="content2" style="margin-bottom: 5px;">병원/약국 찾기부터 모바일 상담/계획 관리까지</div>
	</div>
</body>
</html>
