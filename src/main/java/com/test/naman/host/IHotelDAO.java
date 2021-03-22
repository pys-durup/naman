package com.test.naman.host;

public interface IHotelDAO {

	int register(HotelDTO dto);

	String getHotelSeq(String customerSeq);

	HotelDTO get(String hotelSeq);

	int edit(HotelDTO dto);


	
}
