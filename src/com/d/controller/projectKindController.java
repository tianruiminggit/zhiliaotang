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
		
		return list;
	}
	
}
