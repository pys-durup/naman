package com.test.naman.hotel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HotelDAO implements IHotelDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<HotelDTO> hotelList() {
		
		return template.selectList("hotel.hotelsList");
	}

	@Override
	public List<HotelDTO> hotelGrade() {
		
		return template.selectList("hotel.hotelGrade");
	}

	@Override
	public List<HotelDTO> hotelItem() {
		
		return template.selectList("hotel.hotelItem");
	}

	@Override
	public HotelDTO hotelInfo(String hotelSeq) {

		return template.selectOne("hotel.hotelInfo", hotelSeq);
	}

	@Override
	public HotelDTO hotelInfoGrade(String hotelSeq) {
		
		return template.selectOne("hotel.hotelInfoGrade", hotelSeq);
	}

	@Override
	public List<HotelDTO> hotelInfoRoom(String hotelSeq) {
		
		return template.selectList("hotel.hotelInfoRoom", hotelSeq);
	}

	@Override
	public List<HotelDTO> hotelInfoServce(String hotelSeq) {
		
		return template.selectList("hotel.hotelInfoService", hotelSeq);
	}

	@Override
	public List<HotelDTO> hotelInfoPic(String hotelSeq) {
		
		return template.selectList("hotel.hotelInfoPic", hotelSeq);
	}

	@Override
	public List<HotelDTO> hotelInfoReview(String hotelSeq) {
		
		return template.selectList("hotel.hotelInfoReview", hotelSeq);
	}

}
