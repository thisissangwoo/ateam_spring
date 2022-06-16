<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문자 목록</title>
</head>
<body>
<div style="background-color:#929292; width: 100%; height: 60px; padding: 20px;">
	<h3 style="font-size: 25px; font-weight: bold; text-align: left; color: white;">shop 관리</h3>
</div>

	<div style=" background-color: white; height: 100%; margin: 1%; max-height: 850px; padding: 10px;">
		<h3 style="font-weight: bold; font-size: 22px; margin-top: 15px;">주문자 목록</h3>

		<table style="width: 100%; top: 20px;">
			<tr>
				<td>제품명</td>
				<td class="w-px400">주문일</td>
				<td class="w-px140">금액</td>
				<td class="w-px140">수량</td>
				<td class="w-px140">진행현황</td>
				<td class="w-px230">기타</td>
			</tr>
			
			<c:forEach items="${list }" var="vo">
				<tr>
					<td>아나포 스마트 약통 AnaFor Smart Box IoT 알약 / 영양제 박스</td>
					<td>${vo.order_date }</td>
					<td ><fmt:formatNumber value="${vo.price }" pattern="#,##0원" /></td>
					<td>${vo.cnt }</td>
					<td>
						<c:choose>
							<c:when test="${vo.code eq 'so1' }">결제완료</c:when>
							<c:when test="${vo.code eq 'so2' }">상품준비중</c:when>
							<c:when test="${vo.code eq 'so3' }">배송시작</c:when>
							<c:when test="${vo.code eq 'so4' }">배송중</c:when>
							<c:when test="${vo.code eq 'so5' }">배송완료</c:when>
						</c:choose>
					</td>
					<td>
						<a class="btn-fill" href="shopDetail.my?id=${vo.id }" style="margin: 5px;">조회</a>
						<a class="btn-fill" href="shopDetail.sp?id=${vo.id }" style="margin: 5px;">리뷰</a>
						<a class="btn-fill" href="shopDetail.sp?id=${vo.id }">문의</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>