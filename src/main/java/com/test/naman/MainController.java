package com.test.naman;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.naman.free.BoardDTO;
import com.test.naman.free.IBoardDAO;

@Controller
public class MainController {
	
	@Autowired
	private ISearchDAO dao;
	


	@RequestMapping(value="/index.action", method= {RequestMethod.GET})
	public String nonindex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		
		
		return "main.Non";
	}
	
//	@RequestMapping(value="/index.action", method= {RequestMethod.GET})
//	public String index(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//		
//		
//			
//		
//		
//		return "main.Login";
//	}
	
	
	@RequestMapping(value="/auth.action", method= {RequestMethod.GET})
	public String auth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		session.setAttribute("customerSeq", 1);
		
		return "main.Login";
	}
	
	@RequestMapping(value="/hauth.action", method= {RequestMethod.GET})
	public String hauth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		session.setAttribute("customerSeq", 2);
		session.setAttribute("h", "get");
		
		return "main.Login";
	}
	
	@RequestMapping(value="/logout.action", method= {RequestMethod.GET})
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		
		session.removeAttribute("customerSeq");
		
		if (session.getAttribute("h") == "get") {
			session.removeAttribute("h");
			
		}
		
		return "main.Non";
	}
	
	@RequestMapping(value="/mypage.action", method= {RequestMethod.GET})
	public String mypage() {
		
		return "mypage.list";
	}
	
	
	@RequestMapping(value="/try.action", method= {RequestMethod.GET})
	public String trys() {
		
		return "try";
	}
	
	@RequestMapping(value="/hotel.action", method= {RequestMethod.GET})
	public String hotel(HttpServletRequest request, HttpServletResponse response) {
		
		String a = (String)request.getAttribute("text");
		String b = (String)request.getAttribute("inDate");
		String c = (String)request.getAttribute("outDate");
		String d = (String)request.getAttribute("selperson");
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		
		return "hotel";
	}
	
	
	@RequestMapping(value="/ajax/city.action", method= {RequestMethod.GET})
	public String ajaxCity(HttpServletRequest request, HttpServletResponse response, String searchtext) {
		
		
		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain"); //
		List<SearchHotelDTO> list = dao.getCity(searchtext);
		
		
		/*
		 * request.setAttribute("list", list);
		 */		
		
		String temp = "";
		for(SearchHotelDTO dto : list) {
			temp += dto.getRegion();

			temp += dto.getName();
			temp += ",";
			
		}
		
		temp = temp.substring(0, temp.length()-1);
		
		
		try {
			PrintWriter writer = response.getWriter();
			writer.print(temp);
			
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		//System.out.println(temp);
		
		//List<String> list = dao.getCity(string);
		//request.setAttribute("list", list);
		
		
		
		
		
		return "try";
	}
}
