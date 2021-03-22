package com.test.naman.hotel;

import lombok.Data;

@Data
public class HotelDTO {
	
	//hotelList
	private String hotelSeq;
	private String customerSeq;
	private String hotelCategorySeq;
	private String name;
	private String webAddress;
	private String address;
	private String tel;
	private String grade;
	private String mapX;
	private String mapY;
	private String closed;
	private String checkin;
	private String checkout;
	
	//hotelGrade, hotelInfoGrade
	private String hotelGrade;
	private String reviewCnt;

	//hotelItem, hotelInfoRoom
	private String roomCategory;
	private String amount;
	
	//hotelInfoService
	private String usingServiceSeq;
	private String serviceName;
	
	//hotelInfoPic
	private String picSeq;
	private String fileName;
	
	//hotelInfoReview
	private String title;
	private String content;
	private String regdate;
	
	
}
