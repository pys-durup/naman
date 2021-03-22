<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="headerContainer">
	<nav id="nav">
		<ul>
			<li id="logo"><img src="" id="logo" >나만여행</li>
			<li><a class="menuLink" href="#">맛집</a></li>
			<li><a class="menuLink" href="#">여행</a></li>
			<li><a class="menuLink" href="#">투어티켓</a></li>
			<li><a class="menuLink" href="/naman/free/list.action">게시판</a></li>
			<c:if test="${h == 'get'}">
			<li><a class="menuLink link2" href="/naman/host/reservation/booking.action">숙소등록</a></li>
			</c:if>
			<li><a class="menuLink link3" href="#"><i
					class="far fa-user-circle"></i> </a></li>
		</ul>
			<div style="clear: both;"></div>
		<hr style="height: 1px;">
	</nav>

	<div id="forinfo"></div>
</div>

<script>

        var box;
        var box2;
        var forinfo = document.getElementById("forinfo");
        var flag = false;

        $(window).click(function() {
           
            if(flag) {
                $(".box").remove();
                flag=false;
            }
    
        });

        $(".link3").click(function() {
            //alert("면접제안 회원, 채용 회원 보기 만들기");
            
            event.cancelBubble = true;
            if (flag) {
                $(".box").remove();
            }
            

            box = document.createElement("div");

            box.className = "box";
            box.style.left = event.clientX + "px";
            box.style.top = event.clientY + "px";
            
            forinfo.appendChild(box);
            box.innerHTML = "<a href='/naman/mypage.action'>마이페이지</a><a href='http://www.naver.com'>이용내역</a><a href='http://www.naver.com'>내리뷰</a><a href='http://www.naver.com'>내 게시글</a><a href='/naman/logout.action'>로그아웃</a>";
            
            flag = true;                        
        });
        
    </script>