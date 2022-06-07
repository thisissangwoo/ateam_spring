<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대시보드</title>
<script type="text/javascript" src="js/admin.js"></script>
<style type="text/css">

/*style.css*/
#wrap{width: 100%; height: auto;}
#logo{width: 100%; height: 60px; position: relative; border-bottom: 1px solid #d9d9d9;}

#logo h3{color: #fff; position: absolute; left: 60px; top: 5px; font-weight: 600; font-size: 30px; line-height: 32px;}
#logo p{display: block; color: #fff; position: absolute; left: 80px; top: 30px; font-weight: 600; font-size: 14px;line-height: 20px}


/*v1*/
#nav-v1{width:100%;text-align: left; }
.menu-v1{	line-height:2;}
.menu-v1:hover{background-color:#929292;}
.menu-v1:hover>a{color:white;font-weight:bold;}
.menu-v1 .submenu{	margin-top:7px;	background-color:#fff;	display:none;}
.menu-v1 .submenu li:hover{	background-color:#000;color:white;font-weight:bold;}


</style>



</head>
<body>

<div id="wrap">

	<div id="logo">
		<h3>AnaFor</h3>
		<p>관리자 센터</p>
	</div>

	<div class="dormammu">
		<ul>
			<li><img alt="돌아가기" src="imgs/dormammu.png"><a href="#" >사이트 돌아가기</a></li>
		</ul>
	</div>
	
	<div id="container">
			
			<ul id="nav-v1">
				<li class="menu-v1"><a href="#">대시보드</a>
					
				</li>
				<li class="menu-v1"><a href="#">사용자관리</a>
									
				</li>
				<li class="menu-v1"><a href="#">컨텐츠관리</a>
					<ul class="submenu">
						<li><a href="#">Q&A</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">리뷰</a></li>
						<li><a href="#">공지사항</a></li>
					</ul>				
				</li>
				<li class="menu-v1"><a href="#">shop관리</a>
									
				</li>
				<li class="menu-v1"><a href="#">통계</a>
									
				</li>
			</ul>
		
	</div>
</div>			
</body>
</html>