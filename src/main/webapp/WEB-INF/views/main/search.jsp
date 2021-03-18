<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form action="" method="GET">
	<div id="outline">
		<div id="searchbar">
			<i class="fas fa-search"></i> <input autocomplete="off" type="text" id="searchtext" name="searchtext"
				placeholder="지역, 도시명">
				<div id="searachbox" style ="padding-left:60px; border-radius: 10px; width : 450px; height: 0px; background-color: #fff; font-size: 1.3em; color: #777; position: relative; left :0px; top: 10px;margin-bottom:2px;"></div>
		</div>
		<div id="searchDates">
			<input type="date" id="inDate" class="cal" name="inDate"> <i
				class="fas fa-angle-right"></i> <input type="date" id="outDate" class="cal" name="outDate">
		</div>
		<div id="person">
			<select id="selperson" name="selperson">
				<option>인원수</option>
				<option value="1">성인 1명</option>
				<option value="2">성인 2명</option>
				<option value="3">성인 3명</option>
				<option value="4">성인 4명</option>
				<option value="5">성인 5명</option>
			</select>

		</div>

	</div>
	<div id="find">
	<!-- text , inDate, outDate,  -->
		<input type="submit" id="" value="검색하기">
	</div>
</form>

<script>


	$(document).keyup(function() {
		if ( event.keyCode == 27) {
			 $("#searachbox").css("display","none");
		}
	}); 
	

	
	$("#searchtext").keyup(function() {
		  

		$("#searachbox").css("display","block");
		/* console.log($("#searchtext").val()); */
		temp = "";
		$.ajax({
			type:"GET",
			url:"/naman/ajax/city.action",
			data: "searchtext=" + $("#searchtext").val(),
			dataType:"text", //****돌려받는 데이터를 String 형식으로 받겠다.
			success : function(result) {
				
				//region, name
				let temp = result.split(",");
				
				let size = 0;
				let citys = "";
				
				for(let i=0; i<temp.length-1; i++) {
					citys += "<div class='innersearch'>" + temp[i] + "</div>";
					size ++;
				}
				
				 $("#searchbar").keyup(function() {
				        $("#searachbox").css({
				            "height" : 26*size 
				        })
				        
				        $("#searachbox").html(citys);
				    });
				
				 $(".innersearch").click(function () {
					 let search = $(this).html();
					 $("#searchtext").val(search);
					 $("#searachbox").css("display","none");
				 });


			},
			error : function(a,b,c) {
				console.log(a,b,c);
			}
		});
	});
	
	
	</script>