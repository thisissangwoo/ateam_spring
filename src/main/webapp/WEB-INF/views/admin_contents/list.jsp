<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠관리</title>
<style>
body{
   background-color: #E5E5E5;
}
#header {
   width:100%;
   height:60px;
   padding: 20px;
   background-color:#929292; 
}

#header h3{
   font-size: 25px;
   font-weight: bold;
   text-align: left;
   color: white;
}

#list-top{
   width:90%;
   height:80px;
   margin:30px;
   border-radius: 5px;
   background-color: white;
      font-size: 18px;
}

#list-select{
   widht:80%;
   padding-left: 10px;
   padding-right: 10px;
}

#list-select tr td{
   font-size: 20px;
}

#search_btn{
   padding-top:5px;
}


#list-board{
   width:90%;
   height:80%;
   margin:30px;
   margin-top:15px;
   border-radius: 5px;
   background-color: white;
   padding-top: 10px;
   padding-bottom: 30px;
}

#list-board ul{
   width:90%;
   margin-top: 30px;
   text-align: right;
}

#list-board table{
   width:80%;
   margin-top:30px;
   margin-bottom:30px;
   border-top: 1px solid #e0e0e0;
}

a.btn-empty {
   background: #D9D9D9;
   color: black;
   text-align: center;
   padding: 3px 10px;
   margin-left: 5px;
   border: 1px solid #b0b0b0;
}

input[name=date]{
   border: 1px solid #b0b0b0;
      color: #b0b0b0;
      margin-left: 20px;
   font-size: 18px;
}

input[name=date]:nth-child(1){
   margin-right: 20px;
}

input[name=keyword] {
    width: 700px;
    height: 40px;
      font-size: 18px;
}

table tr td:nth-child(7) img {
   cursor: pointer;    
}

select{
   margin-right: 50px;
   font-size: 18px;
}

#date-search{
   width: 80%;
   text-align: center;
   margin-left: 20px;
}

#datecenter a{
   text-align: center;
   margin-left: 20px;
}

#last-td{
   margin-left:50px;
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
</head>
<body>
<div id="header">
   <h3>컨텐츠 관리</h3>
</div>
<form action="list.co" method="post">
<div id='list-top' >
   <div id='list-select'>       
      <ul>
         <tr>
            <select name='notice_category' class='w-px150'>
               <option value="all"  ${code eq 'all' ? 'selected' : '' }>카테고리</option>
               <c:forEach items="${code }" var="vo">
<option ${code ne 'all' and code eq vo.code ? 'selected' : '' } value="${vo.code }" >${vo.code_name }</option>
               </c:forEach>
            </select>
         </tr>
         <tr>
            <select name='search' class='w-px150'>
               <option value="all" ${page.search eq 'all' ? 'selected' : '' }>전체</option>
               <option value="title"
                  ${page.search eq 'title' ? 'selected' : '' }>제목</option>
               <option value="content"
                  ${page.search eq 'content' ? 'selected' : '' }>내용</option>
               <option value="writer"
                  ${page.search eq 'writer' ? 'selected' : '' }>작성자</option>
            </select>
         </tr>
         <!-- 검색 키워드를 입력할 input 태그  -->
         <tr>
            <input type="text" name='keyword' value="${page.keyword }" placeholder="검색 키워드 입력"/>
         </tr>
         <!-- 검색 버튼 생성 -->
         <tr>
            <a onclick="$('form').submit()" id="search_btn"><img src="imgs/notice_search.png"></a>
         </tr>
      </ul>
   </div>
</div>

<input type="hidden" name="curPage" value="1" />      
   <div id="list-board">
      <div id="date-search">
         <ul>
            <tr>
               <td id="datefont">조회기간&nbsp;&nbsp;: </td>
               <td><input type="text" name='date' class="w-px110" readonly />      
                  <a id='delete' style="display: none; color: black; position : relative; right: 50px; cursor: pointer;"> 
                  <i class="fa-solid fa-circle-minus"></i>
                  </a>
               </td>
               <td>
                  <a>~</a>               
               </td>
               <td><input type="text" name='date' class="w-px110" readonly />      
                  <a id='delete' style="display: none; color: black; position : relative; right: 10px; cursor: pointer;"> 
                  <i class="fa-solid fa-circle-minus"></i>
                  </a>
               </td>
               <td>
                  <a class='btn-empty'>적용</a>
               </td>            
               <!-- 관리자로 로그인된 경우만 글쓰기 가능 -->
            </tr>
         </ul>   
      </div>
      <div>
         <ul>                  
            <c:if test="${loginInfo.admin eq 'Y' }">      
               <li id="last-td"><a class='btn-empty' href='new.co'>글쓰기</a></li>
            </c:if>   
         </ul>
      </div>
      <table>
         <tr>
            <th class="w-px70">NO</th>
            <th class="w-px80">카테고리</th>
            <th>제목</th>
            <th class="w-px100">작성자</th>
            <th class="w-px120">작성일자</th>
            <th class="w-px100">조회수</th>
            <th class="w-px70">삭제</th>
         </tr>
         <c:forEach items="${page.list }" var="vo">
            <tr>
               <td>${vo.no }</td>
               <td>${vo.category}</td>
               <td class='left'>
                  <c:forEach begin="1" end="${vo.indent }" var="i">      
<%--                      ${i eq vo.indent ? "<img src='imgs/re_1.png' /><img src='imgs/re_2.png' />" : "&nbsp;&nbsp;" }      --%>
                     ${i eq vo.indent ? "<img src='imgs/re.gif' />" : "&nbsp;&nbsp;" }  
                  </c:forEach>
                  <a href='detail.co?id=${vo.id }'>${vo.title }</a>         
               </td>
               <td>${vo.name}</td>
               <td>${vo.writedate}</td>
               <td>${vo.readcnt}</td>
               <td>
                  <c:if test="${loginInfo.admin eq 'Y' }">
                     <a onclick="if(confirm('정말 삭제하시겠습니까?')){href='delete.co?id=${vo.id}'}"><img src="imgs/notice_delete.png"> </a>
                  </c:if>
               </td>
            </tr>
         </c:forEach>
      </table>
   <div>
      <jsp:include page="/WEB-INF/views/include/page.jsp" />
      <!-- jsp 표준 include를 사용하여 설정 -->
   </div>
</div>
</form>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script>
$('[name=date]').change(function () {
   $('#delete').css('display', 'inline');
});

$('#delete').click(function () {
   $('[name=date]').val('');
   $('#delete').css('display', 'none');
});


$(function() {
   var today = new Date();   // 오늘 날짜 선언 (today)
   var startDay = new Date( today.getFullYear() - 1, today.getMonth(), today.getDate());
   
    $( "[name=date]" ).datepicker({
       dayNamesMin:['일', '월', '화', '수', '목', '금', '토']
       , monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
       , changeMonth : true
       , changeYear : true
       , dateFormat : 'yy-mm-dd'
       , showMonthAfterYear : true
       , minDate: startDay
       , maxDate: today  /* 달력에 나타날 최대 일자 지정 */
    });
    
    
    
});



</script>   
</body>
</html>