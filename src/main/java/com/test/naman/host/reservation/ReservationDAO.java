package com.test.naman.host.reservation;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.naman.host.HotelDTO;
import com.test.naman.host.rooms.RoomDTO;

@Repository
public class ReservationDAO implements IReservationDAO {

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<ReservationDTO> getBooking(HashMap<String, String> map) {
		//System.out.println(customerSeq);
		return template.selectList("host.bookinglist", map);
	}
	
	@Override
	public List<ReservationDTO> getsBooking(HashMap<String, String> map) {

		return template.selectList("host.sbookinglist", map);
	}

	@Override
	public String getHotelSeq(String customerSeq) {
		
		return template.selectOne("host.hotelSeq", customerSeq);
	}

	@Override
	public HotelDTO get(String customerSeq) {
		
		return template.selectOne("host.getHotelbyc", customerSeq);
	}

	@Override
	public int getTotalCount(HashMap<String, String> map) {
		
		return template.selectOne("host.getCnt", map);
	}




	
	
	
}
