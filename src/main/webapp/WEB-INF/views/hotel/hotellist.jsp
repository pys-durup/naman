<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 목록</title>

	<link rel="stylesheet" href="/naman/resources/css/header.css">
    <link rel="stylesheet" href="/naman/resources/css/bootstrap-slider.css">
    <link rel="stylesheet" href="/naman/resources/css/searchBar.css">
    <link rel="stylesheet" href="/naman/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/naman/resources/css/calendar.css">
    <link rel="stylesheet" href="/naman/resources/css/hotelList.css">
    <script type="text/javascript" src="/naman/resources/js/autocomplate.js"></script>
    <script type="text/javascript" src="/naman/resources/js/place.js"></script>
    <script src="/naman/resources/js/jquery-1.12.4.js"></script>
    <script src="/naman/resources/js/bootstrap.js"></script>
    <script src="/naman/resources/js/bootstrap-slider.js"></script>

</head>
<body>

	<%@ include file="/WEB-INF/views/main/headerNon.jsp" %>

    <div id="searchPage" onload="init()">
        <div class="searchBack">
            <div id="searchBar">
                <div class="input-group searchHotel">
                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-search"></span></span>
                    <input type="text" id="searchLocation" class="form-control search" placeholder="도시,지역,숙소명 등으로 검색" aria-describedby="basic-addon1">
                </div>
                <div class="btn-group searchDate" role="group" aria-label="calendar">
                    <button type="button" class="btn btn-default calendarIcon" id="calendarIconIn">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </button>
                    <button type="button" class="btn btn-default calendarDate" id="calendarDateIn">
                        <div class="date" id="dateIn">2021년 3월 24일</div>
                        <div class="dayofweek" id="dayofweekIn">수요일</div>
                    </button>
                    <button type="button" class="btn btn-default calendarIcon" id="calendarIconOut">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </button>
                    <button type="button" class="btn btn-default calendarDate" id="calendarDateOut">
                        <div class="date" id="dateOut">2021년 3월 26일</div>
                        <div class="dayofweek" id="dayofweekOut">금요일</div>
                    </button>
                </div>
                <div class="btn-group">
                    <button class="btn btn-default btn-lg dropdown-toggle searchPerson" type="button" data-toggle="dropdown" aria-expanded="false">
                        <sapn class="glyphicon glyphicon-user"></sapn>성인 2명 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">나혼자 여행객</a></li>
                        <li><a href="#">둘이서 여행객</a></li>
                    </ul>
                </div>
                <input type="button" class="btn btn-primary btn-lg searchComplete" value="검색하기">
            </div>
        </div>
        <div id="calendar" style="display: none;">
            <div class="main">
                <div class="sideb">
                    <div class="header"><i class="fa fa-angle-left" id="previous" aria-hidden="true"><<</i><span><span class="month"> </span><span class="year"></span></span><i class="fa fa-angle-right" id="next" aria-hidden="true">>></i></div>
                    <div class="calender">
                    <table>
                        <thead>
                            <tr class="weedays">
                                <th data-weekday="sun" data-column="0" class="calendardayofweek">일</th>
                                <th data-weekday="mon" data-column="1" class="calendardayofweek">월</th>
                                <th data-weekday="tue" data-column="2" class="calendardayofweek">화</th>
                                <th data-weekday="wed" data-column="3" class="calendardayofweek">수</th>
                                <th data-weekday="thu" data-column="4" class="calendardayofweek">목</th>
                                <th data-weekday="fri" data-column="5" class="calendardayofweek">금</th>
                                <th data-weekday="sat" data-column="6" class="calendardayofweek">토</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="days" data-row="0">
                                <td data-column="0"></td>
                                <td data-column="1"></td>
                                <td data-column="2"></td>
                                <td data-column="3"></td>
                                <td data-column="4"></td>
                                <td data-column="5"></td>
                                <td data-column="6"></td>
                            </tr>
                            <tr class="days" data-row="1">
                                <td data-column="0"></td>
                                <td data-column="1"></td>
                                <td data-column="2"></td>
                                <td data-column="3"></td>
                                <td data-column="4"></td>
                                <td data-column="5"></td>
                                <td data-column="6"></td>
                            </tr>
                            <tr class="days" data-row="2">
                                <td data-column="0"></td>
                                <td data-column="1"></td>
                                <td data-column="2"></td>
                                <td data-column="3"></td>
                                <td data-column="4"></td>
                                <td data-column="5"></td>
                                <td data-column="6"></td>
                            </tr>
                            <tr class="days" data-row="3">
                                <td data-column="0"></td>
                                <td data-column="1"></td>
                                <td data-column="2"></td>
                                <td data-column="3"></td>
                                <td data-column="4"></td>
                                <td data-column="5"></td>
                                <td data-column="6"></td>
                            </tr>
                            <tr class="days" data-row="4">
                                <td data-column="0"></td>
                                <td data-column="1"></td>
                                <td data-column="2"></td>
                                <td data-column="3"></td>
                                <td data-column="4"></td>
                                <td data-column="5"></td>
                                <td data-column="6"></td>
                            </tr>
                            <tr class="days" data-row="5">
                                <td data-column="0"></td>
                                <td data-column="1"></td>
                                <td data-column="2"></td>
                                <td data-column="3"></td>
                                <td data-column="4"></td>
                                <td data-column="5"></td>
                                <td data-column="6"></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    <button class="btn btn-default" id="checkDate">확인</button>
                </div>
            </div>
        </div>
        <!-- 이 아래부터 메인화면 -->
        <div class="overlay"></div>

        <div class="mainpage">
            <div class="row">
                <!-- 왼쪽바 -->
                <div id="searchPageLeft" class="col-xs-6 col-md-3">
                    <div class="map">
                        <img src="/naman/resources/images/map.png" alt="지도" id="mapimg">
                        <input type="button" value="지도보기" id="mapbutton">
                  		<div id="mapclose">x</div>
                    	<div id="map" style="width:70%; height:70%;"></div>
                    </div>
                    <div class="filter">
                        <h3 style="float: left;">필터</h3>
                        <button type="button" class="reset">전체초기화</button>
                        <div style="clear: both;"></div>
                        <hr>
	                    <h3 class="filterunder">평점</h3>
	                    <p class="filterunit" id="grade">0 - 10점</p>
	                    <input id="grade-slider" data-slider-id='grade-slider-color' type="text" data-slider-min="0" data-slider-max="10" data-slider-step="0.5" data-slider-value="0">
	                    <hr>
	                    <h3 class="filterunder">총 숙박 요금</h3>
	                    <p class="filterunit" id="price">30,000 원 ~ 1,400,000 원</p>
	                    <div id="price-slider"></div>
                        <hr>
                        <h3 class="filterunder">부가 서비스</h3>
                        <div id="facilites">
                            <ul>
                                <li><button type="button" class="facilites-btn"><img src="/naman/resources/images/breakfast.png" alt="조식">&nbsp;조식</button></li>
                                <li><button type="button" class="facilites-btn"><img src="/naman/resources/images/spa.png" alt="스파">&nbsp;스파</button></li>
                                <li><button type="button" class="facilites-btn"><img src="/naman/resources/images/swimmingpool.png" alt="수영장">&nbsp;수영장</button></li>
                                <li><button type="button" class="facilites-btn"><img src="/naman/resources/images/wifi.png" alt="와이파이">&nbsp;와이파이</button></li>
                                <li><button type="button" class="facilites-btn"><img src="/naman/resources/images/restaurant.png" alt="레스토랑">&nbsp;레스토랑</button></li>
                                <li><button type="button" class="facilites-btn"><img src="/naman/resources/images/fitness.png" alt="피트니스">&nbsp;피트니스</button></li>
                            </ul>
                        </div>
                        <hr>
                        <h3 class="filterunder" style="margin-bottom: 10px;">숙소 유형</h3>
                        <div id="classification">
                            <div class="checkbox">
                                <div class="rooms">
                                    <label for="hotel">
                                        <input type="checkbox" name="hotel" id="hotel" value="hotel"> 호텔
                                    </label>
                                </div>
                                <div>
                                    <label for="motel">
                                        <input type="checkbox" name="motel" id="motel" value="motel"> 모텔
                                    </label>
                                </div>
                                <div>
                                    <label for="pension">
                                        <input type="checkbox" name="pension" id="pension" value="pension"> 펜션
                                    </label>
                                </div>
                                <div>
                                    <label for="apartment">
                                        <input type="checkbox" name="apartment" id="apartment" value="apartment"> 아파트
                                    </label>
                                </div>
                                <div>
                                    <label for="guesthouse">
                                        <input type="checkbox" name="guesthouse" id="guesthouse" value="guesthouse"> 게스트하우스
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    
                <!-- 오른쪽바 -->
                <div id="searchPageRight" class="col-xs-6 col-md-9">
                    <div>
    
                    </div>
                    <div id="hotellist">
                    	<c:forEach items="${hotelList}" var="dto" varStatus="status">
                        <div class="hotelone" onclick="location.href='/naman/hotel/hotelinfo.action?hotelSeq=${dto.hotelSeq}'">
	                        <div class="hotelimage"><img src="/naman/resources/images/hotel/${dto.name}.jpg" alt="호텔"></div>
	                        <div class="hotelinfo">
	                            <div class="hotelname">${dto.name}</div>
	                            <div class="hotellength">---------</div>
	                            <div class="hotelgrade">
	                            <c:if test="${dto.hotelSeq == hotelGrade[status.index].hotelSeq && !empty hotelGrade[status.index].hotelGrade}">
	                            		${hotelGrade[status.index].hotelGrade}
	                            </c:if>
	                            <c:if test="${empty hotelGrade[status.index].hotelGrade}">
	                            		1
	                            </c:if>
	                            </div>
	                            <div class="hotelreview">
	                            <c:if test="${dto.hotelSeq == hotelGrade[status.index].hotelSeq && !empty hotelGrade[status.index].reviewCnt}">
	                            		${hotelGrade[status.index].reviewCnt}개의 이용후기
	                            </c:if>
	                            <c:if test="${empty hotelGrade[status.index].reviewCnt}">
	                            		아직 이용후기가 없습니다.
	                            </c:if>	
	                            </div>
	                        </div>
	                        <div class="hotelitem">
	                            <div class="hotelclassification">
	                            <c:if test="${hotelItem[status.index].hotelCategorySeq == 1}">
	                            		호텔
	                            </c:if>
	                            <c:if test="${hotelItem[status.index].hotelCategorySeq == 2}">
	                            		모텔
	                            </c:if>
	                            <c:if test="${hotelItem[status.index].hotelCategorySeq == 3}">
	                            		펜션
	                            </c:if>
	                            <c:if test="${hotelItem[status.index].hotelCategorySeq == 4}">
	                            		아파트
	                            </c:if>
	                            <c:if test="${hotelItem[status.index].hotelCategorySeq == 5}">
	                            		게스트하우스
	                            </c:if>
	                            <c:if test="${hotelItem[status.index].hotelCategorySeq == 6}">
	                            		프라이빗하우스
	                            </c:if>
	                            </div>
	                            <div class="hotelnight">1박</div>
	                            <div class="hotelprice">
                        			<fmt:formatNumber value="${hotelItem[status.index].amount}" pattern="#,###" />원
								</div>
                        	</div>
                        	<input type="hidden" class="mapX" value="${dto.mapX}">
                        	<input type="hidden" class="mapY" value="${dto.mapY}">
                        	<input type="hidden" class="address" value="${dto.address}">
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f950f0654669c444abb0504f0ef68aea"></script>
    <script type="text/javascript" src="/naman/resources/js/makecalendar.js"></script>
    <script type="text/javascript" src="/naman/resources/js/map.js"></script>
    <script type="text/javascript" src="/naman/resources/js/hotellist.js"></script>
    <script>
        window.onload = function () {
            autocomplete.setAutocomplete(document.getElementById("searchLocation"), place)   
        }
    </script>

</body>
</html>