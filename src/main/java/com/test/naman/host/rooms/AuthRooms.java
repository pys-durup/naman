package com.test.naman.host.rooms;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AuthRooms {

	@Autowired
	private IRoomDAO dao;
	
		//숙소를 등록한 회원만 접근 가능
		@Pointcut("execution(public String com.test.naman.host.rooms.RoomController.hMember_rooms(..))")
		public void pc1() {
			
		}
	
		public void hmember(JoinPoint joinPoint) {
			
			HttpServletResponse response = (HttpServletResponse) joinPoint.getArgs()[1];
			HttpSession session = (HttpSession) joinPoint.getArgs()[2];
			
			if (session.getAttribute("hotelSeq") == null) {
				
				try {
					
					PrintWriter writer = response.getWriter();
					writer.print("<html><head>");	
					writer.print("<script>");
					writer.print("alert('failed');");
					writer.print("</script>");
					writer.print("</body></html>");
					writer.close();			
					
				} catch (Exception e) {
					System.out.println(e);
				}
			
			}
			
		}
	
	
	
}
