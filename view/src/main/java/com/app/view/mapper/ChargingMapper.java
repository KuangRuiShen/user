package com.app.view.mapper;

import java.util.List;

import com.app.view.entry.ChargingCount;
import com.app.view.entry.ChargingParam;
import com.app.view.pojo.Charging;

public interface ChargingMapper {

	List<Charging> list(ChargingParam p);

	List<ChargingCount> count(ChargingParam p);

}	
