package com.test.naman.host.reservation;

import lombok.Data;

@Data
public class ReservationDTO {

	private String hotelReserveSeq;
	private String roomSeq;
	private String customerSeq;
	private String reserveDate;
	private String checkin;
	private String checkout;
	private String person;
	private String state;
	
	private String name;
	private String roomCategory;
	private String amount;
	private String hotelSeq;
	
	
}

