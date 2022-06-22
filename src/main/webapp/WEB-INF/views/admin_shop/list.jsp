<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}

#myform fieldset .align{
    display: inline-block;
    direction: ltr;
    border:0;
}

.unchecked{
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
.checked{
	font-size: 2em;
    color: #fad000;    
}

#myform .hover:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform .hover:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}


</style>
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
			
			
			<c:forEach items="${vo.list }" var="vo">
				<div style="height: 200px; text-align: left;">
					<span style="height: 20px; font-size: 20px; line-height: 20px;">${vo.user_id }</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>${vo.rev_date }</span>
					<div style="height: 30px; font-size: 20px; line-height: 30px;">
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
						<div style="height: 30px; font-size: 20px; line-height: 30px;" id="myform">
							<fieldset>
								<div class='align'>
									<c:forEach begin="1" end="${vo.rev_grade }">
										<span class='checked'>★</span>
									</c:forEach>
									<c:forEach begin="${vo.rev_grade+1}" end="5">
										<span class='unchecked'>★</span>
									</c:forEach>
								</div>
							</fieldset>
						</div>

					</td>
					<td>${vo.rev_date }</td>
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