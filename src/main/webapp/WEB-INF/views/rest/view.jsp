
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<section class="boardContainer">

	<h3>${dto.title}</h3>
	

	<table class="table table-bordered boarderTable">
		<tr>
			<th style="width:120px;">번호</th>
			<td style="width:auto;">${dto.resrecseq}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${fn:substring(dto.name,0,1)}** <small> (${dto.email})</small></td>
		</tr>	
		<tr>
			<th>작성일</th>
			<td>${dto.writedate}</td>
		</tr>	
	</table>
	
	<textarea style="width:800px; height: 400px; outline: none; resize:none; border:1px solid #DDD;"readonly>  ${dto.content}</textarea>
	
	<div class="btns">

		<button type="submit" class="btn btn-default" onclick="location.href='/naman/rest/list.action';">목록</button>
		<button type="submit" class="btn btn-default" onclick="location.href='/naman/rest/edit.action?resrecseq=${dto.resrecseq}';">수정</button>
		<button type="submit" class="btn btn-default" onclick="location.href='/naman/rest/del.action?resrecseq=${dto.resrecseq}';">삭제</button>
	</div>
	
	 				<form method="POST" action="/naman/rest/commentok.action">
                <div class="commentbox panel panel-default">
                    <div class="panel-body">
                    	<!-- 
                    		1.<input name="이름"
                    		2.DB테이블의 컬럼명
                    		3. DTO 멤버변수명 
                    		
                    		<form> 태그내에 텍스트 박스가 유일하면.. 텍스트박스에서 엔터를 치면 자동으로 submit이 된다.
                    	 -->
                        <input id="content" name="content" type="text" class="form-control" placeholder="comment" required>
                    </div>
                    <input type="hidden" name="resrecseq" value="${dto.resrecseq}">
                </div>
                </form>
 
                <table class="table comment">
                    <c:if test="${empty clist}">
                    <tr>
                    	<td>댓글이 없습니다.</td>
                    </tr>
                    </c:if>
                	<c:if test="${not empty clist}">
					<c:forEach items="${clist}" var="cdto">
                    <tr>
                        <td>
                            <span class="comment">${cdto.content}</span>
                            <span class="date">${cdto.writedate}</span>
                            <span class="name">${fn:substring(cdto.name,0,1)}** <small>(${cdto.email})</small></span>
                            
                            <c:if test="${dto.customerseq = seq}" >
                            <span class="delete" onclick="location.href='/naman/rest/deletecommentok.action?seq=${cdto.resreccommentseq}&resrecseq=${dto.resrecseq}'">[삭제]</span>
              				</c:if>
                        </td>
                    </tr>
                    </c:forEach>
                    </c:if>

                </table>

	
	


</section>
    