package com.test.naman.host.statistics;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatisticsController {

	@Autowired
	private IStatisticsDAO dao;
	
	@RequestMapping(value="/host/statistics/main.action")
	public String main(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		Calendar now = Calendar.getInstance();
		String today = String.format("%d-%d-%d", now.get(Calendar.YEAR), now.get(Calendar.MONTH) + 1, now.get(Calendar.DATE));
		//System.out.printf("%tF", now);
		
		String hotelSeq = (String) session.getAttribute("hotelSeq");
		
		StatisticsDTO dto = new StatisticsDTO();
		dto.setHotelSeq(hotelSeq);
		dto.setToday(today);
		
		//당일 예약 현황 조회 -> dto에 담김
		dao.getstatus(dto);
			
		today = String.format("%d년 %d월 %d일", now.get(Calendar.YEAR), now.get(Calendar.MONTH) + 1, now.get(Calendar.DATE));			
		request.setAttribute("today", today);
		
		if (dto.getBooking() != null) {
			request.setAttribute("dto", dto);						
		} else {
			StatisticsDTO dtozero = new StatisticsDTO();
			dtozero.setCheckin("0");
			dtozero.setCheckout("0");
			dtozero.setBooking("0");
			dtozero.setRcancel("0");

			request.setAttribute("dto", dtozero);
		}

		//차트 - 매출		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("hotelSeq", hotelSeq);
		map.put("year", String.format("%s", now.get(Calendar.YEAR)));

		//월별 매출 가져오기
		dao.getSales(map);
		request.setAttribute("sales", map.get("sales"));
		
		//객실 가동률 가져오기
		dao.getrCap(map);
		int total = dao.getTotal(map);

		
		request.setAttribute("result", map.get("result"));
		request.setAttribute("total", total);
		request.setAttribute("title", "통계");
		
		//System.out.println(map.get("total"));
		//System.out.println(map.get("sales"));
		//System.out.println(map.get("result"));
		
		
		return "statistics.main";
	}


	
	
	
}
