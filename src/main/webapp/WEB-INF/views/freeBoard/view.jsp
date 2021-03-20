<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<section>
	
	<h3>글보기</h3>
	
	
	<table class="table table-bordered">
		<tr>
			<th style="width: 120px;">번호</th>
			<td style="width:auto;">${dto.freeSeq}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${dto.name }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${dto.title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${dto.content }</td>
		</tr>
		<tr>
			<th>날짜</th>
			<td>${dto.regdate }</td>
		</tr>
	</table>
	<div class="btns">
		<button type="submit" class="btn btn-warning" onclick="location.href='/naman/free/list.action';">목록</button>
		<button type="button" class="btn btn-default" onclick="location.href='/naman/free/edit.action?freeSeq=${dto.freeSeq}';">수정</button>
		<button type="button" class="btn btn-default" onclick="location.href='/naman/free/del.action?freeSeq=${dto.freeSeq}';">삭제</button>
	</div>

</section>