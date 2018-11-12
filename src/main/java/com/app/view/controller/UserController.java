package com.app.view.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.AppUser;
import com.app.view.pojo.User;
import com.app.view.service.AppUserService;
import com.app.view.service.UserService;
import com.app.view.util.JsonResult;
import com.app.view.util.MD5;
import com.app.view.util.ResultCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:30:43
 * @describe 
 */
@RestController
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AppUserService appUserService;
	
	//添加用户
	@GetMapping("/add")
	public JsonResult<?> addAppUser(@RequestParam String invite_id){		
		try {
			AppUser u = new AppUser();
			u.setInvite_id(invite_id);
			AppUser app = appUserService.findById(invite_id);
			if(app == null){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR,"邀请id不存在");
			}		
			AppUser user = appUserService.add(u);
			return JsonResult.buildSuccessResult(user);				
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	//添加用户
	@PostMapping("/addmaster")
	public JsonResult<?> addmaster(@RequestBody AppUser u){		
		try {	
			AppUser user = appUserService.addmaster(u);
			return JsonResult.buildSuccessResult(user);				
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"已经存在相同的用户id");
		}	
	}
	
	//删除
		@PostMapping("/delete")
		public JsonResult<?> delete(@RequestBody AppUser u){		
			try {	
				 appUserService.delete(u.getId());
				return JsonResult.buildSuccessResult();				
			} catch (Exception e) {
				e.printStackTrace();
				return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"已经存在相同的用户id");
			}	
		}
		
	
	
	//修改用户信息
	@PostMapping("/changeinfo")
	public JsonResult<?> changeinfo(@RequestBody Map<String,String> param){		
		try {			
		    appUserService.changeinfo(param);
			return JsonResult.buildSuccessResult();				
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	@GetMapping("list")
	public JsonResult<?> list(Integer page,Integer pageSize,String name,String invite_id,String bTime,String eTime){
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;	
		try {
				AppUser a = new AppUser();
				a.setId(name);
				a.setInvite_id(invite_id);
				a.setbTime(bTime);
				a.seteTime(eTime);
			  PageHelper.startPage(page, pageSize);
	          PageInfo<AppUser> pageInfo = new PageInfo<AppUser>(appUserService.find(a));
	          return JsonResult.buildSuccessResult(pageInfo.getList(),pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	
	@GetMapping("menoy")
	public JsonResult<?> list(@RequestParam String uid, String result){
		try {
			 List<Map<String,String>> datas = appUserService.log(uid,result);
	         return JsonResult.buildSuccessResult(datas);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	//获取所有管理
	@GetMapping("mange")
	public JsonResult<?> getMange(){
		try {
			 List<Map<String,String>> datas = appUserService.getMange();
	         return JsonResult.buildSuccessResult(datas);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	
	
	
	@GetMapping("update")
	public JsonResult<?> update(String id){
		try {
			  appUserService.update(id);
	          return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	
	@GetMapping("findById")
	public JsonResult<?> findById(@RequestParam String id){
	
		try {          
	          return JsonResult.buildSuccessResult(appUserService.findById(id));
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	//修改密码
	@PostMapping("/password")
	public JsonResult<?> updatework(@RequestBody User u){		
		try {		
			User user = userService.findById(u.getId());
			if(user!=null && MD5.enc(u.getLastpassword()).equals(user.getPassword())){
				userService.updatePassword(u);
				return JsonResult.buildSuccessResult();		
			}else{
				return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"输入的原始密码有误");
			}		
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	
	@GetMapping("order")
	public JsonResult<?> order(Integer page,Integer pageSize,String name){
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;	
		try {
			
			  PageHelper.startPage(page, pageSize);
	          PageInfo<Map<String,String>> pageInfo = new PageInfo<Map<String,String>>(appUserService.order(name));
	          return JsonResult.buildSuccessResult(pageInfo.getList(),pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
		
	
}
