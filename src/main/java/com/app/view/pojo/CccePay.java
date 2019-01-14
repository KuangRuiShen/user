package com.app.view.pojo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import lombok.Getter;
import lombok.Setter;

/**
 * @author krs
 * @time 2019年1月14日 上午11:55:13
 * @describe
 */
@Getter
@Setter
@TableName("pay_cccepay")
public class CccePay {

	@TableId
	private String id;
	
	private String url;
	
	private String merno;//商户号
	
	@TableField("md5Key")
	private String md5Key;//秘钥

	public CccePay(String id, String url, String merno, String md5Key) {
		super();
		this.id = id;
		this.url = url;
		this.merno = merno;
		this.md5Key = md5Key;
	}

	public CccePay() {
		super();
	}
	
	
}
