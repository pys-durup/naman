package com.test.naman.free;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FreeBoardController {

	@Autowired
	private IBoardDAO bdao;
	
	
	@RequestMapping(value="/free/list.action", method= {RequestMethod.GET})
	public String freeBoard(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		List<BoardDTO> list = bdao.getList();
				
		
		request.setAttribute("list", list);
		
		return "free.list";
	}
	
	@RequestMapping(value="/free/view.action", method= {RequestMethod.GET})
	public String view(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq) {
		

		BoardDTO dto = bdao.getView(freeSeq);
		
		request.setAttribute("dto", dto);
		
		
		return "free.view";
	}
	
	
	
	@RequestMapping(value="/free/add.action", method= {RequestMethod.GET})
	public String add(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq) {
		
				
		
		return "free.add";
	}
	
	@RequestMapping(value="/free/addok.action", method= {RequestMethod.POST})
	public void addok(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq, BoardDTO dto) {
		
			dto.setCustomerSeq("1");
			
			
			int result = bdao.add(dto);	
			
			try {
				
				if(result ==1) {
					response.sendRedirect("/naman/free/list.action");
				} else {
					response.sendRedirect("/naman/free/add.action");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}
	@RequestMapping(value="/free/edit.action", method= {RequestMethod.GET})
	public String edit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq) {
		
	
		  BoardDTO dto = bdao.getView(freeSeq);
		  
		  request.setAttribute("dto", dto);
	
		
		return "free.edit";
	}
	
	@RequestMapping(value="/free/editok.action", method= {RequestMethod.POST})
	public void editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq, BoardDTO dto) {
		
		
		dto.setCustomerSeq("1");
		
		
		int result = bdao.edit(dto);	
		
		try {
			
			if(result == 1) {
				response.sendRedirect("/naman/free/list.action");
			} else {
				response.sendRedirect("/naman/free/add.action");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
	
	@RequestMapping(value="/free/del.action", method= {RequestMethod.GET})
	public String del(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq) {
		
	
		  
		  
		  request.setAttribute("freeSeq", freeSeq);
	
		
		return "free.del";
	}
	
	@RequestMapping(value="/free/delok.action", method= {RequestMethod.POST})
	public void delok(HttpServletRequest request, HttpServletResponse response, HttpSession session, String freeSeq, BoardDTO dto) {
		
		
		dto.setCustomerSeq("1");
		
		
		int result = bdao.del(freeSeq);	
		
		try {
			
			if(result == 1) {
				response.sendRedirect("/naman/free/list.action");
			} else {
				response.sendRedirect("/naman/free/del.action");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
}
