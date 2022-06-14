<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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




	<div style=" background-color: white; height: auto; margin: 1%; max-height: 45%; padding: 10px;">
		<h3 style="font-weight: bold; font-size: 20px; text-align: left;">주문 리스트</h3>
		<table style="width: 100%;">
			<tr>
				<td style="width: 100px;">이름</td>
				<td style="width: 500px;">주소</td>
				<td>연락처</td>
				<td>주문일</td>
				<td>제품명</td>
				<td>금액</td>
				<td>수량</td>
				<td>진행사항</td>
			</tr>
			
			
			<tr>
				<td style="width: 50px;">김상우우</td>
				<td style="width: 300px;">광주광역시 서구 농성동...</td>
				<td style="width: 150px;">010-1234-1234</td>
				<td>2022-12-12</td>
				<td>아나포 BOX1</td>
				<td>300,000</td>
				<td>10</td>
				<td>배송준비중</td>
			</tr>
		</table>
		
		<div>
			<form action="box.pr" method="post">
				<input type="hidden" name="curPage" value="1" />
				<jsp:include page="/WEB-INF/views/include/page.jsp" />
			</form>
		
		</div>
	
	
	
	</div>
	
	
	
	
	
	
	<div style=" background-color: white; height: auto; margin: 1%; max-height: 45%; padding: 10px;">
		<h3 style="font-weight: bold; font-size: 20px; text-align: left;">리뷰 리스트</h3>
	
		<table style="width: 100%;">
			<tr>
				<td style="width: 100px;">이름</td>
				<td>리뷰제목</td>
				<td style="width: 700px;">리뷰내용</td>
				<td style="width: 200px;">별점</td>
				<td style="width: 200px;">작성일</td>
			</tr>
			
			
			<c:forEach items="${page.list }" var="vo">

				<div style="height: 200px; text-align: left;">
					<span style="height: 20px; font-size: 20px; line-height: 20px;">${vo.user_id }</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>${vo.rev_date }</span>
					<div style="height: 30px; font-size: 20px; line-height: 30px;">
						<c:choose>
							<c:when test="${vo.rev_grade eq 1 }">⭐☆☆☆☆</c:when>
							<c:when test="${vo.rev_grade eq 2 }">⭐⭐☆☆☆</c:when>
							<c:when test="${vo.rev_grade eq 3 }">⭐⭐⭐☆☆</c:when>
							<c:when test="${vo.rev_grade eq 4 }">⭐⭐⭐⭐☆</c:when>
							<c:when test="${vo.rev_grade eq 5 }">⭐⭐⭐⭐⭐</c:when>
						</c:choose>
					</div>
					<div style="height: 20px; font-size: 20px; line-height: 20px;">판매자 : AnaFor</div>
					<div
						style="height: 100px; margin-top: 10px; border-bottom: 1px solid; margin-right: 20px;">
						${vo.rev_content }
					</div>
				</div>
			</c:forEach>
			
			<c:forEach items="${page.list }" var="vo">
				<tr>
					<td style="width: 50px;">${vo.user_id }</td>
					<td style="width: 300px;">${vo.rev_title }</td>
					<td style="width: 150px;">${vo.rev_content }</td>
					<td>
						<c:choose>
							<c:when test="${vo.rev_grade eq 1 }">⭐☆☆☆☆</c:when>
							<c:when test="${vo.rev_grade eq 2 }">⭐⭐☆☆☆</c:when>
							<c:when test="${vo.rev_grade eq 3 }">⭐⭐⭐☆☆</c:when>
							<c:when test="${vo.rev_grade eq 4 }">⭐⭐⭐⭐☆</c:when>
							<c:when test="${vo.rev_grade eq 5 }">⭐⭐⭐⭐⭐</c:when>
						</c:choose>
					</td>
					<td>${vo.rev_date }</td>
				</tr>
			</c:forEach>
		</table>
	
		<div>
			<form action="box.pr" method="post">
				<input type="hidden" name="curPage" value="1" />
				<jsp:include page="/WEB-INF/views/include/page.jsp" />
			</form>
		
		</div>	
	
	
	
	
	
	</div>



</body>
</html>