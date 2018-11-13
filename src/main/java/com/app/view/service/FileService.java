package com.app.view.service;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.app.view.pojo.FileInfo;
import com.baomidou.mybatisplus.service.IService;



/**
 * @author krs
 * @time 2018年10月22日 上午11:10:29
 * @describe 文件操作服务
 */

public interface FileService extends IService<FileInfo>{

	FileInfo saveFile(MultipartFile file) throws Exception ;

	void down(String wjbh, HttpServletResponse response);

	void delete(String wjbh);

}
