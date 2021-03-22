package com.test.naman.host.reservation;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.naman.host.HotelDTO;

@Controller
public class ReservationController {
	
	@Autowired
	private IReservationDAO dao;
	
	//예약 현황 페이지
	@RequestMapping(value="/host/reservation/booking.action", method= {RequestMethod.GET})
	//메인 기업회원 로그인 -> 호스트 페이지 : Session으로 CustomerSeq 전달
	//public String booking(HttpServletRequest request, HttpServletResponse response, HttpSession session, String customerSeq) {
	public String member_booking(HttpServletRequest request, HttpServletResponse response, HttpSession session, String page, String chkinStr, String chkinEnd, String chkoutStr, String chkoutEnd) {
				
		//페이징
		HashMap<String, String> map = new HashMap<String, String>();
		
		//숙소별 예약 리스트 가져오기
		String customerSeq = "30";
		
		session.setAttribute("customerSeq", customerSeq);
		
		if (!(chkinStr == null || chkinStr.equals(""))
				&& !(chkinEnd == null || chkinEnd.equals(""))) {
			map.put("colname", "checkin");
			map.put("sdate", chkinStr);
			map.put("edate", chkinEnd);

		}
		
		if (!(chkoutStr == null || chkoutStr.equals(""))
				&& !(chkoutEnd == null || chkoutEnd.equals(""))) {
			map.put("colname", "checkout");
			map.put("sdate", chkoutStr);
			map.put("edate", chkoutEnd);
		}

		
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		//총 게시물 수
		int pageSize = 8;		//한 페이지 당 출력 개수
		int totalPage= 0;		//총 페이지 수
		int begin = 0;			//rnum 시작 번호
		int end = 0;			//rnum 끝 번호
		int n = 0;				//페이지바 관련 변수
		int loop = 0;			//페이지바 관련 변수
		int blockSize = 5;		//페이지바 관련 변수
		
		//페이지값 get으로 받아오기
		if (page == null || page == "") {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		begin =((nowPage - 1) * pageSize) + 1; //각 페이지 시작 글번호
		end = begin + pageSize - 1; //각 페이지 끝 글번호
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		map.put("customerSeq", customerSeq);
		
		totalCount = dao.getTotalCount(map); //총 게시물 수
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		String pagebar = "";
		
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1; 
		
		if (n == 1) {
			pagebar += String.format("<li class=\"page-item disabled\">"
					+ "<a class=\"page-link\" href=\"#\" aria-label=\"Previous\">"
					+ "<span aria-hidden=\"true\">&laquo;</span>"
					+ "</a></li>");		
				
		} else {
			pagebar += String.format("<li class=\"page-item\">"
					+ "<a class=\"page-link\" href=\"#\" aria-label=\"Previous\">"
					+ "<span aria-hidden=\"true\">&laquo;</span>"
					+ "</a></li>");			
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (nowPage == n) {
				pagebar += "<li class=\"page-item\">";
			} else {
				pagebar += "<li class=\"page-item\">";
			}
			
			pagebar += String.format("<li class=\"page-item\"><a class=\"page-link\" href=\"/naman/host/reservation/booking.action?page=%d\">%d</a></li>", n, n);			
			
			loop++;
			n++;
			
		}
		
		//System.out.println(n);
		//System.out.println(totalPage);
		
		if (n > totalPage) {
			pagebar += String.format("<li class=\"page-item disabled\">"
					+ "<a class=\"page-link\" href=\"#\" aria-label=\"Next\">"
					+ "<span aria-hidden=\"true\">&raquo;</span>"
					+ "</a></li>");		
		} else {
			pagebar += String.format("<li class=\"page-item\">"
					+ "<a class=\"page-link\" href=\"#\" aria-label=\"Next\">"
					+ "<span aria-hidden=\"true\">&raquo;</span>"
					+ "</a></li>");		
		}

		
		//숙소 정보 가져오기
		HotelDTO dto = dao.get(customerSeq);

		request.setAttribute("dto", dto);
		
		if(dto != null) {
		//if(dto.getHotelSeq() != null) {
			session.setAttribute("hotelSeq", dto.getHotelSeq());
			session.setAttribute("name", dto.getName());
		}

		//넘기는 정보
		List<ReservationDTO> list;
		
		if (!map.containsKey("colname")) {
			list = dao.getBooking(map);	
			
		} else {
			list = dao.getsBooking(map);		
		}
		
		request.setAttribute("list", list);
		request.setAttribute("pagebar", pagebar);
		request.setAttribute("title", "예약 현황");
		
		return "booking.list";
		
	}
	
	
	
	
	
	
}
