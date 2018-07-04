package com.app.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author krs
 * @date 创建时间  2018年7月4日 下午1:58:56
 * @describe
 *
 */
@Controller
@RequestMapping("/")
public class PageController {
	
	@GetMapping
	public String find(){		
		return "/index";
	}
}
