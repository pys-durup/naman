package com.test.naman.hotel;

import java.util.List;

public interface IHotelDAO {

	List<HotelDTO> hotelList();

	List<HotelDTO> hotelGrade();

	List<HotelDTO> hotelItem();

	HotelDTO hotelInfo(String hotelSeq);

	HotelDTO hotelInfoGrade(String hotelSeq);

	List<HotelDTO> hotelInfoRoom(String hotelSeq);

	List<HotelDTO> hotelInfoServce(String hotelSeq);

	List<HotelDTO> hotelInfoPic(String hotelSeq);

	List<HotelDTO> hotelInfoReview(String hotelSeq);

}
