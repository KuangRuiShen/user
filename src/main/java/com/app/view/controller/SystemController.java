package com.app.view.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.LoginUser;
import com.app.view.service.SystemService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * @author krs
 * @time 2018年10月8日 上午9:39:56
 * @describe 用户权限管理
 */
@RestController
@RequestMapping("system")
public class SystemController {
	
	@Autowired
	private SystemService systemService;
	
	@GetMapping("list")
	public JsonResult<?> list(Integer page,Integer pageSize,String username){		
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;			 
		try {
			  PageHelper.startPage(page, pageSize);
			  List<LoginUser> list = systemService.list(username);
	          PageInfo<LoginUser> pageInfo = new PageInfo<LoginUser>(list);
	          return JsonResult.buildSuccessResult(list,pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
      	
	}
	
	//获取所有管理员
	@GetMapping("getUsers")
	public JsonResult<?> all(String userId){		
		try {			
		    return JsonResult.buildSuccessResult(systemService.getUser(userId));
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}  
	}

	
	@PostMapping("add")
	public JsonResult<?> add(@RequestBody LoginUser u,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	   			
			if(systemService.checkUsername(u.getUsername()) > 0) {
				return JsonResult.buildExceptionResult("已经存在相同的用户名称,请联系管理员!");
			}			
			systemService.add(u);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@PostMapping("edit")
	public JsonResult<?> edit(@RequestBody LoginUser u,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	
			if(u.getId() == null){
				return JsonResult.buildExceptionResult("id不能为空");
			}
			systemService.edit(u);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("修改失败,请联系管理员!");
		}
   
	}
	
	@PostMapping("delete")
	public JsonResult<?> delete(@RequestBody List<String> ids){
		try {					
			if(ids.isEmpty()){
				return JsonResult.buildExceptionResult("参数不能为空");
			}
			systemService.delete(ids);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("删除异常,请联系管理员!");
		}
	}
	
	/**
	 * 
	 * @describe 修改密码
	 * @param user
	 * @return
	 */
	@PostMapping("/password")
	public JsonResult<Integer> changePassword(@RequestBody LoginUser user) {
		try {
			if (systemService.changePassword(user)) {
				return JsonResult.buildSuccessResult();
			}
			return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, "参数异常，请联系管理员！");
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "修改失败，请联系管理员！");
		}
	
	}
	
	@GetMapping("total")
	public JsonResult<?> total(Integer id){				 
		try {
			  LoginUser lu = systemService.getById(id);
			  Map<String, Object> resutl =new HashMap<String, Object>();
			  if(lu != null) {
//				  int end = total < (page * pageSize) ? total :page * pageSize;
				  List<Map<String, Object>> list = systemService.total(lu.getUser_id(),lu.getPeople());
				  resutl.put("list", list);
				  resutl.put("total", lu.getTotal());
			  } 
			  return JsonResult.buildSuccessResult(resutl);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}	
	}
	
	@GetMapping("num")
	public JsonResult<?> getNum(){				 
		try {
			  int num = systemService.getNum();
			  return JsonResult.buildSuccessResult(num);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}	
	}
	
	@GetMapping("saveNum")
	public JsonResult<?> SaveNum(@RequestParam Integer num){				 
		try {
				if(num < 0 ){
					num = 50;
				}
				systemService.updateNum(num);
			  return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("保存失败,请联系管理员!");
		}	
	}
	

}
