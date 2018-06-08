package com.app.view.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.view.mapper.CodeMapper;
import com.app.view.pojo.MyItem;
import com.app.view.service.CodeService;

/**
 * @author krs
 * @date 创建时间  2018年6月8日 下午5:51:37
 * @describe
 */
@Service
public class CodeServiceImpl  implements CodeService{
	
	@Autowired
	private CodeMapper codeMapper;

	@Override
	public List<MyItem> list(String type) {
		if(StringUtils.isBlank(type)){
			type = "page";
		}
		return codeMapper.list(type);
	}

}
