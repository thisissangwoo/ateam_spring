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
				<td class="w-px80">이름</td>
				<td>주소</td>
				<td class="w-px160">연락처</td>
				<td class="w-px160">주문일</td>
				<td class="w-px450">제품명</td>
				<td class="w-px100">금액</td>
				<td class="w-px60">수량</td>
				<td class="w-px80">진행상황</td>
			</tr>
			
			<c:forEach items="${page1.list }" var="vo">
				<tr>
					<td><a href="shopDetail.sp?id=${vo.id }">${vo.name }</a></td>
					<td class="left">${vo.addr }</td>
					<td>${vo.tel }</td>
					<td>${vo.order_date }</td>
					<td>아나포 스마트 약통 AnaFor Smart Box IoT 알약 / 영양제 박스</td>
					<td class='right'><fmt:formatNumber value="${vo.price }" pattern="#,##0원" /></td>
					<td>${vo.cnt }</td>
					<%-- <td>${vo.code_name }</td> --%>
					<td><select name="code" onchange="go_detail(this, ${vo.id })">
							<option value="so1" ${vo.code eq "so1" ? 'selected' : '' }>결제완료</option>
							<option value="so2" ${vo.code eq "so2" ? 'selected' : '' }>상품준비</option>
							<option value="so3" ${vo.code eq "so3" ? 'selected' : '' }>배송시작</option>
							<option value="so4" ${vo.code eq "so4" ? 'selected' : '' }>배송중</option>
							<option value="so5" ${vo.code eq "so5" ? 'selected' : '' }>배송완료</option>
					</select></td>
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
function go_detail(code, id) {
	
	$.ajax({	// 주문 진행 상황 변경을 위한 ajax 통신 설정
		url : "order_state_update.sp",
		data : {id:id, code:code.value},
		success : function (response) {	// success 는 통신이 잘 됐는지 안 됐는지 여부 판단
			if( response ){
				alert("진행상황 변경성공");
			}else {
				alert("진행상황 변경실패");				
			}//if
		}, error : function (req, text) {
			alert(text + " : " + req.status);
		}
	});

/* 	$('[name=id]').val(id);	
	$('form').attr('action', 'order_state_update.sp');
	$('form').submit(); */
}

</script>
</body>
</html>