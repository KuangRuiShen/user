
package com.app.view.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.app.view.service.VideoService;

/**
 * @author krs
 * @date 创建时间  2018年5月31日 下午1:42:03
 * @describe
 */
@RestController
@RequestMapping("upload")
public class FileUploadController {

	final static String url ="http://127.0.0.1/";
	final static String realpath ="c:/file/";
	
	@Autowired
	private VideoService videoService;
	

	/**
	 * 文章分类新增、修改提交
	 * @param model
	 * @param newsCategory
	 * @param imageFile
	 * @param httpSession
	 * @return
	 */
	@PostMapping(value = "/image" , produces = "multipart/form-data	;charset=UTF-8") 
	public String image(@RequestParam MultipartFile file,HttpServletRequest request) {
		String path = "";
		String ip = getRemortIP(request);
			if (file.isEmpty()) {
				System.out.println("文件未上传");
			} else {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				Date date = new java.util.Date();
				String strDate = sdf.format(date);
				String fileName = strDate + new Random().nextInt(1000)
						        + file.getOriginalFilename().substring(
						         file.getOriginalFilename().indexOf("."),
								 file.getOriginalFilename().length());
//				String realPath = request.getSession().getServletContext().getRealPath("/upload/img");
//				System.out.println("realPath : "+realPath);
				try {
					FileUtils.copyInputStreamToFile(file.getInputStream(),new File(realpath+"upload/img/", fileName));
					path = "http://"+ip+"/upload/img/"+fileName;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		return path;
	}
	
	@PostMapping(value = "/video" , produces = "multipart/form-data	;charset=UTF-8") 
	public String video(@RequestParam MultipartFile file,HttpServletRequest request,@RequestParam String vid) {
		String path = "";
		String ip = getRemortIP(request);
			if (file.isEmpty()) {
				System.out.println("文件未上传");
			} else {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				Date date = new java.util.Date();
				String strDate = sdf.format(date);
				String fileName = strDate + new Random().nextInt(1000)
						        + file.getOriginalFilename().substring(
						         file.getOriginalFilename().lastIndexOf("."),
								 file.getOriginalFilename().length());
				try {
					FileUtils.copyInputStreamToFile(file.getInputStream(),new File(realpath+"upload/video/", fileName));
					path = "http://"+ip+"/upload/video/"+fileName;
					videoService.saveVideourl(vid,path);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		return path;
	}
	
	
	public String getRemortIP(HttpServletRequest request) { 
		  if (request.getHeader("x-forwarded-for") == null) { 
		   return request.getRemoteAddr(); 
		  } 
		  return request.getHeader("x-forwarded-for"); 
		 }
}
