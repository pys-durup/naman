package com.test.naman;

import java.util.List;

public interface ISearchDAO {

	List<SearchHotelDTO> getCity(String searchtext);
	//List<String> getCity(String string);


}
