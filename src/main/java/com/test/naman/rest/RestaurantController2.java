package com.test.naman.rest;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RestaurantController2 {
	
	@Autowired
	private IReservationHotelDAO dao;
	
	//메인화면
	@RequestMapping(value="/rest/main.action", method={RequestMethod.GET})
	public String main(HttpSession session) {
		

		
		
		return "rest.restmain";
	}
	
	//숙소근처 맛집 선택후 화면 
	@RequestMapping(value="/rest/myrest.action", method={RequestMethod.GET})
	public String myrest(HttpServletRequest req, HttpServletResponse resp,HttpSession session) {
		//1. 데이터받기.
		//2. 데이터가져오기 select <- 숙소예약정보,
		String seq = "1";
		
		//List<ReservationHotelDAO> list = dao.ReservationHotelList(session.getAttribute("seq"));
		List<ReservationHotelDAO> list = dao.ReservationHotelList(seq);
		
		req.setAttribute("list",list);
		
		return "rest.myrest";
	}
	
	//식당 디테일 화면 
	@RequestMapping(value="/rest/restdetailview.action", method={RequestMethod.GET})
	public String restdetailview(HttpServletRequest req, HttpServletResponse resp, String contentid) {
		req.setAttribute("contentid", contentid);
		
		return "rest.restview";
	}
	
	
	
	//숙소 좌표 잡아서 근처 식당 정보 
	@RequestMapping(value="/rest/aroundrest.action", method={RequestMethod.GET})
	public void aroundRest(HttpServletRequest req, HttpServletResponse resp, String mapx, String mapy) throws Exception{
//		mapx = "126.981106";
//		mapy = "37.568477";
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?ServiceKey=";
		String serviceKey="1BF%2BBPEE64gjNfeFUd9TgJNWo4TkcCN3HlOFbDXC5mV7Sey4n%2F0sNkHWZPSIEHd5VxJk2kKCDOGzy%2Bw15UXX6g%3D%3D";
		String parameter="";
		
		PrintWriter out = resp.getWriter();
		//http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=인증키
		//&contentTypeId=&areaCode=1&sigunguCode=1&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=12&pageNo=1
		parameter = parameter + "&" +"contentTypeId=39";
		parameter = parameter + "&" +"arrange=A";//e
		parameter = parameter + "&" +"listNY=Y";
		parameter = parameter + "&" +"MobileOS=ETC";
		parameter = parameter + "&" +"MobileApp=test";
		parameter = parameter + "&" +"numOfRows=12";
		parameter = parameter + "&" +"pageNo=1";
		parameter = parameter + "&" +"mapX=" + mapx;
		parameter = parameter + "&" +"mapY=" + mapy;
		parameter = parameter + "&" +"radius=10000";
		parameter = parameter + "&" +"_type=json";
		
		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);
		
		//System.out.println(addr);
		
//		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		InputStream in = url.openStream(); 
//		CachedOutputStream bos = new CachedOutputStream();
		ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();
	    
		String mbos = bos1.toString("UTF-8");
		//System.out.println("mbos: "+mbos);
	    
		byte[] b = mbos.getBytes("UTF-8");
		String s = new String(b, "UTF-8");
		out.println(s);
		
		out.close();
//		JSONObject json = new JSONObject();
//		json.put("data", s);
////		json.put("data", data);
//		System.out.println("json: "+json);
//		

	}
	
	
	//선택한 식당 기본 정보
	@RequestMapping(value="/rest/restview.action", method={RequestMethod.GET})
	public void  restView(HttpServletRequest req, HttpServletResponse resp, String contentid) throws Exception{
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
	
		String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=";
		String serviceKey="1BF%2BBPEE64gjNfeFUd9TgJNWo4TkcCN3HlOFbDXC5mV7Sey4n%2F0sNkHWZPSIEHd5VxJk2kKCDOGzy%2Bw15UXX6g%3D%3D";
		String parameter="";
		
		PrintWriter out = resp.getWriter();
		////http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=인증키&contentTypeId=39&contentId=1953272&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&
			//firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y
		parameter = parameter + "&" +"contentId="+contentid;
		parameter = parameter + "&" +"contentTypeId=39";
		parameter = parameter + "&" +"MobileOS=ETC";
		parameter = parameter + "&" +"MobileApp=test";
		parameter = parameter + "&" +"defaultYN=Y";
		parameter = parameter + "&" +"firstImageYN=Y";
		parameter = parameter + "&" +"areacodeYN=Y";
		parameter = parameter + "&" +"catcodeYN=Y";
		parameter = parameter + "&" +"addrinfoYN=Y";
		parameter = parameter + "&" +"mapinfoYN=Y";
		parameter = parameter + "&" +"overviewYN=Y";
		parameter = parameter + "&" +"transGuideYN=Y";
		parameter = parameter + "&" +"_type=json";
		
		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);
		
		System.out.println(addr);
		
//		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		InputStream in = url.openStream(); 
//		CachedOutputStream bos = new CachedOutputStream();
		ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();
	    
		String mbos = bos1.toString("UTF-8");
		System.out.println("mbos: "+mbos);
	    
		byte[] b = mbos.getBytes("UTF-8");
		String s = new String(b, "UTF-8");
		out.println(s);
		
		out.close();
//		JSONObject json = new JSONObject();
//		json.put("data", s);
////		json.put("data", data);
//		System.out.println("json: "+json);
		
		


	}
	
	
	//선택한 식당 메뉴사진
	@RequestMapping(value="/rest/restphoto.action", method={RequestMethod.GET})
	public void restphoto(HttpServletRequest req, HttpServletResponse resp, String contentid) throws Exception{
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey=";
		String serviceKey="1BF%2BBPEE64gjNfeFUd9TgJNWo4TkcCN3HlOFbDXC5mV7Sey4n%2F0sNkHWZPSIEHd5VxJk2kKCDOGzy%2Bw15UXX6g%3D%3D";
		String parameter="";
		
		PrintWriter out = resp.getWriter();
//		http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey=인증키
		//&contentTypeId=39&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&contentId=1953272&imageYN=N
		parameter = parameter + "&" +"contentId="+contentid;
		parameter = parameter + "&" +"contentTypeId=39";
		parameter = parameter + "&" +"MobileOS=ETC";
		parameter = parameter + "&" +"MobileApp=test";
		parameter = parameter + "&" +"imageYN=N";
		parameter = parameter + "&" +"_type=json";
		
		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);
		
		System.out.println(addr);
		
//		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		InputStream in = url.openStream(); 
//		CachedOutputStream bos = new CachedOutputStream();
		ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();
	    
		String mbos = bos1.toString("UTF-8");
		System.out.println("mbos: "+mbos);
	    
		byte[] b = mbos.getBytes("UTF-8");
		String s = new String(b, "UTF-8");
		out.println(s);
		
		out.close();
//		JSONObject json = new JSONObject();
//		json.put("data", s);
////		json.put("data", data);
//		System.out.println("json: "+json);
//		
		
	

	}
	
	
	//선택한 식당 상세내용
	@RequestMapping(value="/rest/restdetail.action", method={RequestMethod.GET})
	public void restdetail(HttpServletRequest req, HttpServletResponse resp, String contentid) throws Exception{
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=";
		String serviceKey="1BF%2BBPEE64gjNfeFUd9TgJNWo4TkcCN3HlOFbDXC5mV7Sey4n%2F0sNkHWZPSIEHd5VxJk2kKCDOGzy%2Bw15UXX6g%3D%3D";
		String parameter="";
		
		PrintWriter out = resp.getWriter();
//http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=인증키
		//&contentTypeId=39&contentId=1953272&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y
		parameter = parameter + "&" +"contentId="+contentid;
		parameter = parameter + "&" +"contentTypeId=39";
		parameter = parameter + "&" +"MobileOS=ETC";
		parameter = parameter + "&" +"MobileApp=test";
		parameter = parameter + "&" +"introYN=Y";
		parameter = parameter + "&" +"_type=json";
		
		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);
		
		//System.out.println(addr);
		
//		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

		InputStream in = url.openStream(); 
//		CachedOutputStream bos = new CachedOutputStream();
		ByteArrayOutputStream  bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();
	    
		String mbos = bos1.toString("UTF-8");
		System.out.println("mbos: "+mbos);
	    
		byte[] b = mbos.getBytes("UTF-8");
		String s = new String(b, "UTF-8");
		out.println(s);
		
		out.close();
//		JSONObject json = new JSONObject();
//		json.put("data", s);
////		json.put("data", data);
//		System.out.println("json: "+json);

	}
	
}
