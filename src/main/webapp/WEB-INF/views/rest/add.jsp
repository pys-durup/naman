<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="container">

	<h3>맛집 추천 글쓰기</h3>
	
	<form method="POST" action ="/naman/rest/addok.action">
	<table class="table table-bordered boarderTable">
		<tr>
			<th style="width:120px;">제목</th>
			<td style="width:auto;"><input type="text" name="title" class="form-control"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content" class="form-control"  style="height:300px;"></textarea></td>
		</tr>	
	
	</table>
	
	<div class="btns">
		<button type="submit" class="btn btn-warning" onclick="location.href='/naman/rest/addok.action';">쓰기</button>
		<button type="submit" class="btn btn-default" onclick="location.href='/naman/rest/list.action';">목록</button>
	</div>
	
	
	</form>
	
	


</section>
    