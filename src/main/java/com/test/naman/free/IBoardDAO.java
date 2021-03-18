package com.test.naman.free;

import java.util.List;

public interface IBoardDAO {

	List<BoardDTO> getList();

	BoardDTO getView(String freeSeq);

	int add(BoardDTO dto);

	int edit(BoardDTO dto);

	int del(String freeSeq);

	

}
