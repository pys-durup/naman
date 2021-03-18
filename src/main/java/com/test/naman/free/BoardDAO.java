package com.test.naman.free;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO implements IBoardDAO{

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<BoardDTO> getList() {
	
		return template.selectList("main.list");
	}

	@Override
	public BoardDTO getView(String freeSeq) {
		
		return template.selectOne("main.view",freeSeq);
	}

	@Override
	public int add(BoardDTO dto) {
		
		return template.insert("main.add", dto);
	}

	@Override
	public int edit(BoardDTO dto) {

		
		return template.update("main.edit",dto);
	}

	@Override
	public int del(String freeSeq) {
		
		return template.delete("main.del",freeSeq);
	}
	
	
	
	
}
