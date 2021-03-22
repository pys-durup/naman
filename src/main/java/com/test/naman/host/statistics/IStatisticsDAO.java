package com.test.naman.host.statistics;

import java.util.ArrayList;
import java.util.Map;

public interface IStatisticsDAO {

	StatisticsDTO getstatus(StatisticsDTO dto);

	SalesDTO getSales(Map<String, Object> map);

	CapacityDTO getrCap(Map<String, Object> map);

	int getTotal(Map<String, Object> map);


}
