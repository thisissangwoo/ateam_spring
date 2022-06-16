<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="review_update.rev" method="post">
		<input type="hidden" name="rev_id" value="${vo.rev_id }"/>
		<div style="background-color:#929292; width: 100%; height: 60px; padding: 20px;">
			<h3 style="font-size: 25px; font-weight: bold; text-align: left; color: white;">리뷰 수정 화면</h3>
		</div>
	
		<div style="margin: 30px; background-color: white; width: 96.5%; height: 500px; padding: 20px;">
		
			<div style="text-align: left; width: 100%; height: 80px;">
				<span style="line-height: 80px; font-size: 30px;">
					<c:choose>
						<c:when test="${vo.rev_grade eq 1 }">⭐☆☆☆☆</c:when>
						<c:when test="${vo.rev_grade eq 2 }">⭐⭐☆☆☆</c:when>
						<c:when test="${vo.rev_grade eq 3 }">⭐⭐⭐☆☆</c:when>
						<c:when test="${vo.rev_grade eq 4 }">⭐⭐⭐⭐☆</c:when>
						<c:when test="${vo.rev_grade eq 5 }">⭐⭐⭐⭐⭐</c:when>
					</c:choose>
				</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="line-height: 80px; font-size: 30px;">${vo.user_id }</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<span style="line-height: 80px; font-size: 30px;">
					<fmt:parseDate value="${vo.rev_date }" var="date" pattern="yyyy-MM-dd HH:mm:ss"/>
					<fmt:formatDate value="${date }" pattern="YY-MM-dd" />
				</span>
				
			</div>
			
			<div style="border-bottom: 1px solid; height: 1px; margin-bottom: 20px; margin-right: 20px;"></div>		
			
			<input type="text" value="${vo.rev_title }" name="rev_title"  
				 style="height: 30px; font-size: 20px; line-height: 30px; text-align: left;" />
		
			<div style="border-bottom: 1px solid; height: 1px; margin-top: 20px; margin-right: 20px; margin-bottom: 20px;"></div>	
		
			<input type="text" value="${vo.rev_content }"  name="rev_content"
				style="text-align: left; height: 500px; border: 1px solid; margin-bottom: 20px; padding: 20px; font-size: 15px; width: 98.5%; margin-right: 20px; font-size: 15px;" />
			
			
			<div>
				<a class="btn-fill" href="review_update.rev?id=${vo.rev_id }">저장하기</a>&nbsp;&nbsp;&nbsp;	
				<a class="btn-empty" href="reviewDelete.rev?id=${vo.rev_id }">삭제하기</a>
			</div>
	
		</div>
	</form>	
</body>
</html>