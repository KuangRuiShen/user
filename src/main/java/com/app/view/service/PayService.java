package com.app.view.service;

import java.util.Map;

import com.app.view.entry.PayInfo;
import com.app.view.entry.PayMent;

/**
 * @author krs
 * @date 创建时间  2018年6月12日 下午10:10:18
 * @describe
 */
public interface PayService {

	void add(PayMent pm);

	void changeUser(PayInfo pm);

	String getPayUrl(PayMent pm);

	Map<String, Object> list();

	void change(Map<String, String> pi);

	String getInfoByName(String string);


}
