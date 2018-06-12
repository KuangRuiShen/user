package com.app.view.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.entry.PayMent;
import com.app.view.mapper.PayMapper;
import com.app.view.service.PayService;
import com.app.view.util.MyUtils;

/**
 * @author krs
 * @date 创建时间  2018年6月12日 下午10:10:31
 * @describe
 */
@Service
public class PayServiceImple implements PayService {
	
	@Autowired
	private PayMapper payMapper;
	
	
	@Override
	public void add(PayMent pm) {
		pm.setStart_time(MyUtils.dateToString(new Date()));
		pm.setResult("0");
		payMapper.add(pm);		
	}

}
