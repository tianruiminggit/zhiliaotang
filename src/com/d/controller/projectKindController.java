package com.d.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.Tree.TreeNode;
import com.d.entity.Projectkind;
import com.d.service.leibeishezhiService;
import com.d.util.TreeNodeUtil;
import com.google.gson.Gson;

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
		List<TreeNode> newList = TreeNodeUtil.getFatherTreeNode(list);
		Gson gson = new Gson();//Gson需要到Gson包 用于生产json数据
		System.out.println(gson.toJson(newList));
		
		return newList;
	}
	
}
