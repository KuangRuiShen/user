package com.app.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.view.pojo.Category;
import com.app.view.service.CategoryService;
import com.app.view.util.JsonResult;
import com.github.pagehelper.PageInfo;


@RestController
@RequestMapping("category")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("list")
	public JsonResult<?> list(Integer page,Integer pageSize,String name){		
		if(page == null || page < 1 )
			page = 1;
		if(pageSize == null || pageSize <10)
		  pageSize = JsonResult.PAGESIZR;	
//		  PageHelper.startPage(page, pageSize);
      	  List<Category> list = categoryService.list(name);
          PageInfo<Category> pageInfo = new PageInfo<Category>(list);
          return JsonResult.buildSuccessResult(list,pageInfo.getTotal());
	}
	
	@PostMapping("add")
	public JsonResult<?> add(@RequestBody Category c){
		
          return JsonResult.buildSuccessResult();
	}

}
