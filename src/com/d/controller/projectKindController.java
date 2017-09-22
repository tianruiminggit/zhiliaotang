package com.d.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		List<TreeNode> newList = TreeNodeUtil.getFatherTreeNode(list);//调用生成树关系的工具类
		Gson gson = new Gson();//Gson需要到Gson包 用于生产json数据
		System.out.println(gson.toJson(newList));
		
		return newList;
	}
	
	/**
	 * 生成左边树方法二  
	 * @param table
	 * @param id
	 * @return
	 */
	@RequestMapping
	@ResponseBody
	public List<TreeNode>   tree(String table,int id){
		Map<String, Object> map = new HashMap<>();
		if(table==null){//如果页面没有传表名过来 就自己给他添加一个表
			map.put("tablename", "tb_projectkind");
		}else{
			map.put("tablename", table);
		}
		map.put("id", id);//第一次调用不起作用，没有传值，为下面用递归是起作用
		
		List<TreeNode> list = leibeishezhi.getlistProjectkind();//查询父节点表数据，封装到集合对象中
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String insert(){
		
		return null;
	}
	
}
