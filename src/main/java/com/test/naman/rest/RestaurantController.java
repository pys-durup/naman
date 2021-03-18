package com.test.naman.rest;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class RestaurantController {
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/rest/resdata.action", method={RequestMethod.GET})
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=";
		String serviceKey="1BF%2BBPEE64gjNfeFUd9TgJNWo4TkcCN3HlOFbDXC5mV7Sey4n%2F0sNkHWZPSIEHd5VxJk2kKCDOGzy%2Bw15UXX6g%3D%3D";
		String parameter="";
		
		PrintWriter out = resp.getWriter();
		//http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=인증키
		//&contentTypeId=&areaCode=1&sigunguCode=1&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=12&pageNo=1
		parameter = parameter + "&" +"contentId=1118680";
		parameter = parameter + "&" +"areaCode=1";
		parameter = parameter + "&" +"sigunguCode=1";
		parameter = parameter + "&" +"contentTypepeld=39";
		parameter = parameter + "&" +"cat1=";
		parameter = parameter + "&" +"cat2=";
		parameter = parameter + "&" +"cat3=";
		parameter = parameter + "&" +"listNY=Y";
		parameter = parameter + "&" +"MobileOS=ETC";
		parameter = parameter + "&" +"MobileApp=test";
		parameter = parameter + "&" +"arrange=A";
		parameter = parameter + "&" +"numOfRows=12";
		parameter = parameter + "&" +"pageNo=1";
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
		//JSONObject json = new JSONObject();
		//json.put("data", s);
//		json.put("data", data);
		//System.out.println("json: "+json);
		

	}

}
