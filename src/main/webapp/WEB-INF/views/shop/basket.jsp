<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap {
	width: 100%;
	/* height: auto; */
}

</style>
<script type="text/javascript">
let check = false;
function checkAll(checkAll){
    let checkboxes=document.getElementsByName("chk");
    console.log(checkboxes);
    checkboxes.forEach((checkbox)=>{
        console.log(checkbox    );
        checkbox.checked=checkAll.checked;
    })
}

</script>
</head>
<body>
<div id="wrap">
	<div style="min-height: 700px;">
		<div style="margin: 30px auto; height: 50px; width: 1160px;">
			<span style="float: left;">
				<img src="imgs/cart.png" style="width: 70px;; height: 70px;" >
				<span style="font-size: 30px; line-height: 50px; ">장바구니</span>
			</span>
			
			<%-- <c:if test="${ ! empty loginInfo }"> --%>
			<%-- </c:if> class="btn-empty" onclick="if(confirm('정말 삭제하시겠습니까?')){href='delete.pr?id=${vo.bk_id}'}" --%>
			
			
				<span style=" border: 1px solid; padding: 5px; float: right;">
					<a>선택삭제</a>
				</span>
			
		</div>
		
			<div>
				<table style="width: 1160px; margin-bottom: 0px;">
					<tr style="background-color: #DCDCDC">
						<td style="width: 10px;"><input type="checkbox" name="chk" onclick="checkAll(this)"></td>
						<td style="width: 200px; text-align: left;">전체선택</td>
						<td style="width: 600px;">상품정보</td>
						<td style="width: 100px;">수량</td>
						<td style="width: 150px;">상품금액</td>
						<td style="width: 100px;">배송비</td>
					</tr>
					<c:forEach items="${list}" var="i">
						<tr style="height: 130px;">
							<td style="width: 20px;"><input type="checkbox" name="chk"></td>
							<td style="text-align: left;"><img src="imgs/shopbox.png" style="width: 150px; height: 150px;"></td>
							<td>아나포 스마트 약통 AnaFor Box Smart IoT 알약/영양제 통</td>
							<td>${ i.bk_cnt}개</td>
							<td>${ i.bk_price}</td>
							<td>무료</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		<div style="width: 1160px; margin: 0px auto; height: 30px; background-color:#DCDCDC; line-height: 30px; margin-bottom: 20px; ">
			<span style="float: right; font-weight: bold; padding-right: 10px;">
				상품 수량 1개 + 배송비 무료 = 주문금액 30,000 원
			</span>
		
		</div>
	
	</div>
</div>
</body>
</html>