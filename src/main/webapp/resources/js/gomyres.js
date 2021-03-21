
$(function(){
	
//숙소예약목록으로 이동
	$("#btnfind").click(function(){
		
		location.href="/naman/rest/myrest.action"
		
	});

	
	$("#recomendBoard").click(function(){
		
		location.href="/naman/rest/list.action"
		
	});



//특정 식당 선택시 contentid를 넘겨줌. 
	$(document).on("click", ".restitle",function(event){	
		var contentid= $(this).children().val();
		location.href="/naman/rest/restdetailview.action?contentid="+contentid;

		});
	

	
//리뷰쓰기 버튼선택시 색상변경 및 스코어 넣기
	$("#good").click(function(){
		
		$(this).css("color","orange");
		$("#normal").css("color","#DDD");
		$("#bad").css("color","#DDD");
		
	});
	
	$("#normal").click(function(){
		
		$(this).css("color","orange");
		$("#good").css("color","#DDD");
		$("#bad").css("color","#DDD");
		
	});
	$("#bad").click(function(){
		
		$(this).css("color","orange");
		$("#good").css("color","#DDD");
		$("#normal").css("color","#DDD");
		
	});
	
	
	
});






