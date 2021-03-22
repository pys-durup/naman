<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="headerContainer">
	<div id="nav">
		<ul id="menuList">
			<c:if test="${empty name}">
			<li><a class="menu">숙소 등록 후<br>이용 가능합니다.</a></li>
			</c:if>
			
			<li><a class="menu">${name}</a></li>
			<hr>
			<li><span class="glyphicon glyphicon-calendar" id="remove"
				style="color: gray;"></span><a class="menu" href="/naman/host/reservation/booking.action">&nbsp&nbsp&nbsp예약현황</a></li>
			<li><span class="glyphicon glyphicon-th-list" id="remove"
				style="color: gray;"></span><a class="menu" href="/naman/host/rooms/list.action">&nbsp&nbsp&nbsp객실정보</a></li>
			<li><span class="glyphicon glyphicon-stats" id="remove"
				style="color: gray;"></span><a class="menu" href="/naman/host/statistics/main.action">&nbsp&nbsp&nbsp통계</a></li>
		</ul>
	</div>
</div>