package com.test.naman.rest;

import lombok.Data;

@Data
public class ReservationHotelDTO {
	
	private String hotelname;
	private String address;
	private String checkin;
	private String checkout;
	private String mapx;
	private String mapy;

}
