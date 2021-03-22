package com.test.naman.host;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HotelDAO implements IHotelDAO{
	
	@Autowired
	private SqlSessionTemplate template;
	
	//숙소 정보 등록
	@Override
	public int register(HotelDTO dto) {
		
		return template.insert("host.registerok", dto);
	}

	//회원번호 -> 숙소번호
	@Override
	public String getHotelSeq(String customerSeq) {
		
		return template.selectOne("host.hotelSeq", customerSeq);
	}

	//숙소번호 -> 숙소 정보 가져오기
	@Override
	public HotelDTO get(String hotelSeq) {
		
		return template.selectOne("host.getHotel", hotelSeq);
	}

	@Override
	public int edit(HotelDTO dto) {
		
		return template.update("host.edit", dto);
	}



	
	
	
	
	
	
}
