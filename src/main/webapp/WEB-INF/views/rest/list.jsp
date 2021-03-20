<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<section class="boardContainer">
	<h3>맛집 추천 게시판</h3>
	<table class="table table-bordered boarderTable">
	
	<tr>
		<th style="width:50px;">번호</th>
		<th style="width:autopx;">제목</th>
		<th style="width:200px;">작성자</th>
		<th style="width:200px;">작성일</th>
	</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.resrecseq}</td>
		<td><a href="/naman/rest/view.action?resrecseq=${dto.resrecseq}">${dto.title}</a></td>
		<td>${fn:substring(dto.name,0,1)}** <small>${dto.email }</small></td>
		<td>${dto.writedate}</td>
	</tr>
	</c:forEach>
	</table>
	<input type="button" class="btn btn-default" onclick="location.href='/naman/rest/add.action'"value="글쓰기">	
	<input type="button" class="btn btn-default" value="뒤로">	
</section>