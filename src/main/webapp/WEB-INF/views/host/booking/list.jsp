<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/naman/resources/css/host/booking.css">


<section>
<!-- 	<h1>숙소 상세 정보</h1> -->

		<c:if test="${empty hotelSeq}">
			<div style="font-size:1.4em; text-align:center; padding: 50px 0px">호스트님, 안녕하세요!<br>예약을 받기 위해 숙소를 등록해주세요.</div>
		</c:if>


	<c:if test="${not empty hotelSeq}">
	
	<form id="searchForm" method="GET" action="/naman/host/reservation/booking.action">
	<div id="searchDate">
		<input type="button" class="btn btn-default" id="btnSearch"
			value="상세 검색">
		<ul id="search">
			<li><label for="">체크인</label> 
				<input type="date" id="chkinStr" name="chkinStr"> 
				<input type="date" id="chkinEnd" name="chkinEnd">
				<input type="button" class="btn btn-default" id="btnChkin" value="확인" onclick="$('#searchForm').submit();"></li>
			<li><label for="">체크아웃</label> 
				<input type="date" id="chkoutStr" name="chkoutStr"> 
				<input type="date" id="chkoutEnd" name="chkoutEnd">
				<input type="button" class="btn btn-default" id="btnChkout" value="확인" onclick="$('#searchForm').submit();"></li>
		</ul>
	</div>
	</form>

	<div id="result">검색결과</div>
	
		
		
	<div id="outerBox">
		<div id="booking">
			<table class="table table-hover" id="list">
				<tr>
					<th style="width: 150px;">예약번호</th>
					<th style="width: 150px">고객명</th>
					<th style="width: 150px">예약일</th>
					<th style="width: 150px">체크인</th>
					<th style="width: 150px">체크아웃</th>
					<th style="width: 150px">객실</th>
					<th style="width: 150px">요금</th>
					<th style="width: 150px">상태</th>
				</tr>

				<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.hotelReserveSeq}</td>
					<td>${dto.name}</td>
					<td>${dto.reserveDate}</td>
					<td>${dto.checkin}</td>
					<td>${dto.checkout}</td>
					<td>${dto.roomCategory}</td>
					<td>${dto.amount}</td>
					<td><select class="form-control input-sm">
							<option value="1" selected>${dto.state}</option>
							<option value="2">취소</option>
							<option value="3" disabled>취소 요청</option>
					</select></td>					
				</tr>
				</c:forEach>
				
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="8" style="font-size:1.2em; padding-top:180px;">
					예약 목록이 없습니다.
					</td>
				</tr>
				</c:if>
				
			</table>

			<nav aria-label="Page navigation example" id="pagnation">
				<ul class="pagination">				
					${pagebar}
				</ul>
			</nav>
		</div>
	</div>
	</c:if>
</section>



<script>

    $("#btnSearch").click(function() {
        if ($("#search").css("display") == "none") {
            $("#search").css("display", "block");
        } else {
            $("#search").css("display", "none");
        }
    });

</script>