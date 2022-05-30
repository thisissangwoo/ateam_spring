<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>[ 공지사항 ]</h3>
<table>
	<tr>
		<th class="w-px70">번호</th>
		<th>제목</th>
		<th class="w-px100">작성자</th>
		<th class="w-px100">작성일자</th>
		<th class="w-px100">첨부파일</th>
	</tr>
	<c:forEach items="${list }" var="vo">
      <tr>
         <td>${vo.no }</td>
         <td>${vo.title}</td>
         <td>${vo.name}</td>
         <td>${vo.writedate}</td>
         <td></td>
      </tr>
	</c:forEach>
</table>
</body>
</html>