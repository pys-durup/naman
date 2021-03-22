package com.test.naman.host.statistics;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticsDAO implements IStatisticsDAO {

	@Autowired
	private SqlSessionTemplate template;

	@Override
	public StatisticsDTO getstatus(StatisticsDTO dto) {
		
		return template.selectOne("host.getstatus", dto);
	}

	@Override
	public SalesDTO getSales(Map<String, Object> map) {
	
		return template.selectOne("host.getsales", map);
	}

	@Override
	public CapacityDTO getrCap(Map<String, Object> map) {
		
		return template.selectOne("host.getrCap", map);
	}

	@Override
	public int getTotal(Map<String, Object> map) {
		
		return template.selectOne("host.getTotal", map);
	}
	
	
	
}

