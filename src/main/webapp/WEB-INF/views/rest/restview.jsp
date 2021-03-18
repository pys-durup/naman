<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
       <section class="containerViewRest">
        <aside class="restaurant-photos">

            <div class="list-photo_wrap" id="photo-items">
<!--              <figure class="list-photo">
                  <figure class="restaurant-photos-item">
                    <img class="" src="https://mp-seoul-image-production-s3.mangoplate.com/141411/29726_1449404044493_25679?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80" alt="우성닭갈비 사진 - 강원도 춘천시 동면 만천리 755-1" >
                  </figure>
                </figure>    -->
  

            </div>
        </aside>


        <!-- 식당 정보 -->
        <div class="infowrap">
            <div class="innerInfo" >
                <section class="restInfo"  >
                    <header class="resInfoHeader">
                        <h1 class="restName" id="restName"><span>4.5</span></h1>
                        <div class="btnsRW" >
                            <button class="btn btn-default"><i class="far fa-heart wanticon"></i>리뷰</button>
                            <button class="btn btn-default"><i class="far fa-heart wanticon"></i>찜</button>
                        </div>
                        <div style="clear: both;"></div>

                        <div class="RWcnt">
                            <span>리뷰</span>
                            <span>찜수</span>
                        </div>
                    </header>
                    <div class="restInfoDetail">
                        <table class="table table-bordered restTbl" id="restInfoDetail">
                            <tr>
                                <th>주소</th>
                                <td id="restAddress"></td>
                            </tr>
                            <tr>
                                <th>전화번호</th>
                                <td id="restTel"></td>
                            </tr>
                            
                            <tr>
                            	<th>영업시간</th>
			    	   			<td id="restOpenTime"></td>
			    	   		</tr>
		    	
			    	  		<tr>
			    	  			<th>휴무일</th>
			    	   			<td id="restBreak"></td>
			    	   		</tr>
		  
			 		   	    <tr>
			 		   	    	<th>메인메뉴</th>
			    	  			<td id="restMainMenu"></td>
			    	  		</tr>
							<tr>
								<th>취급메뉴</th>
			    	  			<td id="restMenu"></td>
			    	  		</tr>
		    	   	 
			    			<tr>
			    	  			<th>예약안내</th>
			    	   			<td id="restReserve"></td>
			    	   		</tr>
		    	   
							<tr>
								<th>주차가능여부</th>
								<td id="restParking"></td>
							</tr>

                            
                          
                        </table>
                          <input type="hidden" id="mapx" value="">
                           <input type="hidden" id="mapy" value="">
                    </div>
                </section>
                <section class="reviewList">
                    <header class="reviewListHeader"> 
                        <ul class="reviewScore">
                            <li class="reviewTitle">리뷰<span>(count)</span></li>
                            <li><button class="btn btn-default">전체<span>(count)</span></button></li>
                            <li><button class="btn btn-default">맛있다<span>(count)</span></button></li>
                            <li><button class="btn btn-default">괜찮다<span>(count)</span></button></li>
                            <li><button class="btn btn-default">별로<span>(count)</span></button></li>
                        </ul>
 
                    </header>

                    <div class="reviewView">
                        <div class="reviewWriter">
                            <p>dkdkdk</p>
                            <p>2020/03/02</p>
                            <p class="reviewContent" >Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, hic repellendus. Similique quam cum quasi labore accusantium consequuntur iure obcaecati, eius consequatur lias, tempora officia, maiores fuga, cumque aperiam natus unde neque iure amet? Quasi laboriosam vitae necessitatibus!</p>
                            <ul class="pictureList">
                                <li class="pictureItem">
                                <button class="pictureButton">
                                    <img class="pictureLoaded" alt="review picture" src="https://mp-seoul-image-production-s3.mangoplate.com/141411/1544822_1614390367492_14633?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80" >
                                    
                                </button>
                                </li>
                                <li class="pictureItem">
                                    <button class="pictureButton">
                                    <img class="pictureLoaded" alt="review picture" src="" >
                                    
                                    </button>
                                </li>
                            </ul>
                        </div>
                        <div class="reviewIcon">맛있따</div>
                        <div style="clear: both;"></div>
                    </div>
                </section>
            </div>
          
            <div class="infoRightMenu" >
                    <div class="map" id="map" style="margin-bottom: 80px;"></div>
                    <section class="NearByRestaurantList" id="NearByRestaurantList">
                        <span class="NearByRestaurantList__Title">주변 인기 식당</span>
            
                       <!--  <ul class="NearByRestaurantList__List">
                            <li class="NearByRestaurantItem NearByRestaurantList__Item">
                            <div class="NearByRestaurantItem__PictureAndContent">
                                    <a class="NearByRestaurantItem__PictureLink" href="">
                                    <img class="NearByRestaurantItem__Picture loaded" alt="near by popular restaurant picture" src="https://mp-seoul-image-production-s3.mangoplate.com/141410_1428726363957?fit=around|383:383&amp;crop=383:383;*,*&amp;output-format=jpg&amp;output-quality=80">
                                    </a>
                
                                <div class="NearByRestaurantItem__Content">
                                    <div class="NearByRestaurantItem__NameWrap">
                                        <a class="NearByRestaurantItem__Name" href="">1.5닭갈비</a>
                                        <span class="NearByRestaurantItem__Rating">4.0</span>
                                    </div>

                            
                                    <div class="NearByRestaurantItem__InfoWrap">
                                        <dl class="NearByRestaurantItem__Info">
                                        <dt class="NearByRestaurantItem__InfoLabel">음식 종류</dt>
                                        <dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--SubCuisine">닭 / 오리 요리</dd>
                                        </dl>                    
                                        <dl class="NearByRestaurantItem__Info">
                                        <dt class="NearByRestaurantItem__InfoLabel">위치</dt>
                                        <dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--Metro">강원 춘천시</dd>
                                        </dl>

                                    </div>
                                </div>
                            </div>
                            </li>
                        </ul> -->

                    </section>
            </div>

            <div style="clear: both;"></div>
        </div>


    </section> 
    
    <script>
    
	
 	//특정식당 사진가져오기
	 $.ajax({          
	      url: '/naman/rest/restphoto.action',
	      type: 'get',
	      data: 'contentid=' + ${contentid},
	      dataType: 'json',
		  async: false,
	      success: function(data){
	          console.log(data);
	          var myItem = data.response.body.items.item;
	         	var list = document.getElementById("photo-items");
	         	
	         	if(data.response.body.items==0){
	         		 for(var i=0; i<=5; i++){
	         			 
	         			var output = '';
		         		
		         		  output += '<figure class="list-photo">'
		         	      output += '<figure class="restaurant-photos-item">'
		         	      output += '<img class="" src="/naman/resources/img/rest/res.png">'
		         	      output += '</figure></figure>'
		         	    	 list.innerHTML += output;
	         		 	}
	         	   
	         	} else{
	         		 for(var i=0; i<=5; i++){

			            	  var output = '';
		
				              output += '<figure class="list-photo">'
				              output += '<figure class="restaurant-photos-item">'
				              if(myItem[i].originimgurl==undefined){
				            	  output += '<img class="" src="/naman/resources/img/rest/res.png">'
				              } else{
				              output += '<img class="" src="'+myItem[i].originimgurl+'">'
				              }
				              output += '</figure></figure>'
				            	  list.innerHTML += output;	 
		         		 	}
	            }
		    },
	      error: function(XMLHttpRequest, textStatus, errorThrown){
	    	  alert("Status:" + textStatus); alert("Error:" + errorThrown);
	      }
		 });  
 	
//특정식당 기본 정보 가져오기
	  $.ajax({          
     url: '/naman/rest/restview.action',
     type: 'get',
     data: "contentid=" + ${contentid},
     async: false,
     dataType: 'json',
     success: function(data){
         console.log(data);
         var myItem = data.response.body.items.item;
        	var name = document.getElementById("restName");
			var addr = document.getElementById("restAddress");
			var tel = document.getElementById("restTel");
			var mapx = document.getElementById("mapx");
			var mapy = document.getElementById("mapy");
        	name.innerText = myItem.title;
        	addr.innerText = myItem.addr1;
        	tel.innerText = myItem.tel;
        	mapx.value = myItem.mapx;
        	mapy.value = myItem.mapy;
             
	             },
     error: function(XMLHttpRequest, textStatus, errorThrown){
   	  alert("Status:" + textStatus); alert("Error:" + errorThrown);
     }
	  });  

	//식당 세부정보 받아오기
		 $.ajax({          
		      url: '/naman/rest/restdetail.action',
		      type: 'get',
		      data: "contentid=" + ${contentid},
		      dataType: 'json',
		      success: function(data){
		    	  var myItem = data.response.body.items.item;
		    	  
		        	var openTime = document.getElementById("restOpenTime");
					var restBreak = document.getElementById("restBreak");
					var restMainMenu = document.getElementById("restMainMenu");
					var restMenu = document.getElementById("restMenu");
					var restReserve = document.getElementById("restReserve");
					 if(myItem.opentimefood!=undefined){
						openTime.innerText = myItem.opentimefood;
					 }
					 if(myItem.restdatefood!=undefined){
						restBreak.innerText = myItem.restdatefood;
					 }
					 if(myItem.firstmenu!=undefined){
						restMainMenu.innerText = myItem.firstmenu;
					 }
					 if(myItem.treatmenu!=undefined){
						 restMenu.innerText = myItem.treatmenu;
					 }
					 if(myItem.reservationfood!=undefined){
						 restReserve.innerText = myItem.reservationfood;
					 }
					 if(myItem.packing!= undefined){
						 restParking.innerText = myItem.packing;	
					 }
/* 		    	   var list = document.getElementById("restInfoDetail");
		    	   
		    	   var output='';
		    	   
		    	   if(myItem.opentimefood!=undefined){
			    	   output+='<tr><th>영업시간</th>'
			    	   output+='<td id="restOpenTime">'+ myItem.opentimefood +'</td></tr>'
		    	   }
		    	   if(myItem.restdatefood!=undefined){
			    	   output+='<tr><th>휴무일</th>'
			    	   output+='<td id="restBreak">'+ myItem.restdatefood +'</td></tr>'
		    	   }
		    	   if(myItem.firstmenu!=undefined){
			    	   output+='<tr><th>메인메뉴</th>'
			    	   output+='<td id="restMainMenu">'+ myItem.firstmenu +'</td></tr>'
		    	   }
		    	   if(myItem.treatmenu!=undefined){
			    	   output+='<tr><th>취급메뉴</th>'
			    	   output+='<td id="restMenu">'+ myItem.treatmenu +'</td></tr>'
		    	   }
		    	   if(myItem.reservationfood!=undefined){
			    	   output+='<tr><th>예약안내</th>'
			    	   output+='<td id="restReserve">'+ myItem.reservationfood +'</td></tr>'
		    	   }
		    	   if(myItem.packing!= undefined){
			    	   output+='<tr><th>주차가능여부</th>'
				       output+='<td id="restParking">'+ myItem.packing +'</td></tr>'
			        }
				
		    	   
		    	   list.innerHtml = output;
  */
/* 		    	   if(myItem.opentimefood!=undefined){
		    	  $("#restOpenTime").text = myItem.opentimefood;
		    	   }
		    	  $("#restBreak").text = myItem.restdatefood;
		    	  $("#restMainMenu").text = myItem.firstmenu;
		    	  $("#restMenu").text = myItem.treatmenu;
		    	  $("#restReserve").text = myItem.reservationfood;
		    	  $("#restParking").text = myItem.packing;  */
		      },
		      error: function(XMLHttpRequest, textStatus, errorThrown){
		    	  alert("Status:" + textStatus); alert("Error:" + errorThrown);
		      }
		 });

	
		//선택 식당 주변 식당 가져오기
		 $.ajax({          
		      url: '/naman/rest/aroundrest.action',
		      type: 'get',
		      data: 'mapx=' + $("#mapx").val() + '&mapy=' + $("#mapy").val(),
		      dataType: 'json',
			  async: false,
		      success: function(data){
		          console.log(data);
		          console.log($("#mapx").val());
		          var myItem = data.response.body.items.item;
		         	var list = document.getElementById("NearByRestaurantList");
		         	
		         		 for(var i=0; i<=myItem.length; i++){
		         			 
		         			var output = '';
			         		
		         			output+='<ul class="NearByRestaurantList__List">'
		         			output+='<li class="NearByRestaurantItem NearByRestaurantList__Item">'
		         			output+='<div class="NearByRestaurantItem__PictureAndContent">'
		         			output+='<a class="NearByRestaurantItem__PictureLink" href="">'
			         		output+='<input type="hidden" value='+ myItem[i].contentid+'>'
			         		 if(myItem[i].firstimage != undefined){
		         				output+='<img class="NearByRestaurantItem__Picture loaded" alt="near by popular restaurant picture" src="'+myItem[i].firstimage +'">'
			         		 } else{
			         			output+='<img class="NearByRestaurantItem__Picture loaded" alt="near by popular restaurant picture" src="/naman/resources/img/rest/res.png">'
			         		 }
		         			output+='</a>'
		         			output+='<div class="NearByRestaurantItem__Content">'
		         			output+='<div class="NearByRestaurantItem__NameWrap">'
		         			output+='<a class="NearByRestaurantItem__Name" href="">'+myItem[i].title+'</a>'
		         			output+='<span class="NearByRestaurantItem__Rating">4.0</span>'
		         			output+='</div>'
		         			output+='<div class="NearByRestaurantItem__InfoWrap">'
		         			output+='<dl class="NearByRestaurantItem__Info">'
		         			output+='<dt class="NearByRestaurantItem__InfoLabel">음식 종류</dt>'
		         			output+='<dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--SubCuisine" id="foodtype"></dd>'
		         			output+='</dl>'
		         			output+='<dl class="NearByRestaurantItem__Info">'
		         			output+='<dt class="NearByRestaurantItem__InfoLabel">위치</dt>'
		         			output+='<dd class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--Metro">'+myItem[i].addr1+'</dd>'
		         			output+='</dl></div></div></div></li></ul>'
		         			output+='<input type="hidden" class="listmapx" value='+ myItem[i].mapx +'>'
		         			output+='<input type="hidden" class="listmapy" value='+ myItem[i].mapy +'>'

			         	    	 list.innerHTML += output;
		         		 	}
		         	   
		         
			    },
		      error: function(XMLHttpRequest, textStatus, errorThrown){
		    	  alert("Status:" + textStatus); alert("Error:" + errorThrown);
		      }
			 });  
 	
 	
 	
    </script>
    
    
        <!-- 카카오맵API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6d7efc4aa41d37ac9bcac0dd5b84508"></script>
	<script>
		var mapx = document.getElementById("mapx");
		var mapy = document.getElementById("mapy");
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(mapy.value, mapx.value),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		var markerPosition  = new kakao.maps.LatLng(mapy.value, mapx.value);
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		var listmapx= document.getElementsByClassName("listmapx");
		var listmapy= document.getElementsByClassName("listmapy");
		var listtitle = document.getElementsByClassName("NearByRestaurantItem__Name");
		
		var postions="";
			
			for(var i=0; i<=listtitle.length; i++){
			 positions = { title: listtitle[i].innerText, latlng : new kakao.maps.LatLng(listmapy[i].value, listmapx[i].value) };
				
			}



		// 마커 이미지의 이미지 주소입니다
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
	</script>
    

    