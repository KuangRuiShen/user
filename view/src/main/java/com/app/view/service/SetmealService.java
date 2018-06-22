package com.app.view.service;

import java.util.List;

import com.app.view.entry.Setmeal;

/**
 * @author krs
 * @date 创建时间  2018年6月22日 下午6:57:52
 * @describe
 */
public interface SetmealService {

	List<Setmeal> list(Setmeal sm);

	void edit(Setmeal sm);

}
