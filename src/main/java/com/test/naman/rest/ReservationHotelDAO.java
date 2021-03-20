package com.test.naman.rest;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationHotelDAO implements IReservationHotelDAO {
	@Autowired
	private SqlSessionTemplate template;
	
	
	/***
	 * 특정회원 예약한 호텔 목록 가져오기
	 * @author 혜승
	 */
	@Override
	public List<ReservationHotelDTO> ReservationHotelList(String seq) {
		
		return template.selectList("naman.hotelList",seq);
	}
	
	/***
	 * 특정 식당 리뷰 목록가져오기
	 * @author 혜승
	 */
	@Override
	public List<RestaurantReviewDTO> RestReviewList(String contentid) {
		
		return template.selectList("naman.restreviewList",contentid);
	}

	/***
	 * 식당리뷰의 사진가져오기
	 * @author 혜승
	 */
	@Override
	public List<String> getPhoto(String reviewseq) {
		
		return template.selectList("naman.photoList",reviewseq);
	}


	/***
	 * 식당리뷰 총개수
	 * @author 혜승
	 */
	@Override
	public int countTotalReview(String contentid) {
		// TODO Auto-generated method stub
		return template.selectOne("naman.reviewCount",contentid);
	}

	/***
	 * 식당 리뷰 맛있다 개수
	 * @author 혜승
	 */
	@Override
	public int countGoodReview(String contentid) {
		return template.selectOne("naman.reviewGood",contentid);
	}

	/***
	 * 식당 리뷰 보통 개수
	 * @author 혜승
	 */
	@Override
	public int countNomalReview(String contentid) {
		return template.selectOne("naman.reviewNomal",contentid);
	}

	/***
	 * 식당리뷰 별로 개수
	 * @author 혜승
	 */
	@Override
	public int countBadReview(String contentid) {
		return template.selectOne("naman.reviewBad",contentid);
	}
	
	/***
	 * 리뷰등록하기
	 * @author 혜승
	 */
//	@Override
//	public int addReview(RestaurantReviewDTO dto) {
//		// TODO Auto-generated method stub
//		return template.insert("naman.addReview",dto);
//	}
	
	/***
	 * 등록된 리뷰 번호 찾기
	 * @author 혜승
	 */
//	@Override
//	public String findSeq(Map map) {
//		
//		return template.selectOne("naman.findReviewSeq",map);
//	}

	/***
	 * 리뷰사진업로드하기
	 * @author 혜승
	 */
//	@Override
//	public int uploadPhoto(RestaurantReviewDTO dto) {
//		
//		return template.update("naman.addPhotoReview",dto);
//	}


}
