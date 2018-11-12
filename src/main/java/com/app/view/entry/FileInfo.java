package com.app.view.entry;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

/**
 * @author krs
 * @time 2018年10月22日 上午10:54:40
 * @describe 保存上传文件信息
 */

@Getter
@Setter
@TableName("LY_WJ_JBXX")
public class FileInfo extends Model<FileInfo> {
	
	private static final long serialVersionUID = -7159141469315255477L;
	
	//文件编号
	@TableId(type=IdType.UUID,value="wjbh")
	private String fileId;
	
	@TableField("wjdx")
	private Long fileSize;//文件大小
	
	@TableField("wjmc")
	private String name;//文件名称
	
	@TableField("wjlj")
	private String url;//文件路径
	
	@TableField("bdmc")
	private String localName;//本地文件的名称
	
	
	@JsonFormat(pattern = "YYYY-MM-dd HH:mm:ss", timezone = "GMT+8")
	@TableField("cjsj")
	private Date createTime;//上传时间

	@Override
	protected Serializable pkVal() {
		return this.fileId;
	}

}