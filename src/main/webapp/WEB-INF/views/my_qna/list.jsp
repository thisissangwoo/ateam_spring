<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
   background-color: #FFFFFF;
}
#header {
   width:100%;
   height:60px;
   padding: 20px;
   background-color:#929292;
   border-bottom: 1px solid white; 
}

#header h3{
   font-size: 25px;
   font-weight: bold;
   text-align: left;
   color: white;
}

#list-board{
   width:95%;
   height:85%;
   margin:40px;
   border-radius: 5px;
   background-color: white;
   padding-top: 10px;
   padding-bottom: 30px;
}

#list-select{
   width:80%;
   margin-top: 50px;
}

#list-select ul{
	margin-left: 200px;
}

table{
	width:80%;
	margin-top: 20px;
}

</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
</head>
<body>
<form action="list.qu" method="post">
<div id="header">
   <h3>문의내역 확인</h3>
</div>
<input type="hidden" name="curPage" value="1" />  
   
   <div id="list-board">
	   <div id='list-select'>       
	      <ul class="left">
	         <tr>
	            <select name='search' class='w-px150'>
	               <option value="all" ${page.search eq 'all' ? 'selected' : '' }>전체</option>
	               <option value="title" ${page.search eq 'title' ? 'selected' : '' }>제목</option>
	               <option value="content" ${page.search eq 'content' ? 'selected' : '' }>내용</option>
	               <option value="writer" ${page.search eq 'writer' ? 'selected' : '' }>작성자</option>
	            </select>
	         </tr>
	         <!-- 검색 키워드를 입력할 input 태그  -->
	         <tr>
	            <input type="text" name='keyword' value="${page.keyword }" placeholder="검색 키워드를 입력하세요"/>
	         </tr>
	         <!-- 검색 버튼 생성 -->
	         <tr>
	            <a onclick="$('form').submit()" id="search_btn"><img src="imgs/notice_search.png"></a>
	         </tr>
	      </ul>
	   </div> 
       <table>
      	<thead>
	        <tr>
	           <th class="w-px70">NO</th>
	           <th class="w-px120">문의사항</th>
	           <th>제목</th>
	           <th class="w-px100">작성자</th>
	           <th class="w-px120">작성일자</th>
	           <th class="w-px100">조회수</th>
	        </tr>
	     </thead>
		<tbody> 
			<c:if test="${ empty page.list }">
				<tr>
					<td colspan="6">게시글 정보가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach items="${page.list }" var="vo">
			   <tr>
			      <td>${vo.no }</td>
			      <td>${vo.sort}</td>
			      <td class='left'>
			      	 <c:forEach begin="1" end="${vo.indent }" var="i">      
			            ${i eq vo.indent ? "<img src='imgs/re.gif' />" : "&nbsp;&nbsp;" }  
			         </c:forEach>
			         <a href='detail.cu?id=${vo.id }'>${vo.title }</a>         
			      </td>
			      <td>${vo.name}</td>
			      <td>${vo.writedate}</td>
			      <td>${vo.readcnt}</td>
			   </tr>
			</c:forEach>
   		</tbody>
      </table>
   <div>
      <jsp:include page="/WEB-INF/views/include/page.jsp" />
   </div>
   </div>
</form>
</body>
</html>