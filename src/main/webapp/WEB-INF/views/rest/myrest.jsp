<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <section class="container"> 
      <div id="reservationListWrap" style="">
        <div class="title">숙소 예약 목록</div>

        <c:forEach items="${list}" var="dto">
            <div class="reservationList"  style="cursor: pointer;">
                <ul class="info">
                    <li>${dto.hotelname}</li>
                    <li class="address">${dto.address}</li>
                    <li>${dto.checkin} ~ ${dto.checkout} </li>
                </ul>
                <input class="mapx" type="hidden" value="${dto.mapx}">
                <input class="mapy" type="hidden" value="${dto.mapy}">
            </div>
          </c:forEach>
                  
          <c:if test="${empty list}">
          	<div>예약목록이 없습니다.</div>
          </c:if>
    	</div>
        <div id="right">
        	<div class="title">숙소 근처 식당</div>
            <div id="status" class="navtable">
            `
                <div id="map" style="width:700px;height:400px;"></div>

            </div>
            
            <div id="reslist">
            
            </div>
        </div>
       
        <div style="clear: both;"></div>
    
        
    </section>
    
    <!-- 카카오맵API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6d7efc4aa41d37ac9bcac0dd5b84508"></script>
	<script>
	//var mapy='33.450701';
	//var mapx='126.570667';

	$(".reservationList").click(function(){
		 var mapx = $(this).children(".mapx").val();
		var mapy = $(this).children(".mapy").val();
		
			//alert($(this).children(".mapx").val() +','+$(this).children(".mapy").val());
 		//location.href="/naman/rest/myrest.action?mapx="+mapx+"&mapy="+mapy;
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
    center: new kakao.maps.LatLng(mapy,mapx), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
	};
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	var markerPosition  = new kakao.maps.LatLng(mapy, mapx); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

 
		//숙소 근처 식당목록
		  $.ajax({          
		      url: '/naman/rest/aroundrest.action',
		      type: 'get',
		      data: 'mapx='+mapx+'&mapy='+mapy, 
		      dataType: 'json',
		      success: function(data){
		          //console.log(data);
		          var myItem = data.response.body.items.item;
		         	var list = document.getElementById("reslist");
		         	list.innerHTML= '';
		              for(var i=0; i<=myItem.length; i++){

		            	 var output = '';		
		              output += '<div class="reslists">'
		              output += '<table class="table table-borderedless menutbl">'
		              output += '<tr>'
		            if(myItem[i].firstimage == undefined){
		            	output+='<td rowspan="2"><img class="resimg" src="/naman/resources/img/rest/res.png"></td>'
		            } else{
		              output += '<td rowspan="2"><img class="resimg" src="'+myItem[i].firstimage+'"></td>'
		            }
		              output += '<td class="restitle">'+myItem[i].title
		              output += '<input type="hidden" name="contentid" value="'+myItem[i].contentid+'"></td>'
		              output += '<td id="want"><i class="far fa-heart wanticon"></i> 찜</td>'
		              output += '</tr>'
		              output += '<tr>'
		              output += '<td colspan="2">'+myItem[i].addr1+'</td>'

		              output +='</tr> </table> </div>'

		              
		              
		              list.innerHTML += output;
		              }
			             },
		      error: function(XMLHttpRequest, textStatus, errorThrown){
		    	  alert("Status:" + textStatus); alert("Error:" + errorThrown);
		     	 }
		  });   


	

	});





	</script>






   
