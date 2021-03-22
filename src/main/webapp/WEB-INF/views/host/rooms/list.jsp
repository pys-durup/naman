<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/naman/resources/css/host/rooms/list.css">


<section>
	<div class="tbls">
		<h1 style="border-bottom: 1px solid rgb(161, 161, 161); padding-bottom: 10px;">등록한 객실</h1>
		<hr>

		<form method="POST" id="formRoom">
		<div id="roomInfo">
			<table class="table table-hover" id="list">
				<tr>
					<th class="w50"><input type="checkbox" id="all" name="all" value=""></th>
					<th class="w100">객실번호</th>
					<th class="w300">객실명</th>
					<th class="w100">수용인원</th>
					<th class="w200">1박당 요금</th>
					<th class="w135">체크인</th>
					<th class="w135">체크아웃</th>
					<th class="w80">객실상태</th>
					<th class="w80">공개여부</th>
				</tr>

				<c:forEach items="${list}" var="dto">
				<tr>	
					<td><input type="checkbox" id="del" name="selBox" value="${dto.roomSeq}"></td>
					<td>${dto.roomSeq}</td>
					<td>${dto.roomCategory}</td>
					<td>최대 ${dto.person}인</td>
					<td>${dto.amount}</td>
					<td>${dto.checkin}</td>
					<td>${dto.checkout}</td>
					<td>
						<select>
							<c:choose>
								<c:when test="${dto.state == 0}">
									<option value="0">미사용</option>
								</c:when>
								<c:when test="${dto.state == 1}">
									<option value="1">사용</option>
								</c:when>
							</c:choose>				
						</select>
					</td>
					<td>
						<select id="closed">
							<c:if test="${dto.closed.equals('0')}">
								<option value="0" selected>공개</option>
								<option value="1">비공개</option>
							</c:if>		
							<c:if test="${dto.closed.equals('1')}">
								<option value="0">공개</option>
								<option value="1" selected>비공개</option>
							</c:if>		
						</select>
					</td>
				</tr>
				</c:forEach>
				
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="9" style="font-size:16px; text-align: center; padding:50px;">
					등록된 객실이 없습니다.
					</td>
				</tr>
				</c:if>
				
			</table>

			
			<div class="btnRooms">
				<input type="button" class="btn btn-primary btn-sm btnAdd" value="객실 추가 등록" onclick="location.href='/naman/host/rooms/add.action';">
				<input type="submit" class="btn btn-primary btn-sm btnEdit" value="객실 정보 수정" formaction="/naman/host/rooms/edit.action">
				<input type="submit" class="btn btn-primary btn-sm btnDel" value="객실 삭제" formaction="/naman/host/rooms/delok.action">
			</div>
		</div>
	</form>
	

		<h1
			style="border-bottom: 1px solid rgb(161, 161, 161); padding-bottom: 10px;">숙소
			정보</h1>
		<hr>
		<div id="accomInfo">
			<table class="table table-hover" id="list">
				<tr>
					<th class="" style="width:250px">숙소명</th>
					<th class="" style="width:300px">주소</th>
					<th class="" style="width:250px">웹사이트 주소</th>
					<th class="" style="width:120px">체크인</th>
					<th class="" style="width:120px">체크아웃</th>
					<th class="" style="width:100px">공개여부</th>
				</tr>
				<tr>
					<td>${dto.name}</td>
					<td>${dto.address}</td>
					<td>${dto.webAddress}</td>
					<td>${dto.checkin}</td>
					<td>${dto.checkout}</td>
					<td><select>
						<c:choose>
							<c:when test="${dto.closed == 0}">
							<option value="0" selected>공개</option>
							<option value="1">비공개</option>
							</c:when>
							<c:when test="${dto.closed == 1}">
							<option value="0">공개</option>
							<option value="1" selected>비공개</option>
							</c:when>
						</c:choose>	
							
							
					</select></td>
				</tr>
				
			</table>
			
			<div class="btnRooms">
				<input type="button" class="btn btn-primary btn-sm btnEdit" value="숙소 정보 수정" onclick="location.href='/naman/host/edit.action';">
			</div>
			
		</div>
	</div>
</section>


<script>

/*  	<c:choose>
		<c:when test="${dto.closed.equals('0')}">
			$("#closed").val("0").prop("selected", "true")
		</c:when>
		<c:when test="${dto.closed.equals('1')}">
			$("#closed").val("1").prop("selected", "true")
		</c:when>
	</c:choose>	 */

</script>


