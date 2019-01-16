package com.app.view.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.app.view.mapper.CccePayMapper;
import com.app.view.pojo.CccePay;
import com.app.view.service.CccePayService;
import com.app.view.vo.CccePayVO;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

/**
 * @author krs
 * @time 2019年1月14日 上午11:58:18
 * @describe
 */
@Service
public class CccePayServiceImpl extends ServiceImpl<CccePayMapper, CccePay> implements CccePayService {

	@Override
	public CccePayVO queryVO() {
		EntityWrapper<CccePay> ew = new EntityWrapper<>();
		List<CccePay>list = this.selectList(ew);
		CccePayVO vo = new CccePayVO();
		for(CccePay pay : list) {
			if("1".equals(pay.getId())) {
				vo.setUrl(pay.getUrl());
				vo.setWmerno(pay.getMerno());
				vo.setWkey(pay.getMd5Key());
			}else {
				vo.setZmerno(pay.getMerno());
				vo.setZkey(pay.getMd5Key());
			}
		}	
		return vo;
	} 

}
