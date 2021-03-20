package com.test.naman.rest;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestBoardDAO implements IRestBoardDAO{
	@Autowired
	private SqlSessionTemplate template;
	
	/***
	 * 식당추천게시판 목록 보기
	 * @author 혜승
	 */
	@Override
	public List<RestBoardDTO> list() {

		return template.selectList("naman.restBoardList");
	}
	
	/***
	 * 식당 추천 게시판 글 내용보기
	 * @author 혜승
	 */
	@Override
	public RestBoardDTO restBoardView(String resrecseq) {
		
		return template.selectOne("naman.restBoardView",resrecseq);
	}
	
	/***
	 * 식당 추천 게시판 글 쓰기
	 * @author 혜승
	 */
	@Override
	public int restBoardAdd(RestBoardDTO dto) {
	
		return template.insert("naman.restBoardAdd",dto);
	}
	
	/***
	 * 식당추천 게시판 글 수정
	 * @author 혜승
	 */
	@Override
	public int restBoardEdit(RestBoardDTO dto) {
		// TODO Auto-generated method stub
		return template.update("naman.restBoardEdit",dto);
	}
	
	/***
	 * 식당 추천 게시판 글 삭제
	 * @author 혜승
	 */
	@Override
	public int restBoardDel(String resrecseq) {
		// TODO Auto-generated method stub
		return template.delete("naman.restBoardDel",resrecseq);
	}

	/***
	 * 댓글 목록 가져오기
	 * @author 혜승
	 */
	@Override
	public List<RestBoardDTO> commentList(String resrecseq) {
		return template.selectList("naman.restCommentList",resrecseq);
	}
	
	/***
	 * 댓글 입력하기
	 * @author 혜승
	 */
	@Override
	public int commentAdd(RestBoardDTO dto) {
		// TODO Auto-generated method stub
		return template.insert("naman.restCommentAdd",dto);
	}


}
