<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section>
	
	<h3>수정</h3>
	
	<form method="POST" action="/naman/free/editok.action">
	<table class="table table-bordered">
		<tr>
			<th style="width: 120px;">제목</th>
			<td style="width:auto;"><input type="text" name="title" class="form-control" value="${dto.title}"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content" class="form-control" style="height:300px;">${dto.content}</textarea></td>
		</tr>
	</table>
	<div class="btns">
		<button type="submit" class="btn btn-warning">쓰기</button>
		<button type="button" class="btn btn-default" onclick="location.href='/naman/free/list.action';">목록</button>
	</div>
		<input type="hidden" name="freeSeq" value="${dto.freeSeq}">
	</form>

</section>