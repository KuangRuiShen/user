
package com.app.view.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.app.view.service.VideoService;
import com.app.view.util.MyFileUtil;

/**
 * @author krs
 * @date 创建时间  2018年5月31日 下午1:42:03
 * @describe
 */
@RestController
@RequestMapping("upload")
public class FileUploadController {

//    final static String ip ="127.0.0.1";
//	final static String realpath ="c:/file/";
	
	@Value("${ip}")
	private String ip;
	
	@Value("${realpath}")
	private String realpath;
	
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
	
	@PostMapping(value = "/video" ) 
	public void video(MultipartFile file,HttpServletRequest request, 
			@RequestParam Map<String,Object> param) {
			Map<String,Object> result = new HashMap<>();
			result.put("code", 201);
//			System.out.println(param.toString());
			Integer chunks = Integer.parseInt(param.get("chuckSize").toString()) ;		
			String fileName = param.get("fileName").toString();
			String id = param.get("vid").toString();
			if(chunks > 1){				
							
			    Integer chucknum =Integer.parseInt(param.get("chucknum").toString());						
//				System.out.println(id+"________"+chucknum);			
             
				String tmppath = realpath+"/upload/video/tmp/"+id+"/";//缓存的文件
//	           File parentFileDir = new File(tmppath);  
//	           if (!parentFileDir.exists()) {  
//	               parentFileDir.mkdirs();  
//	           }            
         try {
        	 //判断文件是否存在
        	 File f = new File(tmppath + id+"_"+chucknum+".part");
        	 if(!f.exists()){
        		 FileUtils.copyInputStreamToFile(file.getInputStream(), new File(tmppath + id+"_"+chucknum+".part"));
        	 }       		
			} catch (IOException e) {
				e.printStackTrace();
			} 
         

			// 是否全部上传完成  
            // 所有分片都存在才说明整个文件上传完成  
            boolean uploadDone = true;  
            for (int i = 0; i < chunks; i++) {  
                File partFile = new File(tmppath + id + "_" + i + ".part");  
                if (!partFile.exists()) {  
                    uploadDone = false;  
                }  
            }  
            
            // 所有分片文件都上传完成  
            // 将所有分片文件合并到一个文件中  
            if (uploadDone) {           	
             try {
    			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");			
    			Date date = new Date();
    			String strDate = sdf.format(date);
    			String newFilename = strDate + new Random().nextInt(1000)+ fileName.substring(fileName.lastIndexOf("."));
    			String path = realpath+"/upload/video/"+newFilename;
                // 得到 destTempFile 就是最终的文件  
                File destTempFile = new File(path);  
	                for (int i = 0; i < chunks; i++) {                  
	                	File partFile = new File(tmppath + id + "_" + i + ".part");  
	                    FileOutputStream destTempfos = new FileOutputStream(destTempFile, true);  
	                    //遍历"所有分片文件"到"最终文件"中  
	                    FileUtils.copyFile(partFile, destTempfos);         
						destTempfos.close();
	                }	
	                MyFileUtil.delFolder(tmppath);
	              //保存
	                videoService.saveVideourl(id, path);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
            
            }  					
				
			}else{
				try {					
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				Date date = new java.util.Date();
				String strDate = sdf.format(date);
				    fileName = strDate + new Random().nextInt(1000)+fileName.substring(fileName.lastIndexOf("."));					    
					FileUtils.copyInputStreamToFile(file.getInputStream(),new File(realpath+"upload/video/", fileName));
					
					String path = "http://"+ip+"/upload/video/"+fileName;
					//保存
					videoService.saveVideourl(id, path);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			System.out.println(result.toString());
//		return result;
	}
	
	
	
	
}
