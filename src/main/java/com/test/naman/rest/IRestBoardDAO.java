package com.test.naman.rest;

import java.util.List;

public interface IRestBoardDAO {

	List<RestBoardDTO> list();

	RestBoardDTO restBoardView(String resrecseq);

	int restBoardAdd(RestBoardDTO dto);

	int restBoardEdit(RestBoardDTO dto);

	int restBoardDel(String resrecseq);

	List<RestBoardDTO> commentList(String resrecseq);

	int commentAdd(RestBoardDTO dto);

}
