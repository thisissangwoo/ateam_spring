<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!-- <script type="text/javascript" src="js/chart.js"></script> -->

<style type="text/css">

#dashboard{width: 100%; height: 50px; background: #929292; }
#dashboard h3{color: #fff; font-size: 20px; line-height: 50px; text-align: left; font-weight: 600; padding-left: 15px;}

#chart_wrap{width: 100%; height: auto; box-sizing: border-box; padding: 20px;  }
#chart_wrap .chart{position:relative; background: #fff; width: 100%; height: auto;  border-radius: 10px 10px 0px 0px; text-align: left; border-bottom: 1px solid #929292; }	
#chart_wrap .chart h3{font-size: 18px; color: #929292; padding: 10px; font-weight: 500;}
#chart_wrap .chart::after{content:'';display:block;height:1px;width:200px;background:#929292;}
/* #chart_wrap .chart #myChart{position: absolute; width: 500px; height: 400px; background: #fff; border-radius: 0px 0px 10px 10px; padding: 10px; border-top: 1px solid #929292;} */

</style>

</head>
<body>
<div id="dashboard">
	<h3>대시보드</h3>
</div>

<div id="chart_wrap">
	
	<div class="chart" >
		<!--차트가 그려질 부분-->
		<h3>통계 그래프</h3>
		<canvas id="myChart" width="900" height="200"></canvas>
	</div>

</div>
<script>
	var usergraph = Json.parse(${list});
	console.log(usergraph[0].cnt);
</script>
<script type="text/javascript" src="js/chart.js"></script>


</body>
</html>