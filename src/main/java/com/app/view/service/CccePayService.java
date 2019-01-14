package com.app.view.service;

import com.app.view.pojo.CccePay;
import com.app.view.vo.CccePayVO;
import com.baomidou.mybatisplus.service.IService;

/**
 * @author krs
 * @time 2019年1月14日 上午11:57:34
 * @describe
 */

public interface CccePayService extends IService<CccePay> {

	CccePayVO queryVO();

}
