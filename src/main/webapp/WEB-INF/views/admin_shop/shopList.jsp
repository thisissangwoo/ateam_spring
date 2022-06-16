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

	<div style=" background-color: white; height: 100%; margin: 1%; max-height: 850px; padding: 10px;">
		<h3 style="font-weight: bold; font-size: 20px; text-align: left;">주문 리스트</h3>
		<table style="width: 100%;">
			<tr>
				<td class="w-px80">이름</td>
				<td class="w-px400">주소</td>
				<td class="w-px160">연락처</td>
				<td class="w-px180">주문일</td>
				<td>제품명</td>
				<td class="w-px120">금액</td>
				<td class="w-px60">수량</td>
				<td class="w-px80">진행사항</td>
			</tr>
			
			<c:forEach items="${page1.list }" var="vo">
				<tr onclick="detail('${vo.id}')" style="cursor: pointer;" >
					<td>${vo.name }</td>
					<td class="left">${vo.addr }</td>
					<td>${vo.tel }</td>
					<td>${vo.order_date }</td>
					<td>아나포 스마트 약통 AnaFor Smart Box IoT 알약 / 영양제 박스</td>
					<td><fmt:formatNumber value="${vo.price }" pattern="#,##0원" /></td>
					<td>${vo.cnt }</td>
					<td>${vo.code_name }</td>
				</tr>
			</c:forEach>
		
		</table>
		
		<div>
			<form action="shopList.sp" method="post">
				<input type="hidden" name="curPage" value="1" />
				<jsp:include page="/WEB-INF/views/include/page1.jsp" />
			</form>
		</div>
	</div>


	
<script type="text/javascript">
function detail(id) {
	location="shopDetail.sp?id=" + id 
}

</script>
</body>
</html>