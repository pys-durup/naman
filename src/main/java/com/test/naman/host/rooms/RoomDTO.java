package com.test.naman.host.rooms;

import lombok.Data;

@Data
public class RoomDTO {

	private String roomSeq;			//객실번호
	private String hotelSeq;		//숙소번호
	private String roomCategory;	//객실종류
	private String person;			//인원
	private String amount;			//요금
	private String state;			//객실상태(0: 미사용, 1: 사용) -> 임의로 설정해놓음 -> 확인 필요!!!!!
	private String closed;			//공개여부(0: 공개, 1: 비공개)
	
	private String checkin;			//체크인 가능 시간
	private String checkout;		//체크아웃 가능 시간
	
}
