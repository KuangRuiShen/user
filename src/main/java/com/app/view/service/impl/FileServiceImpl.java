package com.app.view.service.impl;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.app.view.mapper.FileMapper;
import com.app.view.pojo.FileInfo;
import com.app.view.service.FileService;
import com.app.view.util.UUIDuitls;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

/**
 * @author krs
 * @time 2018年10月22日 上午11:18:41
 * @describe 文件操作服务实现
 */
@Service
public class FileServiceImpl extends ServiceImpl<FileMapper, FileInfo>
		implements FileService {

	@Value("${filePath}")
	private String filePath;

	// 下载路径
	static public String downPath = "/api/file/apk/";

	// 保存文件
	@Override
	public FileInfo saveFile(MultipartFile file) throws Exception {
		String filename = file.getOriginalFilename();
		// 拼接成完整的指定的文件路径名，创建新文件
		String name = System.currentTimeMillis()
				+ filename.substring(filename.lastIndexOf("."),
						filename.length());

		String realPath = filePath + "/" + name;

		byte buffer[] = new byte[1024];
		int cnt = 0;
		// 使用输入流读取前台的file文件
		FileOutputStream os = null;
		InputStream is = null;
		try {
			os = new FileOutputStream(new File(realPath));
			is = file.getInputStream();
			while ((cnt = is.read(buffer)) > 0) {
				os.write(buffer, 0, cnt);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			// 关闭输入输出流
			if (os != null) {
				os.close();
			}
			if (is != null) {
				is.close();
			}

		}

		String uuid = UUIDuitls.getUUID();
		// 保存文件信息到数据库
		FileInfo f = new FileInfo();
		f.setFileId(uuid);
		f.setName(filename);
		f.setFileSize(file.getSize());
		f.setUrl(downPath + uuid);// 请求路径
		f.setLocalName(name);// 本地路径
		f.setCreateTime(new Date());
		baseMapper.insert(f);
		return f;
	}

	@Override
	public void down(String fileId, HttpServletResponse response) {
		// 获取文件名
		FileInfo f = baseMapper.selectById(fileId);
		String realPath = filePath + "/" + f.getLocalName();
		response.setHeader("content-type", "application/octet-stream");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/octet-stream");
		String tempFileName = f.getName();
		// 中文乱码问题
		try {
			tempFileName = URLEncoder.encode(f.getName(), "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		response.setHeader("Content-Disposition", "attachment;filename="
				+ tempFileName);
		byte[] buff = new byte[1024];
		BufferedInputStream bis = null;
		OutputStream os = null;
		try {
			os = response.getOutputStream();
			bis = new BufferedInputStream(new FileInputStream(
					new File(realPath)));
			int i = bis.read(buff);
			while (i != -1) {
				os.write(buff, 0, buff.length);
				os.flush();
				i = bis.read(buff);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (bis != null) {
				try {
					bis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

	}

	@Override
	public void delete(String wjbh) {
		// 判断是否为空
		if (StringUtils.isNoneBlank(wjbh)) {
			FileInfo f = baseMapper.selectById(wjbh);
			if (f != null) {
				String realPath = filePath + "/" + f.getLocalName();
				File file = new File(realPath);
				// 如果文件存在则删除
				if (file.exists()) {
					file.delete();
				}
				// 最后删除文件
				f.deleteById();
			}
		}
	}
}
