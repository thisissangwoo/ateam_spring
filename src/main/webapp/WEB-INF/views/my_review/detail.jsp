<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
	<div style="background-color:#929292; width: 100%; height: 60px; padding: 20px;">
		<h3 style="font-size: 25px; font-weight: bold; text-align: left; color: white;">리뷰 상세 화면</h3>
	</div>

	<div style="margin: 30px; background-color: white; width: 96.5%; height: 500px; padding: 20px;">
	
		<div style="text-align: left; width: 100%; height: 80px;" id="myform">
			<span style="line-height: 80px; font-size: 30px;">
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
		
		<div style="height: 30px; font-size: 20px; line-height: 30px; text-align: left;">${vo.rev_title }</div>
	
		<div style="border-bottom: 1px solid; height: 1px; margin-top: 20px; margin-right: 20px; margin-bottom: 20px;"></div>	
	
		<div style="text-align: left; height: 500px; border: 1px solid; margin-bottom: 20px; padding: 20px; font-size: 15px;" >
			${vo.rev_content }
		</div>
		
		<div>
			<a class="btn-fill" href="list.rev?id=${vo.rev_id }">목록으로</a>&nbsp;&nbsp;&nbsp;		
			<a class="btn-fill" href="review_modify.rev?id=${vo.rev_id }">수정하기</a>&nbsp;&nbsp;&nbsp;		
			<a class="btn-empty" href="review_delete.rev?id=${vo.rev_id }">삭제하기</a>
		</div>
		
		
	</div>
</body>
</html>