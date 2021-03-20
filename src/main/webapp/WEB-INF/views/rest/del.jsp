

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="boardContainer">

	<!-- <h3 style="margin-top:200px; margin-left:100px; ">글 삭제</h3> -->
	
	<div style="margin-top:200px; margin-left:100px; font-size:20px;">정말 삭제하시겠습니까?</div>
	
	<form method="POST" action ="/naman/rest/delok.action">
	
	<div class="btns" style="margin-top: 30px; margin-left:100px;">
		<button type="submit" class="btn btn-warning" onclick="location.href='/naman/rest/delok.action';">삭제</button>
		<button type="submit" class="btn btn-default" onclick="location.href='/naman/rest/list.action';">취소</button>
	</div>
	<input type="hidden" name="resrecseq" value="${resrecseq}">
	
	</form>
	
	


</section>