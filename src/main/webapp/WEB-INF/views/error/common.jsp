<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class='center' style='width:800px; margin : 0 auto;'>
	<div class='left' style='height:60px;'>
		<a href='<c:url value="/" />'><img src="imgs/error_anafor" /></a>
	</div>
	<hr>
	<div class='left'>
		<h3>죄송합니다. 요청하신 페이지를 찾을 수 없습니다.</h3>
		<pre>방문하시려는 페이지의 주소가 잘못 입력되었거나</pre>
		<pre>페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.</pre>
		<br>
		<pre>입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.</pre>
		<pre>관련 문의사항은 AnaFor 고객센터에 알려주시면 친절하게 안내해 드리겠습니다.</pre>
		${msg }
	</div>
</div>