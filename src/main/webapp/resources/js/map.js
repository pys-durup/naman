let mapbutton = document.getElementById('mapbutton');
let mapclose = document.getElementById('mapclose');
let mapimg = document.getElementById('mapimg');
var container = document.getElementById('map');

//마우스 올리면 흐리게
mapbutton.onmouseover = function overMap() {
	mapbutton.style.color="#51ABF3";
	mapimg.style.opacity="0.8";
}

mapbutton.onmouseout = function outMap() {
	mapbutton.style.color="black";
	mapimg.style.opacity="1";
}

//마우스 내리면 다시 정상
mapimg.onmouseover = function overMap() {
	mapbutton.style.color="#51ABF3";
	mapimg.style.opacity="0.8";
}

mapimg.onmouseout = function outMap() {
	mapbutton.style.color="black";
	mapimg.style.opacity="1";
}

//클릭하면 지도가 나오게
mapimg.onclick = function openMap() {
	$(".overlay").show();
	mapclose.style.visibility="visible";
	container.style.visibility="visible";
}

mapbutton.onclick = function openMap() {
	$(".overlay").show();
	mapclose.style.visibility="visible";
	container.style.visibility="visible";
}

//클릭하면 지도가 숨게
mapclose.onclick = function closeMap() {
	$(".overlay").hide();
	mapclose.style.visibility="hidden";
	container.style.visibility="hidden";
}

//ESC 누르면 지도가 숨게
$(document).keydown(function(event) {
    if ( event.keyCode == 27 || event.which == 27 ) {
    	$(".overlay").hide();
    	mapclose.style.visibility="hidden";
    	container.style.visibility="hidden";
    }
});

let hotelCnt = document.getElementsByClassName('hotelone');
let hotelMapName = document.getElementsByClassName('hotelname');
let mapX = document.getElementsByClassName('mapX');
let mapY = document.getElementsByClassName('mapY');

//카카오맵
var options = {
	center: new kakao.maps.LatLng(37.4979071276867, 127.02758066476349),
	level: 3
};

var map = new kakao.maps.Map(container, options);

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [    
	{
    title: '강남스테이힐', 
    latlng: new kakao.maps.LatLng(37.5034291706, 127.0301236613)
	},
	{
    title: '그랜드 인터컨티넨탈 서울 파르나스', 
    latlng: new kakao.maps.LatLng(37.5095984514, 127.0608845757)
	},
	{
    title: '노보텔 앰배서더 강남', 
    latlng: new kakao.maps.LatLng(37.5054150317, 127.0290348148)
	},
	{
    title: '임피리얼 팰리스 호텔', 
    latlng: new kakao.maps.LatLng(37.5136697521, 127.0358867353)
	},
	{
    title: '그린빌라트(가로수길 그린빌라)', 
    latlng: new kakao.maps.LatLng(37.5222130116, 127.0251791346)
	},
	{
    title: '자이언트 모텔', 
    latlng: new kakao.maps.LatLng(37.5123645973, 127.0497660645)
	},
	{
    title: '예본의 집', 
    latlng: new kakao.maps.LatLng(37.4948950327, 127.0847855948)
	},
	{
    title: '호텔 라마다 서울', 
    latlng: new kakao.maps.LatLng(37.5104064104, 127.0452804175)
	},
	{
    title: '게스트하우스 G601', 
    latlng: new kakao.maps.LatLng(37.5104064104, 127.0326011727)
	},
	{
    title: '헬레나 홈스테이', 
    latlng: new kakao.maps.LatLng(37.5015633545, 127.0653760608)
	},
];

var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}











