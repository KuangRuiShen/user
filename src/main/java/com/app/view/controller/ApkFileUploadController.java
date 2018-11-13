package com.app.view.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.app.view.entry.FileInfo;
import com.app.view.service.FileService;
import com.app.view.util.JsonResult;

/**
 * @author krs
 * @time 2018年10月22日 上午9:24:16
 * @describe 文件上传
 */
@RestController
@RequestMapping("/file")
public class ApkFileUploadController {

	@Autowired
	private FileService fileService;

	/*
	 * 文件上传
	 */
	@PostMapping("/upload")
	public JsonResult<?> upload(MultipartFile file) {
		try {
			// 保存文件
			FileInfo f = fileService.saveFile(file);
			return JsonResult.buildSuccessResult(f);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.error("上传异常，请联系管理员！");
		}
	}


	@GetMapping("/query")
	public JsonResult<?> query(String fileId) {
		try {
			// 查询
			FileInfo f = fileService.selectById(fileId);
			return JsonResult.buildSuccessResult(f);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.error("查询异常，请联系管理员！");
		}
	}

	@GetMapping("/apk/{fileId}")
	public JsonResult<?> down(HttpServletRequest request, HttpServletResponse response,
			@PathVariable("fileId") String fileId) {
		try {
			fileService.down(fileId, response);
			return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.error("下载异常，请联系管理员！");
		}
	}

}
