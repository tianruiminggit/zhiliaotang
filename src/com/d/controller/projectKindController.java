package com.d.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.d.entity.Projectkind;
import com.d.service.leibeishezhiService;

@Controller
@RequestMapping("/projectKindController")
public class projectKindController {
	/**
	 * 
	 * 创建类别设置service对象
	 * 
	 */
	@Autowired
	private leibeishezhiService leibeishezhi;
	/**
	 * 查询所有的类别信息 返回JSON数据
	 * @return
	 */
	@RequestMapping("/getProjectKidJson")
	public Projectkind getlistProjectKid(){
		Projectkind projectkind = new Projectkind();
		return projectkind;
	}
	
}
