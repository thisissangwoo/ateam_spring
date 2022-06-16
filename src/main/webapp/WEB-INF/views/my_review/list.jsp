<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 100%; height: 60px; padding: 20px; background-color: #929292; text-align: left;">
		<h3 style="font-size: 25px; font-weight: bold; text-align: left; color: white;">리뷰 내역</h3>
	</div>
	
	<div style="background-color: white; height: 800px; margin: 1%; max-height: 800px; padding: 10px;">
		<h3 style="font-weight: bold; font-size: 20px; text-align: left; margin: 20px;">리뷰 리스트</h3>							
		
		<table style="width: 100%;">
			<tr>
				<td style="width: 300px;">제품명</td>
				<td style="width: 150px;">리뷰제목</td>
				<td>리뷰내용</td>
				<td style="width: 150px;">작성자</td>
				<td style="width: 150px;">작성 일자</td>
			</tr>		
			<c:forEach items="${page.list }" var="vo">
				<tr>
					<td style="width: 300px;">아나포 스마트 약통 AnaFor SmartBOX</td>
					<td style="width: 150px;">${vo.rev_title }</td>
					<td><a href="reviewDetail.rev?id=${vo.rev_id }">${vo.rev_content }</a></td>
					<td style="width: 150px;">${vo.user_id }</td>
					<td style="width: 150px;">
						<fmt:parseDate value="${vo.rev_date }" var="date" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${date }" pattern="YY-MM-dd" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	



</body>
</html>