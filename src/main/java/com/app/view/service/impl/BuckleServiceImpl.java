package com.app.view.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.entry.ChargingCount;
import com.app.view.entry.ChargingParam;
import com.app.view.mapper.BuckleMapper;
import com.app.view.pojo.Charging;
import com.app.view.service.BuckleService;
import com.app.view.service.PayService;

@Service
public class BuckleServiceImpl implements BuckleService{
	
	@Autowired
	private BuckleMapper buckleMapper;
	
//	@Autowired
//	private SystemMapper systemMapper;
	
	@Autowired
	private PayService payService;
	
	@Override
	public List<Charging> list(ChargingParam p) {
		Integer num =Integer.parseInt(payService.getInfoByName("beginValue")) ;
		List<Charging> list = buckleMapper.list(p);
		if(list.size() <= num){
			buckleMapper.updateByUserId(p.getUserId());
			//修改后再查询多一次
			   list = buckleMapper.list(p);
		}
		return list;
	}

	@Override
	public Map<String, Integer> count(ChargingParam p) {
		Map<String, Integer> resutl = new HashMap<>();
		int total = 0;
		List<ChargingCount> datas = buckleMapper.count(p);
		for(ChargingCount res :datas){
			String id = res.getId();
			if(res.getTotal()  != null){
				total = total + res.getTotal();
				resutl.put("r"+id, res.getTotal());	
			}			
		}
		resutl.put("total", total);
		return resutl;
	}

	@Override
	public List<Map<String, String>> getMange(String userId) {
		// TODO Auto-generated method stub
		return buckleMapper.getMange(userId);
	}



}
