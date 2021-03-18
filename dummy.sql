
--tblHotelCategory
insert into tblHotelCategory(hotelCategorySeq, category) values (hotelCategorySeq.nextVal, '호텔');
insert into tblHotelCategory(hotelCategorySeq, category) values (hotelCategorySeq.nextVal, '호스텔');
insert into tblHotelCategory(hotelCategorySeq, category) values (hotelCategorySeq.nextVal, '게스트하우스');
insert into tblHotelCategory(hotelCategorySeq, category) values (hotelCategorySeq.nextVal, '프라이빗하우스');


--tblCustomer
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '테스트', 'vista@naver.com', '5555', '01011117778', 'm', '929488757', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '박기영', 'ki@naver.com', '1234', '01011112222', 'm', '123456780', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '김진수', 'jin@naver.com', '2222', '01011113333', 'm', '0101119', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '이지영', 'young@naver.com', '1233334', '01011114444', 'f', '127756780', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '한지수', 'soo@naver.com', '4444', '01011115555', 'f', '123456880', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '최영진', 'jin@naver.com', '5555', '01011116666', 'm', '12345678900', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '이준호', 'ninetree@naver.com', '5555', '01011117777', 'm', '12345678999', 0);
insert into tblCustomer(customerSeq, name, email, pw, phone, gender, card, cType) values (customerSeq.nextVal, '박상혁', 'vista@naver.com', '5555', '01011117778', 'm', '929488757', 0);



--tblHotel

insert into tblHotel (hotelSeq, customerSeq, hotelCategorySeq, name, webAddress, address, tel, grade, closed, checkin, checkout, mapx, mapy) values (hotelSeq.nextVal, 7, 1, '파라다이스호텔 부산', 'https://www.busanparadisehotel.co.kr/', '부산광역시 해운대구 중동 해운대해변로 296', '0517422121', '5', '0', '15:00', '11:00','129.16467676926845','35.160274121233016');
insert into tblHotel (hotelSeq, customerSeq, hotelCategorySeq, name, webAddress, address, tel, grade, closed, checkin, checkout, mapx, mapy) values (hotelSeq.nextVal, 7, 1, '라마다 전주호텔', 'wyndhamhotels.com/ko-kr/ramada/jeonju-si-south-korea/ramada-jeonju', '전라북도 전주시 완산구 고사동 팔달로 227', '024161204', '3', '0', '15:00', '11:00','127.144807133698','35.82246471822277');
insert into tblHotel (hotelSeq, customerSeq, hotelCategorySeq, name, webAddress, address, tel, grade, closed, checkin, checkout, mapx, mapy) values (hotelSeq.nextVal, 7, 1, '롯데호텔 서울', 'wyndhamhotels.com/ko-kr/ramada/jeonju-si-south-korea/ramada-jeonju', '서울특별시 중구 을지로1가 을지로 30','027711000','5', '0', '15:00', '11:00','126.98092805341204','37.56552758432713');

--tblRoom
insert into tblRoom(roomSeq, hotelSeq, roomCategory, amount, state, person, closed) values (roomSeq.nextVal,1, '스탠다드 트윈 (Standard Twin)', '42000', '0', '2', '0');
insert into tblRoom(roomSeq, hotelSeq, roomCategory, amount, state, person, closed) values (roomSeq.nextVal, 2, '스탠다드 더블 (Standard Double)', '42000', '0', '2', '0');
insert into tblRoom(roomSeq, hotelSeq, roomCategory, amount, state, person, closed) values (roomSeq.nextVal, 3, '스탠다드 트리플 (Standard Triple)', '88000', '0', '3', '1');



--예약목록
insert into tblHotelReserve(hotelReserveSeq, roomSeq, CustomerSeq, reserveDate, checkin, checkout, person, state) values (hotelReserveSeq.nextVal, 1, 1, sysdate, '2021-04-10', '2021-04-15', 2, 1);
insert into tblHotelReserve(hotelReserveSeq, roomSeq, CustomerSeq, reserveDate, checkin, checkout, person, state) values (hotelReserveSeq.nextVal, 2, 1, sysdate, '2021-04-15', '2021-04-18', 2, 1);
insert into tblHotelReserve(hotelReserveSeq, roomSeq, CustomerSeq, reserveDate, checkin, checkout, person, state) values (hotelReserveSeq.nextVal, 3, 1, sysdate, '2021-04-18', '2021-04-19', 2, 1);



select * from tblrreview;

insert into tblrreview (rreviewseq,restaurantseq,customerseq,score,content,writedate) values (rreviewseq.nextVal,1,1,5,'정말 너무맛있어요 인생 횟집입니다!',sysdate);
insert into tblrreview (rreviewseq,restaurantseq,customerseq,score,content,writedate) values (rreviewseq.nextVal,1,2,5,'최고예요 바다보면서 먹을수 있어요... 양도많고 신선해요 왜이제야 왔는지 모르겠네요 사랑합니다.',sysdate);
insert into tblrreview (rreviewseq,restaurantseq,customerseq,score,content,writedate) values (rreviewseq.nextVal,1,3,5,'진짜 돈이 아깝지 않은 맛집입니다 !! ',sysdate);
insert into tblrreview (rreviewseq,restaurantseq,customerseq,score,content,writedate) values (rreviewseq.nextVal,1,4,5,'기대이상의 맛과신선함 !! 처음 가봤는데 앞으로 단골이 될것 같아요',sysdate);
insert into tblrreview (rreviewseq,restaurantseq,customerseq,score,content,writedate) values (rreviewseq.nextVal,1,5,3,'회도깔끔하고 매운탕도 맛있었어요 다만 가격이 아쉽네요 양에 비해 비싸요ㅠ ',sysdate);
select * from tblrestaurant;


--간판없는 횟집 (부산)
insert into tblrestaurant (restaurantseq,restid) values (restaurantseq.nextVal, '2371880');
