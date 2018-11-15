package com.app.view.service;

import java.util.List;
import java.util.Map;

import com.app.view.entry.ChargingParam;
import com.app.view.pojo.Charging;

public interface BuckleService {

	List<Charging> list(ChargingParam p);

	Object count(ChargingParam p);

	List<Map<String, String>> getMange(String userId);

}
