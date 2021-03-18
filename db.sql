
--1단계 회원, 숙소, 카테고리, 지역, 부가서비스, 숙소종류, 음식종류
/* 지역 */
CREATE TABLE tblRegion (
	regionSeq NUMBER PRIMARY KEY, /* 지역번호 */
	name VARCHAR2(30) NOT NULL /* 지역이름 */
);

create sequence regionSeq;

/* 카테고리 */
CREATE TABLE tblTourCategory (
	tourCategorySeq NUMBER PRIMARY KEY, /* 카테고리번호 */
	name VARCHAR2(100) /* 카테고리명 */
);

create sequence tourCategorySeq;

/* 부가서비스 */
CREATE TABLE tblService (
	serviceSeq NUMBER PRIMARY KEY, /* 부가서비스번호 */
	name VARCHAR2(50) /* 부가서비스명 */
);

create sequence serviceSeq;

/* 숙소종류 */
CREATE TABLE tblHotelCategory (
	hotelCategorySeq NUMBER PRIMARY KEY, /* 번호 */
	category VARCHAR2(30) /* 종류 */
);

create sequence hotelCategorySeq;

/* 회원 */
CREATE TABLE tblCustomer (
	customerSeq NUMBER PRIMARY KEY, /* 회원번호 */
	name VARCHAR2(10), /* 이름 */
	email VARCHAR2(100), /* 이메일 */
	pw VARCHAR2(100), /* 비밀번호 */
	phone VARCHAR2(20), /* 연락처 */
	gender VARCHAR2(2), /* 성별 */
	card VARCHAR2(13), /* 카드정보 */
	cType NUMBER /* 상태 */
);

--Alter table tblhotel add mapy varchar2(20);
----37.55463645083876, 127.11058093224938
----35.160274121233016, 129.16467676926845
----35.82246471822277, 127.144807133698
--select * from tblhotel;
--update tblhotel set mapy = '35.82246471822277' , mapx='127.144807133698' where hotelseq=13;
--commit;

create sequence customerSeq;

CREATE TABLE tblHotel (
	hotelSeq NUMBER PRIMARY KEY, /* 숙소번호 */
    customerSeq NUMBER references tblCustomer(customerSeq), /* 회원번호 */
	hotelCategorySeq NUMBER references tblHotelCategory(hotelCategorySeq), /* 숙소종류번호 */
	name VARCHAR2(100), /* 숙소명 */
	webAddress VARCHAR2(100), /* 웹사이트주소 */
	address VARCHAR2(300), /* 주소 */
	tel VARCHAR2(14), /* 전화번호 */
	grade NUMBER, /* 평점 */
	closed NUMBER, /* 공개여부 */
	checkin VARCHAR2(5), /* 입실시간 */
	checkout VARCHAR2(5), /* 퇴실시간 */
    mapx VARCHAR2(20), /*x좌표*/
    mapy VARCHAR2(20) /*y좌표*/
);

create sequence hotelSeq;

/* 음식종류 */
CREATE TABLE tblFoodType (
	typeSeq NUMBER PRIMARY KEY, /* 음식종류번호 */
	type VARCHAR2(500) /* 종류 */
);

create sequence typeSeq;

--2단계 투어, 여행일정, 시군구, 식당, 게시판, 숙소-숙소종류, 숙소-부가서비스

/* 자유게시판 */
CREATE TABLE tblBoardFree (
	freeSeq NUMBER PRIMARY KEY, /* 번호 */
	customerSeq NUMBER references tblcustomer(customerseq), /* 회원번호 */
	title VARCHAR2(100), /* 제목 */
	content VARCHAR2(2000), /* 내용 */
	regdate DATE /* 날짜 */
);

create sequence freeSeq;

/* 투어 */
CREATE TABLE tblTour (
	tourSeq NUMBER PRIMARY KEY, /* 투어번호 */
	tourCategorySeq NUMBER references tblTourCategory(tourCategorySeq), /* 카테고리번호 */
	title VARCHAR2(100), /* 투어제목 */
	area VARCHAR2(30), /* 지역 */
	photo VARCHAR2(100), /* 대표사진 */
	information VARCHAR2(1000), /* 상품정보 */
	description VARCHAR2(4000), /* 설명 */
	time VARCHAR2(30), /* 소요시간 */
	price VARCHAR2(30), /* 가격 */
	address VARCHAR2(1000), /* 만남위치 */
	startDate DATE, /* 시작일 */
	endDate DATE, /* 종료일 */
	grade NUMBER, /* 평점 */
	guide VARCHAR2(30) /* 가이드 */
);

create sequence tourSeq;

/* 여행일정 */
CREATE TABLE tblTripPlan (
	tripPlanseq NUMBER PRIMARY KEY, /* 여행일정번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	img VARCHAR2(200) NOT NULL, /* 사진 */
	totalDate NUMBER NOT NULL, /* 여행총일수 */
	startDate DATE NOT NULL, /* 여행시작일 */
	endDate DATE NOT NULL, /* 여행끝일 */
	regDate DATE NOT NULL, /* 등록일 */
	readcnt NUMBER NOT NULL, /* 조회수 */
	descript VARCHAR2(3000), /* 부가설명 */
	likes NUMBER NOT NULL /* 좋아요 */
);

create sequence tripPlanseq;

/* 시군구 */
CREATE TABLE tblSigungu (
	sigunguSeq NUMBER PRIMARY KEY, /* 시군구번호 */
	regionSeq NUMBER NOT NULL  references tblRegion(regionSeq), /* 지역번호 */
	name VARCHAR2(30) NOT NULL /* 시군구이름 */
);

create sequence sigunguSeq;

/* 숙소추천게시판 */
CREATE TABLE tblHotelRecommend (
	hotelRecommendSeq NUMBER PRIMARY KEY, /* 게시판번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	content VARCHAR2(4000), /* 내용 */
	title VARCHAR2(100), /* 제목 */
	regdate DATE, /* 날짜 */
	photo VARCHAR2(300) /* 사진 */
);

create sequence hotelRecommendSeq;

/* 여행지추천 */
CREATE TABLE tblPlaceRec (
	placeRecSeq NUMBER PRIMARY KEY, /* 번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	title VARCHAR2(100), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	regDate DATE /* 작성일 */
);

create sequence placeRecSeq;

/* 맛집추천게시판 */
CREATE TABLE tblResRecommend (
	resRecSeq NUMBER PRIMARY KEY, /* 맛집추천게시판번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	title VARCHAR2(100), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	writeDate DATE /* 날짜 */
);

create sequence resRecSeq;

/* 동행찾기게시판 */
CREATE TABLE tblCompanionBoard (
	companionSeq NUMBER PRIMARY KEY, /* 동행글번호 */
	CustomerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	title VARCHAR2(100), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	writeDate DATE /* 날짜 */
);

create sequence companionSeq;

/* 숙소-숙소종류 */
CREATE TABLE tblUsingHotel (
    usingHotelSeq NUMBER PRIMARY KEY, /* 숙소-숙소종류번호 */
    hotelSeq NUMBER references tblHotel(hotelSeq), /* 숙소번호 */
    hotelCategorySeq NUMBER references tblHotelCategory /* 숙소종류번호 */
);

create sequence usingHotelSeq;

/* 숙소-부가서비스 */
CREATE TABLE tblUsingService (
    usingServiceSeq NUMBER PRIMARY KEY, /* 숙소-부가서비스번호 */
    hotelSeq NUMBER references tblHotel(hotelSeq), /* 숙소번호 */
    serviceSeq NUMBER references tblService(serviceSeq)
);

create sequence usingServiceSeq;



--3단계 투어예약 , 일정상세, 숙소사진, 객실, 찜목록, 식당, 식당리뷰, 게시판댓글

/* 투어예약 */
CREATE TABLE tblTourReserve (
	tourReserveSeq NUMBER PRIMARY KEY, /* 투어예약번호 */
	tourSeq NUMBER references tblTour(tourSeq), /* 투어번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	reserveDate DATE, /* 예약날짜 */
	useDate DATE, /* 사용날짜 */
	person NUMBER, /* 인원 */
	state NUMBER /* 상태 */
);

create sequence tourReserveSeq;

/* 동행찾기게시판댓글 */
CREATE TABLE tblCompanionComment (
	companionCommentSeq NUMBER PRIMARY KEY, /* 번호 */
	companionSeq NUMBER references tblCompanionBoard(companionSeq), /* 글번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	content VARCHAR(4000), /* 내용 */
	writeDate DATE /* 날짜 */
);

create sequence companionCommentSeq;

/* 숙소추천게시판댓글 */
CREATE TABLE tblHotelRecommendComment (
	hotelRecommendCommentSeq NUMBER PRIMARY KEY, /* 댓글번호 */
	hotelRecommendSeq NUMBER references tblHotelRecommend(hotelRecommendSeq), /* 게시판번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	content VARCHAR2(3000), /* 내용 */
	regdate DATE /* 날짜 */
);

create sequence hotelRecommendCommentSeq;

/* 여행지추천댓글 */
CREATE TABLE tblPlaceRecComment (
	commentSeq NUMBER PRIMARY KEY, /* 번호 */
	PlaceRecSeq NUMBER references tblPlaceRec(PlaceRecSeq), /* 글번호 */
	customerSeq NUMBER references tblcustomer(customerseq), /* 회원번호 */
	content VARCHAR2(4000), /* 내용 */
	regDate DATE /* 작성일 */
);

create sequence commentSeq;

/* 맛집추천게시판댓글 */
CREATE TABLE tblResRecommendComment (
	resRecCommentSeq NUMBER PRIMARY KEY, /* 댓글번호 */
	resRecSeq NUMBER references tblResRecommend(resRecSeq), /* 글번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	content VARCHAR(4000), /* 내용 */
	writeDate DATE /* 날짜 */
);

create sequence resRecCommentSeq;

/* 숙소사진 */
CREATE TABLE tblPic (
	picSeq NUMBER PRIMARY KEY, /* 번호 */
	hotelSeq NUMBER references tblHotel(hotelSeq), /* 숙소번호 */
	filename VARCHAR2(100) /* 파일명 */
);

create sequence picSeq;

/* 자유게시판댓글 */
CREATE TABLE tblCommentFree (
	commentFreeSeq NUMBER PRIMARY KEY, /* 번호 */
	freeSeq NUMBER references tblBoardFree(freeSeq), /* 자유게시판번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	content VARCHAR2(2000), /* 내용 */
	Regdate DATE /* 날짜 */
);

create sequence commentFreeSeq;

/* 객실 */
CREATE TABLE tblRoom (
	roomSeq NUMBER PRIMARY KEY, /* 객실번호 */
	hotelSeq NUMBER references tblHotel(hotelSeq), /* 숙소번호 */
	roomCategory VARCHAR2(50), /* 객실종류 */
	amount NUMBER, /* 요금 */
	state NUMBER, /* 객실상태 */
	person NUMBER, /* 인원 */
    	closed NUMBER /* 공개여부 */
);

create sequence roomSeq;

/* 일정상세 */
CREATE TABLE tblPlanDetail (
	planDetailSeq NUMBER PRIMARY KEY, /* 일정상세번호 */
	tripPlanseq NUMBER NOT NULL references tblTripPlan(tripPlanSeq), /* 여행일정번호 */
	title VARCHAR2(300) NOT NULL, /* 장소이름 */
	addr VARCHAR2(300) NOT NULL, /* 주소 */
	img VARCHAR2(200) NOT NULL, /* 사진 */
	mapX VARCHAR2(30) NOT NULL, /* x좌표 */
	mapY VARCHAR2(30) NOT NULL, /* y좌표 */
	planDay NUMBER NOT NULL, /* 여행몇일차 */
	planNo NUMBER NOT NULL, /* 일정순서 */
	info VARCHAR2(3000) /* 장소설명 */
);

create sequence planDetailSeq;

/* 찜목록 */
CREATE TABLE tblLike (
	likeSeq NUMBER PRIMARY KEY, /* 번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	hotelSeq NUMBER  references tblHotel(hotelSeq)/* 숙소번호 */
);

create sequence likeSeq;

/* 식당 */
CREATE TABLE tblRes (
	resSeq NUMBER PRIMARY KEY, /* 식당번호 */
	typeSeq NUMBER NOT NULL references tblFoodType(typeSeq), /* 음식종류번호 */
	name  VARCHAR2(300) NOT NULL, /* 식당이름 */
	address VARCHAR2(100), /* 주소 */
	tel VARCHAR2(14), /* 전화번호 */
	menu VARCHAR2(1000), /* 메뉴 */
	price VARCHAR2(30), /* 가격대 */
	parking VARCHAR2(30), /* 주차유무 */
	openTime VARCHAR2(100), /* 영업시간 */
	dayOff VARCHAR2(100), /* 휴무일 */
	xCo VARCHAR2(30), /* x좌표 */
	yCo VARCHAR2(30) /* y좌표 */
);

create sequence resSeq;

CREATE TABLE tblRestaurant (
    restaurantSeq NUMBER PRIMARY KEY, /* 식당번호 */
    restId VARCHAR2(10)
);


create sequence restaurantSeq;
/* 여행일정게시판 */
CREATE TABLE tblTripBoard (
	tripBoardSeq NUMBER PRIMARY KEY, /* 게시글번호 */
	tripPlanSeq NUMBER references tblTripPlan(tripPlanSeq), /* 여행일정번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content VARCHAR2(1500) NOT NULL, /* 내용 */
	regDate DATE NOT NULL, /* 작성일 */
	readcnt NUMBER NOT NULL, /* 조회수 */
	likes NUMBER NOT NULL /* 좋아요 */
);

create sequence tripBoardSeq;



--4단계 투어결제, 후기, 숙소예약, 찜

/* 찜 */
CREATE TABLE tblMark (
    markSeq NUMBER PRIMARY KEY, /* 번호 */
	resSeq NUMBER references tblRes(resSeq), /* 식당번호 */
	customerSeq NUMBER NOT NULL references tblcustomer(customerSeq) /* 회원번호 */
);

create sequence markSeq;

/* 여행일정댓글 */
CREATE TABLE tblTripComment (
	tripCommentSeq NUMBER PRIMARY KEY, /* 댓글번호 */
	CustomerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	tripBoardSeq NUMBER references tblTripBoard(tripBoardSeq), /* 게시글번호 */
	comments VARCHAR2(500) NOT NULL, /* 댓글내용 */
	regdate DATE NOT NULL /* 작성시간 */
);

create sequence tripCommentSeq;

/* 투어결제 */
CREATE TABLE tblTourPayment (
	tourPaySeq NUMBER PRIMARY KEY, /* 결제번호 */
	tourReserveSeq NUMBER references tblTourReserve(tourReserveSeq), /* 투어예약번호 */
	method VARCHAR2(30) /* 결제방법 */
);

create sequence tourPaySeq;

/* 후기 */
CREATE TABLE tblTourReview (
	tourReviewSeq NUMBER PRIMARY KEY, /* 번호 */
	tourReserveSeq NUMBER references tblTourReserve(tourReserveSeq), /* 투어예약번호 */
	title VARCHAR2(100), /* 제목 */
	content VARCHAR2(2000), /* 내용 */
	regdate DATE, /* 날짜 */
	grade NUMBER /* 평점 */
);

create sequence tourReviewSeq;

/* 숙소예약 */
CREATE TABLE tblHotelReserve (
	hotelReserveSeq NUMBER PRIMARY KEY, /* 숙소예약번호 */
	roomSeq NUMBER references tblRoom(roomSeq), /* 객실번호 */
	CustomerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	reserveDate DATE, /* 예약 날짜 */
	checkin DATE, /* 입실 날짜 */
	checkout DATE, /* 퇴실 날짜 */
	person NUMBER, /* 인원 */
	state NUMBER /* 상태 */
);

create sequence hotelReserveSeq;

/* 식당리뷰 */
CREATE TABLE tblRReview (
	rReviewSeq NUMBER PRIMARY KEY, /* 리뷰번호 */
	restaurantSeq NUMBER NOT NULL references tblRestaurant(restaurantSeq), /* 식당번호 */
	customerSeq NUMBER references tblcustomer(customerSeq), /* 회원번호 */
	score NUMBER NOT NULL, /* 평점 */
	content VARCHAR2(4000), /* 내용 */
	writeDate DATE NOT NULL /* 작성일 */
);


create sequence rReviewSeq;



-- 5단계  숙소결제, 후기, 새테이블


/* 숙소결제 */
CREATE TABLE tblHotelPayment (
	hotelPaySeq NUMBER PRIMARY KEY, /* 결제번호 */
	hotelReserveSeq NUMBER references tblHotelReserve(hotelReserveSeq), /* 숙소예약번호 */
	method VARCHAR2(30) /* 결제방법 */
);

create sequence hotelPaySeq;

/* 후기 */
CREATE TABLE tblHotelReview (
	hotelReviewSeq NUMBER PRIMARY KEY, /* 후기번호 */
	hotelReserveSeq NUMBER references tblHotelReserve(hotelReserveSeq), /* 숙소예약번호 */
	title VARCHAR2(100), /* 후기제목 */
	content VARCHAR2(3000), /* 후기내용 */
	regdate DATE, /* 날짜 */
	grade NUMBER /* 평점 */
);

create sequence hotelReviewSeq;

/* 새 테이블 */
CREATE TABLE tblReviewPhoto (
	reviewPhotoSeq NUMBER PRIMARY KEY, /* 사진번호 */
	rReviewSeq NUMBER NOT NULL references tblRReview(rReviewSeq), /* 리뷰번호 */
	photo VARCHAR2(1000) /* 사진 */
);

create sequence reviewPhotoSeq;

/* 침대 종류 */
CREATE TABLE tblBed (
    bedSeq NUMBER PRIMARY KEY, /* 번호 */
    bedCategory VARCHAR2(50) /* 종류 */
);

create sequence bedSeq;

/* 객실 침구 목록 */
CREATE TABLE tblBedList (
    bedListSeq NUMBER PRIMARY KEY, /* 목록 번호 */
    roomSeq references tblRoom(roomSeq), /* 객실 번호 */
    bedSeq references tblBed(bedSeq) /* 침대 번호 */
);

create sequence bedListSeq;




