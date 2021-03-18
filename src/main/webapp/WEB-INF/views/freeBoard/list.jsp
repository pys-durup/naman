<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="listContent" style="width : 1400px;
    	margin: 0px auto; "> 
<div id="boardTop">
        <div class="boardTitle">자유게시판</div>
        <div class="boardTitle">맛집추천게시판</div>
        <div class="boardTitle">여행일정게시판</div>
        <div class="boardTitle">숙소추천게시판</div>
        <div class="boardTitle">동행찾기게시판</div>
    </div>
    <div style="clear:both;"></div>
    <div id="justline"></div>

    <table id="freeBoard" class="table table-boarderd">
        <tr>
            <th>순서</th>
            <th>제목</th>
            <th>글쓴이</th>
            <th>날짜</th>
            <th>조회수</th>
        </tr>
		<c:forEach items="${list}" var="dto">
        <tr>
            <td>${dto.freeSeq}</td>
            <td><a href="/naman/free/view.action?freeSeq=${dto.freeSeq}">${dto.title}</a></td>
            <td>${dto.name}</td>
            <td>${dto.regdate}</td>
            <td>26</td>
        </tr>
       </c:forEach>
    </table>

	<nav class="pagebar">
             <ul class="pagination">
                 ${pagebar}
             </ul>
         </nav>

         <div style="clear:both;"></div>
         
         
         <div class="btns btn-group" style="float:left;">
	             
             <button type="button" class="btn btn-default" onclick="location.href='/naman/free/add.action';">
                 <span class="glyphicon glyphicon-plus"></span>
                 쓰기
             </button>

         </div>
         <div style="clear:both;"></div>

</div>


		
