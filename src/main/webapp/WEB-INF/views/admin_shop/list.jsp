<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="background-color:#929292; width: 100%; height: 60px; padding: 20px;">
	<h3 style="font-size: 25px; font-weight: bold; text-align: left; color: white;">shop 관리</h3>
</div>

	<div style=" background-color: white; height: 800px; margin: 1%; max-height: 800px; padding: 10px;">
		<h3 style="font-weight: bold; font-size: 20px; text-align: left; margin: 20px;">리뷰 리스트</h3>
	
		<table style="width: 100%;">
			<tr>
				<td style="width: 100px;">이름</td>
				<td>리뷰제목</td>
				<td style="width: 700px;">리뷰내용</td>
				<td style="width: 200px;">별점</td>
				<td style="width: 200px;">작성일</td>
			</tr>
			<c:forEach items="${page.list }" var="vo">
				<tr>
					<td style="width: 50px;">${vo.user_id }</td>
					<td style="width: 150px;">${vo.rev_title }</td>
					<td style="width: 500px;"><a href="reviewDetail.sp?id=${vo.rev_id }">${vo.rev_content }</a></td>
					<td>
						<c:choose>
							<c:when test="${vo.rev_grade eq 1 }">⭐☆☆☆☆</c:when>
							<c:when test="${vo.rev_grade eq 2 }">⭐⭐☆☆☆</c:when>
							<c:when test="${vo.rev_grade eq 3 }">⭐⭐⭐☆☆</c:when>
							<c:when test="${vo.rev_grade eq 4 }">⭐⭐⭐⭐☆</c:when>
							<c:when test="${vo.rev_grade eq 5 }">⭐⭐⭐⭐⭐</c:when>
						</c:choose>
					</td>
					<td>
						<fmt:parseDate value="${vo.rev_date }" var="date" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${date }" pattern="YY-MM-dd" />
					</td>
				</tr>
			</c:forEach>
		</table>
		</div>
		<div style="margin-bottom: -120px;">
			<form action="list.sp" method="post">
				<input type="hidden" name="curPage" value="1" />
				<jsp:include page="/WEB-INF/views/include/page.jsp" />
			</form>
		</div>	
	
</body>
</html>