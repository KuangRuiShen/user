package com.app.view.mapper;

import java.util.List;
import java.util.Map;

import com.app.view.entry.ChargingCount;
import com.app.view.entry.ChargingParam;
import com.app.view.pojo.Charging;

public interface BuckleMapper {

	List<ChargingCount> count(ChargingParam p);

	List<Charging> list(ChargingParam p);

	List<Map<String, String>> getMange(String userId);
//修改参数
	void updateByUserId(String userId);

}
