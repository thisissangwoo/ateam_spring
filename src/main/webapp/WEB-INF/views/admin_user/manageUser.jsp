<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자관리</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

	#titlename{
		width:100%;
		background:#929292;
		height:60px;
		text-align:left;
		font-size:20px;
		font-weight:700;
		line-height:60px;
		padding: 0px 10px;
		color:#FFFFFF;
	}
	#UserProfile{
		width:90%;
		margin:20px auto;
		background-color: #FFFFFF;
		border-radius:10px;
	}
	table{
		width:100%;
		border:0px;
	}
	tr{
	}
	td{
		font-size:14px;
		color:#929292;
	}
	#totaluser{
		width:150px;
		height:40px;
		display:block;
		text-align:left;
		line-height:40px;
		margin-left:20px;
		font-size:15px;
		font-weight:700;
		margin-top:15px;
		margin-bottom:15px;
	}
	
	textarea {
    width: 100%;
    height: 200px;
    border: 1px solid #ccc;
    resize: none;
  }
  
  #modal{
  	display:none;
  	z-index : 1;
	background-color: rgba(0,0,0,.3);
	position:fixed;
	left:0;
	top: 0;
	width:100%;
	height:100%;
  }
  
    #modal>#memo_content{
	width:500px;
	margin:100px auto;
	height:350px;
	padding:20px;
	position: relative;
	background-color:#fff;
	}
	
	#close-btn{
		width:100%;
		height:10px;
		text-align:right;
		display:block;
	}
	span{
		display:block;
		margin:10px;
		font-weight:500;
		font-size:15px;
	}
	#btn-class{
	
		width:100%;
		height:30px;
		
	}
  
  input[type=button]{
  		margin-top:10px;
  		padding:10px;
  		border-radius:5px;
  }
  
  input[type=button]:hover{
  	background-color:#c0c0c0;
  
  }

</style>
</head>
<body>
	<div id = "titlename">사용자관리</div>
	<div id = "UserProfile">
		<span id="totaluser">전체 사용자&nbsp;&nbsp;<c:out value="${page.list.size()}"/>명</span>
		<form id="form" action="user.ur" method="post">
		<input type="hidden" name="curPage" value="1" />
		</form>
		<table>
			<tr>
				<td>No</td>
				<td>이름</td>
				<td>계정</td>
				<td>회원 유형</td>
				<td>가입일</td>
				<td>Q&A/구매평</td>
				<td>메모</td>
			</tr>
			<c:forEach items="${page.list}" var="vo">
			<tr>
				<td>${vo.no }</td>
				<td>${vo.user_name}</td>
				<td>${vo.user_id }</td>
				<td>${vo.admin eq 'Y' ? '관리자':'일반회원'}</td>
				<td>${vo.join_date }</td>
				<td>${vo.qCnt}&nbsp;/&nbsp;${vo.brCnt }</td>
				<td><a onclick="show()"><i class="fa-solid fa-square-pen"></i></a></td>
			</tr>
			</c:forEach>
		</table>
		<div id="modal">
			<div id="memo_content">
				<a id="close-btn"><i class="fa-solid fa-xmark"></i></a>
				<span>Memo</span>
				<textarea  placeholder="내용을 입력해 주세요." rows="10"></textarea>
				<div id="btn-class">
				<input type="button" value="삭제하기"/>
				<input type="button" value="저장하기"/>
				</div>
			</div>
		</div>
		<div>
		<jsp:include page="/WEB-INF/views/include/page.jsp" />
		<!-- jsp 표준 include를 사용하여 설정 -->
	</div>
	</div>
<script>
	function show(){
		$('#modal').css("display","block");
	}
	
	$('#close-btn').click(function(){
		$('#modal').css("display","none");
	});

</script>	
</body>
</html>