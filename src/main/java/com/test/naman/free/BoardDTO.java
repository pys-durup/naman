package com.test.naman.free;

import lombok.Data;

@Data
public class BoardDTO {

	private String freeSeq;  //글번호
	private String title; //글제목
	private String content; // 글내용
	private String regdate; //날짜
	private String customerSeq;	//회원사람번호

	private String name; //글쓴이
	
	private int readcount; //조회수

	//private String filename;

	private String ccount; // 현재 글에 달린 댓글 수

}

