<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section>
	
	<h3>글삭제</h3>
	
	<form method="POST" action="/naman/free/delok.action">
	
	<div class="btns">
		<button type="submit" class="btn btn-warning">삭제</button>
		<button type="submit" class="btn btn-default" onclick="location.href='/naman/free/list.action';">목록</button>
	</div>
		<input type="hidden" name="freeSeq" value="${freeSeq}">
	</form>

</section>