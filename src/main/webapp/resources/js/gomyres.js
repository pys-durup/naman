
$(function(){
	
//숙소예약목록으로 이동
	$("#btnfind").click(function(){
		
		location.href="/naman/rest/myrest.action"
		
	});




//음식점 목록 가져오기

//		var mapx = "126.981106";
//		var mapy = "37.568477";
//		
//	
//	
//		}); 

//특정 식당 선택시 contentid를 넘겨줌. 
	$(document).on("click", ".restitle",function(event){	
		var contentid= $(this).children().val();
		location.href="/naman/rest/restdetailview.action?contentid="+contentid;

		});
	
	

});






