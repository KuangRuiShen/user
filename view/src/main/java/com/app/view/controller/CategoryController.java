package com.app.view.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.Category;
import com.app.view.service.CategoryService;
import com.app.view.service.CodeService;
import com.app.view.util.JsonResult;
import com.app.view.util.ResultCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RestController
@RequestMapping("category")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private CodeService codeService;
	
	@GetMapping("list")
	public JsonResult<?> list(Integer page,Integer pageSize,String name,String type){		
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;			 
		try {
			  PageHelper.startPage(page, pageSize);
			  Category c = new Category();
			  c.setName(name);
			  c.setType(type);
			  List<Category> list = categoryService.list(c);
	          PageInfo<Category> pageInfo = new PageInfo<Category>(list);
	          return JsonResult.buildSuccessResult(list,pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}
      	
	}
	
	@GetMapping("all")
	public JsonResult<?> all(){		
		try {
			Map<String,Object> datas = new HashMap<>();
			List<Map<String, String>> categorys = categoryService.all();
			datas.put("categorys", categorys);
			datas.put("types", codeService.list("page"));
			datas.put("levels", codeService.list("level"));
		    return JsonResult.buildSuccessResult(datas);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("查询失败,请联系管理员!");
		}  
	}
	
	@PostMapping("add")
	public JsonResult<?> add(@RequestBody Category c,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	   	
			categoryService.add(c);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("添加失败,请联系管理员!");
		}
	}
	
	@PostMapping("update")
	public JsonResult<?> update(@RequestBody Category c,BindingResult bindingResult){
		try {		
			if(bindingResult.hasErrors()){
				return JsonResult.buildFailuredResult(ResultCode.PARAMS_ERROR, bindingResult.getFieldError().getDefaultMessage());
			}	
			if(StringUtils.isBlank(c.getId())){
				return JsonResult.buildExceptionResult("id不能为空");
			}
			categoryService.update(c);
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
			if(categoryService.findVideo(ids) > 0){
				return JsonResult.buildExceptionResult("选择分类已经有视频，不能删除");
			}
			categoryService.delete(ids);
        	return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildExceptionResult("删除异常,请联系管理员!");
		}
	}

}
