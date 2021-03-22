package com.test.naman.host.rooms;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.naman.host.HotelDTO;

@Repository
public class RoomDAO implements IRoomDAO{
	
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<RoomDTO> getRooms(String customerSeq) {
		
		return template.selectList("rooms.list", customerSeq);
	}

	@Override
	public int addok(RoomDTO dto) {
		
		return template.insert("rooms.add", dto);
	}

	@Override
	public int addBedlist(BedDTO bdto) {
		
		return template.insert("rooms.addbed", bdto);
	}

	@Override
	public int delRoom(String roomSeq) {
		
		return template.delete("rooms.delRoom", roomSeq);
	}

	@Override
	public RoomDTO getRoom(String seq) {
		
		return template.selectOne("rooms.getRoom", seq);
	}

	@Override
	public List<String> getBedList(String seq) {
		
		return template.selectList("rooms.getBedList", seq);
	}
	
	//숙소번호 -> 숙소 정보 가져오기
	@Override
	public HotelDTO get(String hotelSeq) {
		
		return template.selectOne("host.getHotel", hotelSeq);
	}

}
