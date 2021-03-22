package com.test.naman.host;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class HostController {
	
	@Autowired
	private IHotelDAO dao;
	
	@Autowired
	private IPicDAO pdao;
	
	@RequestMapping(value="/host/logout.action", method = {RequestMethod.GET})
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		session.removeAttribute("customerSeq");
		session.removeAttribute("hotelSeq");
		session.removeAttribute("name");
		//session.invalidate();
		
		try {	
			response.sendRedirect("/naman/index.action");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="/host/register.action", method = {RequestMethod.GET})
	public String register(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		request.setAttribute("title", "숙소 등록");
		return "register.register";
		
	}

	@RequestMapping(value="/host/registerok.action", method = {RequestMethod.POST})
	public void registerok(HttpServletRequest request, HttpServletResponse response, HttpSession session, HotelDTO dto, PicDTO pdto) {
		
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest) request;
		
		//숙소 정보 등록
		dto.setCustomerSeq((String) session.getAttribute("customerSeq"));
		int result = dao.register(dto);	
		
		//숙소 사진 등록
		String customerSeq = (String)session.getAttribute("customerSeq");
		String hotelSeq = dao.getHotelSeq(customerSeq);
		pdto.setHotelSeq(hotelSeq);
		
		List<MultipartFile> piclist = multi.getFiles("pic");

		int presult = 0;
		String filename = "";
		
		try {
			
			for (MultipartFile pic : piclist) {
				
				String path = request.getRealPath("files");
				
				filename = getFileName(path, pic.getOriginalFilename());
				
				//임시 폴더에서 이동할 폴더
				File file = new File(path + "\\" + pic.getOriginalFilename());		
				pic.transferTo(file);
				
				//DB 작업
				pdto.setFilename(pic.getOriginalFilename());
				presult += pdao.registerPic(pdto);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

		//결과 반환
		try {
			
			if (result == 1 && piclist.size() == presult) {
				request.setAttribute("title", "예약 현황");
				response.sendRedirect("/naman/host/reservation/booking.action");
			} else {
				response.sendRedirect("/naman/host/register.action");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	//파일 중복이름 방지
	private String getFileName(String path, String filename) {
		
		int n = 1;

		int index = filename.indexOf(".");
		String tempName = filename.substring(0, index);
		String tempExt = filename.substring(index);
		
		while (true) {
			
			File file = new File(path + "\\" + filename);
			
			if (file.exists()) {
				filename = tempName + "_" + n +tempExt;
				n++;
				
			} else {
				return filename;
			}
			
		}
		
	}

	
	@RequestMapping(value="/host/edit.action", method = {RequestMethod.GET})
	public String edit(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		String hotelSeq = (String) session.getAttribute("hotelSeq");
		
		HotelDTO dto = dao.get(hotelSeq);
		
		request.setAttribute("dto", dto);
		request.setAttribute("title", "숙소정보 수정");
		
		return "register.edit";
	}
	
	
	//숙소 정보 수정
	@RequestMapping(value="/host/editok.action", method = {RequestMethod.POST})
	public void editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, HotelDTO dto, PicDTO pdto) {

		MultipartHttpServletRequest multi = (MultipartHttpServletRequest) request;
		
		//숙소 정보 수정
		dto.setCustomerSeq((String) session.getAttribute("customerSeq"));
		int result = dao.edit(dto);	
		
		//숙소 사진 변경
		String customerSeq = (String)session.getAttribute("customerSeq");
		String hotelSeq = dao.getHotelSeq(customerSeq);
		pdto.setHotelSeq(hotelSeq);
		
		List<MultipartFile> piclist = multi.getFiles("pic");
		
		int presult = 0;
		String filename = "";
		
		try {
			
			for (MultipartFile pic : piclist) {
				
				String path = request.getRealPath("files");
				
				filename = getFileName(path, pic.getOriginalFilename());
				
				//임시 폴더에서 이동할 폴더
				File file = new File(path + "\\" + pic.getOriginalFilename());		
				pic.transferTo(file);
				
				//DB 작업
				pdto.setFilename(pic.getOriginalFilename());
				presult += pdao.registerPic(pdto);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

		//결과 반환
		try {
			
			if (result == 1 && piclist.size() == presult) {
				request.setAttribute("title", "예약 현황");
				response.sendRedirect("/naman/host/reservation/booking.action");
			} else {
				response.sendRedirect("/naman/host/register.action");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}

		
	}
	
	
	
	
	
	
	
	
	
	
}
