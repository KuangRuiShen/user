package com.app.view.pojo;

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author krs
 * @time 2018年10月22日 上午10:54:40
 * @describe 保存上传文件信息
 */

@Getter
@Setter
@TableName("file_info")
public class FileInfo extends Model<FileInfo> {
	
	private static final long serialVersionUID = -7159141469315255477L;
	
	//文件编号
	@TableId(type=IdType.UUID,value="id")
	private String fileId;
	
	private Long fileSize;//文件大小
	
	private String name;//文件名称
	
	private String url;//文件路径
	
	private String localName;//本地文件的名称
	
	@JsonFormat(pattern = "YYYY-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;//上传时间

	@Override
	protected Serializable pkVal() {
		return this.fileId;
	}

}
