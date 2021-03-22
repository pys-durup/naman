package com.test.naman.host.rooms;

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
public class RoomController {

	@Autowired
	private IRoomDAO dao;
	
	//숙소 정보 등록 페이지 -> 예약 현황 페이지에서 이동 시 session 정보(customerSeq) 가지고 이동
	@RequestMapping(value="/host/rooms/list.action", method = {RequestMethod.GET})
	public String hMember_rooms(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String customerSeq = (String) session.getAttribute("customerSeq");
		String hotelSeq = (String) session.getAttribute("hotelSeq");
		//System.out.println(customerSeq);
		
		//객실정보
		List<RoomDTO> list = dao.getRooms(customerSeq);
		
		request.setAttribute("list", list);
		
		//호텔 정보
		HotelDTO dto = dao.get(hotelSeq);

		request.setAttribute("dto", dto);			
		request.setAttribute("title", "객실 정보");
		
		return "rooms.list";

		
	}
	
	
	@RequestMapping(value="/host/rooms/add.action", method = {RequestMethod.GET})
	public String addRoom(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		request.setAttribute("title", "객실 등록");
		
		return "rooms.add";
	}
	

	@RequestMapping(value="/host/rooms/addok.action", method = {RequestMethod.POST})
	public void addok(HttpServletRequest request, HttpServletResponse response, HttpSession session, RoomDTO dto, String bedCategory) {
		
		//객실 추가
		dto.setHotelSeq((String)session.getAttribute("hotelSeq"));
		
		int result = dao.addok(dto); //1
		
		//침구 목록 추가 -> 객실번호 필요
		//System.out.println(dto.getRoomSeq()); //객실 번호	
		//System.out.println(bedCategory); //등록한 침대 목록 가져옴
		
		String[] list = bedCategory.split(",");
			//System.out.println(list.length);
		
		int bresult = 0;
		
		for (String bedSeq : list) {
			BedDTO bdto = new BedDTO();
			bdto.setRoomSeq(dto.getRoomSeq());
			bdto.setBedSeq(bedSeq);
			
			bresult += dao.addBedlist(bdto);			
		}
			//System.out.println(bresult);

		try {
			
			if (result == 1 && list.length == bresult) {
				request.setAttribute("title", "객실 정보");
				response.sendRedirect("/naman/host/rooms/list.action");
			} else {
				response.sendRedirect("/naman/host/rooms/add.action");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	//객실 삭제
	@RequestMapping(value="/host/rooms/delok.action", method = {RequestMethod.POST})
	public void delok(HttpServletRequest request, HttpServletResponse response, HttpSession session, String selBox) {
		
		String[] list = selBox.split(",");
		//System.out.println(list.length);
		
		int result = 0;
		
		for (String roomSeq : list) {

			result += dao.delRoom(roomSeq);	
			
		}
		
		try {
			
			if (result == list.length) {
				response.sendRedirect("/naman/host/rooms/list.action");
			} else {
				response.sendRedirect("/naman/host/rooms/list.action");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	//등록된 객실 정보 가져오기
	@RequestMapping(value="/host/rooms/edit.action", method = {RequestMethod.POST})
	public String editRoom(HttpServletRequest request, HttpServletResponse response, HttpSession session, String selBox) {
		
		//System.out.println(selBox);
		
		//String hotelSeq = (String) session.getAttribute("hotelSeq");
		RoomDTO dto = dao.getRoom(selBox);
		List<String> list = dao.getBedList(selBox); //선택한 객실의 침구 번호
		
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);
		request.setAttribute("title", "객실 수정");
		
		return "rooms.edit";
	}
	
	
	
	@RequestMapping(value="/host/rooms/editok.action", method = {RequestMethod.POST})
	public void editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, RoomDTO dto, String bedCategory) {
		
		//객실 수정
		dto.setHotelSeq((String)session.getAttribute("hotelSeq"));
		
		int result = dao.addok(dto); //1
		
		//침구 목록 추가 -> 객실번호 필요
		//System.out.println(dto.getRoomSeq()); //객실 번호	
		//System.out.println(bedCategory); //등록한 침대 목록 가져옴
		
		String[] list = bedCategory.split(",");
			//System.out.println(list.length);
		
		int bresult = 0;
		
		for (String bedSeq : list) {
			BedDTO bdto = new BedDTO();
			bdto.setRoomSeq(dto.getRoomSeq());
			bdto.setBedSeq(bedSeq);
			
			bresult += dao.addBedlist(bdto);			
		}
			//System.out.println(bresult);

		try {
			
			if (result == 1 && list.length == bresult) {
				request.setAttribute("title", "객실 정보");
				response.sendRedirect("/naman/host/rooms/list.action");
			} else {
				response.sendRedirect("/naman/host/rooms/add.action");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	
	

	
}
