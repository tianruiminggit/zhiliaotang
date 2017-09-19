package com.d.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.Tree.TreeNode;
import com.d.entity.Projectkind;
import com.d.service.leibeishezhiService;

@Controller
@RequestMapping("/projectKindController")
public class projectKindController {
	/**
	 * 
	 * 创建类别设置的service对象
	 * 
	 */
	@Autowired
	private leibeishezhiService leibeishezhi;
	/**
	 * 查询所有的类别信息 返回JSON数据
	 * @return
	 */
	@RequestMapping("/getProjectKidJson")
	@ResponseBody
	public List<TreeNode> getlistProjectKid(){
		List<TreeNode> list = leibeishezhi.getlistProjectkind();
		
		return list;
	}
	
}
