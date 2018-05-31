
package com.app.view.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author krs
 * @date 创建时间  2018年5月31日 下午1:42:03
 * @describe
 */
@RestController
@RequestMapping("upload")
public class FileUploadController {

	
	/**
	 * 文章分类新增、修改提交
	 * @param model
	 * @param newsCategory
	 * @param imageFile
	 * @param httpSession
	 * @return
	 */
	@PostMapping("/image")
	public String newsCategoryEditPost(@RequestParam MultipartFile[] imageFile,HttpServletRequest request) {
		String path = "";
		for (MultipartFile file : imageFile) {
			if (file.isEmpty()) {
				System.out.println("文件未上传");
			} else {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				Date date = new java.util.Date();
				String strDate = sdf.format(date);
				String fileName = strDate + file.getOriginalFilename().substring(
						        file.getOriginalFilename().indexOf("."),
								file.getOriginalFilename().length());
				String realPath = request.getSession().getServletContext().getRealPath("/upload/image");
				System.out.println("realPath : "+realPath);
				try {
					FileUtils.copyInputStreamToFile(file.getInputStream(),new File(realPath, fileName));
					path = "/upload/image/"+fileName;
//					newsCategory.setImage("/userfiles/"+fileName);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		return path;
	}
}
