package com.test.naman;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchHotelDAO implements ISearchDAO{

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<SearchHotelDTO> getCity(String searchtext) {
		
		return template.selectList("main.get",searchtext);
		
	}


	/*public List<String> getCity(String string) {
	
		return template.selectList("main.get",string);
	}*/
	
}
