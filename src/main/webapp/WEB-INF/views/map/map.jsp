<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>원, 선, 사각형, 다각형 표시하기</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=681e977067d98d095ccfda23ca7c463c"></script>
    <style>
    	#title{
    		padding:5px;
    	}
    
    </style>
</head>
<body>

<div id="map" style="width:100%;height:800px;"></div>    
 
 
<script>
var json = JSON.parse('${list}');
var first_positions = [];

for (var i=0; i<json.length; i++){
	first_positions[i] = {
			content: '<div>'+json[i].gps_date+'</div>',
			latlng: new kakao.maps.LatLng(json[i].latitude, json[i].longtitude)
	};
}

var mapContainer = document.getElementById('map'), // 지도를 표시할 div
 
mapOption = {
 
center: new kakao.maps.LatLng(35.153868, 126.88833), // 지도의 중심좌표
 
level: 6 // 지도의 확대 레벨
 
};
 
 
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


 

//첫번째 띄울 좌표
 /* 
var first_positions = [
 
{
 
content: '<div id="title">배재대학교</div>',
 
latlng: new kakao.maps.LatLng(36.3206145, 127.3661757)
 
},
 
{
 
content: '<div id="title">목원대학교</div>',
 
latlng: new kakao.maps.LatLng(36.3261, 127.3389)
 
},
 
{
 
content: '<div id="title">대전 체육 고등학교</div>',
 
latlng: new kakao.maps.LatLng(36.3371, 127.3420)
 
} 
 
]; */

 
 
// 첫번째 마커 생성
 
for (var i = 0; i < first_positions.length; i ++) {
 
// 마커를 생성합니다
 
var marker = new kakao.maps.Marker({
 
map: map, // 마커를 표시할 지도
 
position: first_positions[i].latlng // 마커의 위치// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
 
});
 
 
// 마커에 표시할 인포윈도우를 생성합니다
 
var infowindow = new kakao.maps.InfoWindow({
 
content: first_positions[i].content, // 인포윈도우에 표시할 내용
 
removable : true
 
});
 
 
kakao.maps.event.addListener(marker, 'click', marker_click(map, marker, infowindow));
 
}
 

 
 
function marker_click(map, marker, infowindow){
 
return function() {
 
infowindow.open(map, marker);
 
};
 
}
 
/*  
// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
 
var first_polyline = [
 
new kakao.maps.LatLng(36.3206145, 127.3661757),
 
new kakao.maps.LatLng(36.3261, 127.3389),
 
new kakao.maps.LatLng(36.3371, 127.3420)
 
];
 
 
// 지도에 표시할 선을 생성합니다
 
var first_linePath = new kakao.maps.Polyline({
 
path: first_polyline, // 선을 구성하는 좌표배열 입니다
 
strokeWeight: 3, // 선의 두께 입니다
 
strokeColor: 'black', // 선의 색깔입니다
 
strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
 
strokeStyle: 'solid' // 선의 스타일입니다
 
});

 
// 지도에 선을 표시합니다
 
first_linePath.setMap(map);
 
 */
 
 
</script>
</body>
</html>