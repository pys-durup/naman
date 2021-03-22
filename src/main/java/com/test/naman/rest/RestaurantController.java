package com.test.naman.rest;

import java.io.ByteArrayOutputStream;
import java.io.File;
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
public class RestaurantController {
	
	@Autowired
	private IReservationHotelDAO dao;
	@Autowired
	private IRestBoardDAO dao2;

	//메인화면
	@RequestMapping(value="/rest/main.action", method={RequestMethod.GET})
	public String main(HttpSession session) {
		
		
		return "rest.restmain";
	}

	
	//식당추천 게시판 목록
	@RequestMapping(value="/rest/list.action", method= {RequestMethod.GET})
	public String list(HttpServletRequest req, HttpServletResponse resp,HttpSession session) {
		
		List<RestBoardDTO> list = dao2.list();
		req.setAttribute("list", list);
		return "rest.list";
	}
	
	//맛집 추천 게시글 보기 
	@RequestMapping(value="/rest/view.action", method= {RequestMethod.GET})
	public String view(HttpServletRequest req, HttpServletResponse resp,HttpSession session, String resrecseq) {
		
		RestBoardDTO dto = dao2.restBoardView(resrecseq);
		req.setAttribute("dto", dto);
		
		//댓글 가져오기
		List<RestBoardDTO> clist = dao2.commentList(resrecseq);
		req.setAttribute("clist", clist);
		return "rest.view";
	}
	@RequestMapping(value="/rest/commentok.action", method= {RequestMethod.POST})
	public void commentOk(HttpServletRequest req, HttpServletResponse resp,HttpSession session, String resrecseq,RestBoardDTO dto) {
		
		String seq = "1";
		//dto.setCustomerseq((String)session.getAttribute("seq"));
		dto.setCustomerseq(seq);
		dto.setResrecseq(resrecseq);
		int result = dao2.commentAdd(dto);
		//3.
		try {
			if(result==1) {
				resp.sendRedirect("/naman/rest/view.action");
			} else {
				PrintWriter writer = resp.getWriter();
				
				writer.print("<html><body>");
				writer.print("<script>");
				writer.print("alert('failed');");
				writer.print("history.back();");
				writer.print("</script>");
				writer.print("</body></html>");
				
				writer.close();
			
			}
				
			
		} catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//맛집 추천 글쓰기
	@RequestMapping(value="/rest/add.action", method= {RequestMethod.GET})
	public String member_add(HttpServletRequest req, HttpServletResponse resp,HttpSession session) {
		
		return "rest.add";
	}

	//글쓰기 완료 
	@RequestMapping(value="/rest/addok.action", method= {RequestMethod.POST})
	public void member_addok(HttpServletRequest req, HttpServletResponse resp,HttpSession session, RestBoardDTO dto) {
		String seq = "1";
		//dto.setCustomerseq((String)session.getAttribute("seq"));
		dto.setCustomerseq(seq);
		int result = dao2.restBoardAdd(dto);
	
		//3.
		try {
			if(result==1) {
				resp.sendRedirect("/naman/rest/list.action");
			} else {
				resp.sendRedirect("/naman/rest/add.action");
			}
			
		} catch(Exception e) {
			System.out.println(e);
		}
	}
	
	//식당추천게시판 글수정 
	@RequestMapping(value="/rest/edit.action", method= {RequestMethod.GET})
	public String member_owner_edit(HttpServletRequest request, HttpServletResponse response, HttpSession session, String resrecseq) {//1.
	
		//1. 데이터 가져오기(seq)
		//2. DB위임 -> select 
		//3. dto + JSP 호출하기
		
		//2. 
		RestBoardDTO dto = dao2.restBoardView(resrecseq);
		
		//3.
		request.setAttribute("dto", dto);
		
		return "rest.edit";
	
	}
	
	//식당추천게시판 글수정 완료
	@RequestMapping(value="/rest/editok.action", method= {RequestMethod.POST})
	public void member_owner_editok(HttpServletRequest request, HttpServletResponse response, HttpSession session, RestBoardDTO dto) {
	
		//1. 데이터 가져오기
		//2. DB 위임 -> update
		//3. 결과처리
		
		int result = dao2.restBoardEdit(dto);
		String seq = "1";
		//dto.setCustomerseq((String)session.getAttribute("seq"));
		dto.setCustomerseq(seq);
	
		//3.
		try {
			if(result==1) {
				response.sendRedirect("/naman/rest/view.action?resrecseq=" +dto.getResrecseq());
			} else {
				response.sendRedirect("/naman/rest/edit.action?resrecseq="+dto.getResrecseq());
			}
			
		} catch(Exception e) {
			System.out.println(e);
		}
		
	
	}
	
	//식당추천게시판 글삭제 
	@RequestMapping(value="/rest/del.action", method= {RequestMethod.GET})
	public String member_owner_del(HttpServletRequest request, HttpServletResponse response, HttpSession session, String resrecseq) {
		//1. 데이터 가져오기(seq)
		//2. JSP 호출하기
		
		request.setAttribute("resrecseq", resrecseq);
		
		return "rest.del";
	
	}
	
	//식당추천게시판 글 삭제완료  
	@RequestMapping(value="/rest/delok.action", method= {RequestMethod.POST})
	public void member_owner_delok(HttpServletRequest request, HttpServletResponse response, HttpSession session, String resrecseq) {
				//1. 데이터 가져오기
				//2. DB 위임 -> delete
				//3. 결과처리
				
				int result = dao2.restBoardDel(resrecseq);
			

			
				//3.
				try {
					if(result==1) {
						response.sendRedirect("/naman/rest/list.action");
					} else {
						response.sendRedirect("/naman/rest/view.action?resrecseq="+ resrecseq);
					}
					
				} catch(Exception e) {
					System.out.println(e);
				}
	
	}
	
	
	
	//숙소근처 맛집 선택후 화면 
	@RequestMapping(value="/rest/myrest.action", method={RequestMethod.GET})
	public String myrest(HttpServletRequest req, HttpServletResponse resp,HttpSession session) {
		//1. 데이터받기.
		//2. 데이터가져오기 select <- 숙소예약정보,
		String seq = "1";
		
		//List<ReservationHotelDAO> list = dao.ReservationHotelList(session.getAttribute("seq"));
		List<ReservationHotelDTO> list = dao.ReservationHotelList(seq);
	
		req.setAttribute("list",list);
		
		return "rest.myrest";
	}
	
	//식당 디테일 화면 
	@RequestMapping(value="/rest/restdetailview.action", method={RequestMethod.GET})
	public String restdetailview(HttpServletRequest req, HttpServletResponse resp, String contentid) {
		
		
		//식당리뷰목록가져오기
		List<RestaurantReviewDTO> list = dao.RestReviewList(contentid);
		
		//식당리뷰목록에대한 사진가져오기
		for (RestaurantReviewDTO dto : list) {
		
			List<String> photo = dao.getPhoto(dto.getReviewseq());
			
			System.out.println("photo " + photo);
			
			dto.setPhoto(photo);
		}
		
		
		//식당리뷰 총개수
		int total = dao.countTotalReview(contentid);	
		//식당리뷰 맛있다 개수
		int good = dao.countGoodReview(contentid);
		
		//식당리뷰 보통 개수
		int nomal = dao.countNomalReview(contentid);
		//시탕리뷰 별로 개수
		int bad = dao.countBadReview(contentid);
		

		req.setAttribute("good", good);
		req.setAttribute("nomal", nomal);
		req.setAttribute("bad", bad);
		req.setAttribute("total", total);
		req.setAttribute("contentid", contentid);
		req.setAttribute("list", list);
		
		System.out.println("size(): " + list.size());
		System.out.println(list.get(0).getPhoto());
		
		return "rest.restview";
	}
	
	//리뷰쓰기
	@RequestMapping(value="/rest/reviewwrite.action", method={RequestMethod.GET})
	public String reviewWrite(HttpServletRequest req, HttpServletResponse resp,HttpSession session) {
	
		return "rest.reviewWrite";
	}
	
	
//	@RequestMapping(value="/rest/reviewwriteok.action", method={RequestMethod.POST})
//	public void reviewWriteOk(HttpServletRequest req, HttpServletResponse resp,HttpSession session,String contentid, RestaurantReviewDTO dto) {
//		//1. 데이터 가져오기
//		//	a. 일반데이터(텍스트)
//		//	b. 이진데이터(파일)
//		
//		//dto.setCustomerseq((String)session.getAttribute("seq"));
//		
//		String seq = "1";
//		
//		dto.setCustomerseq(seq);
//		dto.setContentid(contentid);
//
//
//		int result = dao.addReview(dto);
//		
//		try {
//			if(result==1) {
//				Map map = new HashMap();
//				map.put("customerseq",dto.getCustomerseq());
//				map.put("contentid", dto.getContentid());
//				String reviewseq = dao.findSeq(map);
//				
//				dto.setReviewseq(reviewseq);
//				//2. 첨부파일 처리하기
//				
//				MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
//				
//				//첨부파일 참조 객체
//				// - <input type="file" name="attach">
//				List<MultipartFile> attach = multi.getFiles("attach");
//
//				
//				//업로드 파일이 어딨는지? -> 임시 폴더에 저장 -> 우리가 원하는 폴더로 이동 
//				
//				if(attach.size()==0 && attach.get(0).getOriginalFilename().equals("")) {
//					
//				} else {
//					for(int i=0; i<attach.size(); i++) {
//						
//						try {
//						String path = req.getRealPath("img/rest"); //web-app > files
//						System.out.println(path);
//						
//						String filename= getFileName(path, attach.get(i).getOriginalFilename());
//						
//						//이동시킬 최종 경로 + 파일명:
//						File file= new File(path+"\\" + filename);
//						//무조건 덮어쓰기 -> 중복방지 -> 넘버링 직접구현..
//						attach.get(i).transferTo(file); //renameTo()와동일
//						dto.setUpphoto(filename);
//						} catch (Exception e){
//							System.out.println(e);
//						}
//					}
//				}
//				
//			int result2 = dao.uploadPhoto(dto);
//				
//				
//				try {
//					if(result2==1) {
//						resp.sendRedirect("/naman/rest/restdetailview" + contentid);
//					} else {
//						
//						resp.setCharacterEncoding("UTF-8");
//						PrintWriter writer=resp.getWriter();
//						writer.print("<html><head><meta charset='utf-8'></head><body>");
//						writer.print("<script>");
//						writer.print("alert('등록에 실패하였습니다.');");
//						writer.print("history.back();");
//						writer.print("</script>");
//						writer.print("</body></html>");
//						
//						writer.close();
//					}
//					
//				} catch(Exception e) {
//					System.out.println(e);
//				}
//				
//				
//			} else {
//				
//				resp.setCharacterEncoding("UTF-8");
//				PrintWriter writer=resp.getWriter();
//				writer.print("<html><head><meta charset='utf-8'></head><body>");
//				writer.print("<script>");
//				writer.print("alert('등록에 실패하였습니다.');");
//				writer.print("history.back();");
//				writer.print("</script>");
//				writer.print("</body></html>");
//				
//				writer.close();
//			}
//			
//		} catch(Exception e) {
//			System.out.println(e);
//		}
//		
//		System.out.println(dto.getAttach());
//	}
	
	private String getFileName(String path, String filename) {
		
		//return System.currentTimeMillis() +"_" +filename;
		//return System.nanoTime() +"_" +filename;
		
		//dog.png -> dog_1.png > dog_2.png
		
		//path = "files"
		//filename = "dog.png"
		
		int n =1;//인덱스 숫자
		int index = filename.indexOf(".");
		String tempName=filename.substring(0,index); //"dog"
		String tempExt = filename.substring(index); //".png"
		
		while(true) {
			
			File file = new File(path + "\\" + filename); //files\dog.png
			
			if(file.exists()) {
				//있다 -> 중복 -> 파일명 수정
				filename = tempName +"_"+n + tempExt;
				n++;
				
			} else {
				//없다 -> 반환
				return filename;
				
			}
		}
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
