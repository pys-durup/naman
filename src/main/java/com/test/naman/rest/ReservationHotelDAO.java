package com.test.naman.rest;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationHotelDAO implements IReservationHotelDAO {
	@Autowired
	private SqlSessionTemplate template;
	
	
	@Override
	public List<ReservationHotelDAO> ReservationHotelList(String seq) {
		
		return template.selectList("naman.hotelList",seq);
	}
	
}
