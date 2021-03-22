package com.test.naman.hotel;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HotelController {
	
	@Autowired
	private IHotelDAO dao;
	
	//http://localhost:8090/naman/hotel/hotellist.action
	@RequestMapping(value="/hotel/hotellist.action", method={RequestMethod.GET})
	public String hotelList(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		List<HotelDTO> hotelList = dao.hotelList();
		List<HotelDTO> hotelGrade = dao.hotelGrade();
		List<HotelDTO> hotelItem = dao.hotelItem();

		request.setAttribute("hotelList", hotelList);
		request.setAttribute("hotelGrade", hotelGrade);
		request.setAttribute("hotelItem", hotelItem);
		
		return "hotel/hotellist";
	}
	
	@RequestMapping(value="/hotel/hotelinfo.action", method={RequestMethod.GET})
	public String hotelInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session, String hotelSeq) {
		
		HotelDTO hotelInfo = dao.hotelInfo(hotelSeq);
		HotelDTO hotelInfoGrade = dao.hotelInfoGrade(hotelSeq);
		List<HotelDTO> hotelInfoRoom = dao.hotelInfoRoom(hotelSeq);
		List<HotelDTO> hotelInfoService = dao.hotelInfoServce(hotelSeq);
		List<HotelDTO> hotelInfoPic = dao.hotelInfoPic(hotelSeq);
		List<HotelDTO> hotelInfoReview = dao.hotelInfoReview(hotelSeq);
		
		request.setAttribute("hotelInfo", hotelInfo);
		request.setAttribute("hotelInfoGrade", hotelInfoGrade);
		request.setAttribute("hotelInfoRoom", hotelInfoRoom);
		request.setAttribute("hotelInfoService", hotelInfoService);
		request.setAttribute("hotelInfoPic", hotelInfoPic);
		request.setAttribute("hotelInfoReview", hotelInfoReview);
		
		return "hotel/hotelinfo";
	}

}
