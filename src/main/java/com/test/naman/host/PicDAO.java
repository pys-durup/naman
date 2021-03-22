package com.test.naman.host;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PicDAO implements IPicDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	//숙소 사진 등록
	@Override
	public int registerPic(PicDTO pdto) {

		return template.insert("host.registerPic", pdto);
	}
	
	
}
