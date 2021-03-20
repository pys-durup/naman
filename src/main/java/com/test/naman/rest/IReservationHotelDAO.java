package com.test.naman.rest;

import java.util.List;
import java.util.Map;

public interface IReservationHotelDAO  {

	List<ReservationHotelDTO> ReservationHotelList(String seq);

	List<RestaurantReviewDTO> RestReviewList(String contentid);

	List<String> getPhoto(String reviewseq);

	int countTotalReview(String contentid);

	int countGoodReview(String contentid);

	int countNomalReview(String contentid);

	int countBadReview(String contentid);

	


	/*
	 * int addReview(RestaurantReviewDTO dto);
	 * 
	 * String findSeq(Map map);
	 * 
	 * int uploadPhoto(RestaurantReviewDTO dto);
	 */


}
