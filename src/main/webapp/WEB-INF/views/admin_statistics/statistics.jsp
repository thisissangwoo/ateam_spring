<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!-- <script type="text/javascript" src="js/chart.js"></script> -->

<style type="text/css">

#dashboard{width: 100%; height: 60px; background: #929292; }
#dashboard h3{color: #fff; font-size: 20px; line-height: 60px; text-align: left; font-weight: 600; padding-left: 15px;}

#chart_wrap{width: 100%; height: auto; /* box-sizing: border-box; */ padding: 20px;  }
#chart_wrap .chart{position:relative; background: #fff; width: 100%; height: auto;  border-radius: 10px 10px 10px 10px; text-align: left; }	
#chart_wrap .chart h3{font-size: 18px; color: #929292; padding: 10px; font-weight: 500;}
#chart_wrap .chart h3::after{content:'';display:block;height:1px;width:100%;background:#929292;}
/* #chart_wrap .chart #myChart{position: absolute; width: 500px; height: 400px; background: #fff; border-radius: 0px 0px 10px 10px; padding: 10px; border-top: 1px solid #929292;} */



</style>

</head>
<body>
<div id="dashboard">
	<h3>통계</h3>
</div>

<div id="chart_wrap">
	
 	<div class="chart" >
		<!--차트가 그려질 부분-->
		<h3>통계 그래프</h3>
		<canvas id="myChart" width="900" height="200"></canvas>
	</div>  




</div>
<script>
	var usergraph = JSON.parse('${list}'); //조회한 데이터(json type)
	var aweek = JSON.parse('${aweek}');		//일주일 날짜
	var order = JSON.parse('${order}');		//주문수량
	var aweekArray= new Array(); //일주일 날짜 배열
	var usergArray = new Array(8); //회원 수 배열
	var ordergArray = new Array(8); //주문 수 배열
	usergArray.fill(0);		//배열 0으로 초기화
	ordergArray.fill(0);
	
	for(var i=0; i<aweek.length; i++){
		for(var j=0; j<usergraph.length; j++){
				if(aweek[i] == usergraph[j].gdate){
					usergArray[i]=usergraph[j].cnt;
				}
				
		}
		for(var k=0; k<order.length; k++){
				if(aweek[i] == order[k].gdate){
					ordergArray[i]=order[k].cnt;
				}
				
		}
		aweekArray[i] = aweek[i];
	}
	
</script>
<script type="text/javascript" src="js/chart.js"></script>


</body>
</html>