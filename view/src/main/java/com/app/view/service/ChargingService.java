package com.app.view.service;

import java.util.List;
import java.util.Map;

import com.app.view.entry.ChargingParam;
import com.app.view.pojo.Charging;

public interface ChargingService {

	List<Charging> list(ChargingParam p);

	Map<String, Integer> count(ChargingParam p);

}
