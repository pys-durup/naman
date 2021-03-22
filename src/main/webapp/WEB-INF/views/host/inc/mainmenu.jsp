<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="mainNav" style="text-align:left">
	<h2 style="float:left; font-size:22px; padding-left:40px;">${title}</h2>
	<ul>
	<!-- 	<li>예약 현황</li> -->
		<li><a href="/naman/index.action">메인</a></li>

		<!-- 회원번호, 숙소번호 받기 -->
		<c:choose>
			<c:when test="${empty hotelSeq}">
				<li><a href="/naman/host/register.action">숙소 정보 등록</a></li>
			</c:when>
			<c:when test="${not empty hotelSeq}">
				<li><a href="/naman/host/edit.action">숙소 정보 수정</a></li>
			</c:when>
		</c:choose>

		
		
		<c:if test="${not empty customerSeq}">
		<li><a href="/naman/host/logout.action">로그아웃</a></li>
		</c:if>
		
		
	</ul>
	<div style="clear: both;"></div>
</div>