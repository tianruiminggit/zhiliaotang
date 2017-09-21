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
	 * ����������õ�service����
	 * 
	 */
	@Autowired
	private leibeishezhiService leibeishezhi;
	/**
	 * ��ѯ���е������Ϣ ����JSON����
	 * @return
	 */
	@RequestMapping("/getProjectKidJson")
	@ResponseBody
	public List<TreeNode> getlistProjectKid(){
		List<TreeNode> list = leibeishezhi.getlistProjectkind();
		List<TreeNode> newList = TreeNodeUtil.getFatherTreeNode(list);
		Gson gson = new Gson();//Gson��Ҫ��Gson�� ��������json����
		System.out.println(gson.toJson(newList));
		
		return newList;
	}
	
}
