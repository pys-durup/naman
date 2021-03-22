package com.test.naman.host.reservation;

import java.util.HashMap;
import java.util.List;

import com.test.naman.host.HotelDTO;
import com.test.naman.host.rooms.RoomDTO;

public interface IReservationDAO {

	List<ReservationDTO> getBooking(HashMap<String, String> map);

	String getHotelSeq(String customerSeq);

	HotelDTO get(String customerSeq);

	int getTotalCount(HashMap<String, String> map);

	List<ReservationDTO> getsBooking(HashMap<String, String> map);



}
