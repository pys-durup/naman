<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 정보</title>

	<link rel="stylesheet" href="/naman/resources/css/header.css">
    <link rel="stylesheet" href="/naman/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/naman/resources/css/hotelInfo.css">
    <script src="/naman/resources/js/jquery-1.12.4.js"></script>
    <script src="/naman/resources/js/bootstrap.js"></script>

</head>
<body>
	
	<%@ include file="/WEB-INF/views/main/headerNon.jsp" %>
	
    <div class=wrapper>
        <div class="selector">
            <div class="hotelselect hotelinfoselect" onclick="fnimageMove()">숙소 정보</div>
            <div class="hotelselect hotelroomsselect" onclick="fnroomMove()">객실</div>
            <div class="hotelselect hotelreviewselect" onclick="fnreviewMove()">이용 후기</div>
            <div class="hotelselect hotelmapselect">지도</div>
        </div>
    </div>
    <div class="content">
        <div class="hotelimage" id="hotelimage">
        	<c:forEach items="${hotelInfoPic}" var="picdto" begin="0" end="0">
            <div class="mainimage"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔1"></div>
            </c:forEach>
            <c:forEach items="${hotelInfoPic}" var="picdto" begin="1" end="1">
            <div class="subimage subbigimage subbigimage1"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔2"></div>
            </c:forEach>
            <c:forEach items="${hotelInfoPic}" var="picdto" begin="2" end="2">
            <div class="subimage subbigimage subbigimage2"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔3"></div>
            </c:forEach>
            <c:forEach items="${hotelInfoPic}" var="picdto" begin="3" end="3">
            <div class="subimage subsmallimage subsmallimage1"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔4"></div>
            </c:forEach>
            <c:forEach items="${hotelInfoPic}" var="picdto" begin="4" end="4">
            <div class="subimage subsmallimage subsmallimage2"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔5"></div>
            </c:forEach>
            <c:forEach items="${hotelInfoPic}" var="picdto" begin="5" end="5">
            <div class="subimage subsmallimage subsmallimage3"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔6"></div>
            </c:forEach>
            <c:forEach items="${hotelInfoPic}" var="picdto" begin="6" end="6">
            <div class="subimage subsmallimage subsmallimage4"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="호텔7"></div>
            </c:forEach>
        </div>
        <div style="clear: both; margin-bottom: 20px;"></div>
        <div class="hotelinfo">
            <div class="hotelgrade">${hotelInfoGrade.hotelGrade}</div>
            <div class="hotelname">${hotelInfo.name}</div>
            <div class="hotelreview">${hotelInfoGrade.reviewCnt}개의 이용 후기</div>
            <div class="hotellocation">${hotelInfo.address}</div>
        </div>
        <div class="hoteladditional">
            <div class="hotelmap"><img src="/naman/resources/images/infomap.png" alt="지도"></div>
            <div class="hotelservice">
                <div>부가시설</div>
                <c:forEach items="${hotelInfoService}" var="servicedto">
                <p>${servicedto.serviceName}</p>
                </c:forEach>
            </div>
            <div class="hotelrestaurant">
                <div>맛집</div>
                <p>맛집</p>
                <p>맛집</p>
                <p>맛집</p>
            </div>
            <div class="hotelexplation">
                <div>호텔 정보</div>
                <p>웹&nbsp;사&nbsp;이&nbsp;트 <a href="${hotelInfo.webAddress}">${hotelInfo.webAddress}</a></p>
                <p>전&nbsp;화&nbsp;번&nbsp;호 ${hotelInfo.tel}</p>
                <span>입실퇴실시간 ${hotelInfo.checkin} ~</span>
                <span>${hotelInfo.checkout}</span>
            </div>
        </div>
        <h3 style="font-weight: bold; margin-top: 50px;">객실을 선택하세요</h3>
        <hr>
        <div class="hotelreservation" id="hotelreservation">
        	<c:forEach items="${hotelInfoRoom}" var="roomdto">
            <table>
                <thead>
                    <tr>
                        <th class="roomname" colspan="3">${roomdto.roomCategory}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    	<c:forEach items="${hotelInfoPic}" var="picdto" begin="4" end="4">
                        <td class="roomimage"><img src="/naman/resources/images/hotel/${picdto.fileName}" alt="객실"></td>
                        </c:forEach>
                        <td class="roomamount"><fmt:formatNumber value="${roomdto.amount}" pattern="#,###" />원</td>
                        <td>
                            <button type="button" id="reservation" name="reservation" class="btn btn-primary">예약하기</button>
                        </td>
                    </tr>
                </tbody>
            </table>
            </c:forEach>
        </div>
        <h3 style="font-weight: bold; margin-top: 50px;">이용 후기</h3>
        <hr>
        <div class="review" id="review">
        	<c:forEach items="${hotelInfoReview}" var="reviewdto">
            <div class="reviewinfo">
                <div class="reviewgrade">${reviewdto.grade}</div>
                <div class="reviewroom">${reviewdto.roomCategory}</div>
                <div class="reviewreserdate">${reviewdto.checkin}</div>
            </div>
            <div class="reviewmain">
                <div class="reviewsubject">${reviewdto.title}</div>
                <div class="reviewcontent">${reviewdto.content}</div>
                <div class="reviewregdate">작성일 : ${reviewdto.regdate}</div>
            </div>
            <div style="clear: both; padding-bottom: 20px;"></div>
            <hr>
            </c:forEach>
        </div>
    </div>

    <script>
	    function fnimageMove(){
	        var offset = $("#hotelimage").offset();
	        $('html, body').animate({scrollTop : offset.top - 100}, 400);
	    }
	    
	    function fnroomMove(){
	        var offset = $("#hotelreservation").offset();
	        $('html, body').animate({scrollTop : offset.top - 180}, 400);
	    }
	    
	    function fnreviewMove(){
	        var offset = $("#review").offset();
	        $('html, body').animate({scrollTop : offset.top - 180}, 400);
	    }  
	</script>
    

</body>
</html>