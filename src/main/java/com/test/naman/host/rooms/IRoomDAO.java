package com.test.naman.host.rooms;

import java.util.List;

import com.test.naman.host.HotelDTO;

public interface IRoomDAO {

	List<RoomDTO> getRooms(String customerSeq);

	int addok(RoomDTO dto);

	int addBedlist(BedDTO bdto);

	int delRoom(String roomSeq);

	RoomDTO getRoom(String seq);

	List<String> getBedList(String seq);

	HotelDTO get(String hotelSeq);

}
