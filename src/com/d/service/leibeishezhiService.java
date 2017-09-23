package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.Tree.TreeNode;
import com.d.entity.Projectkind;

public interface leibeishezhiService {
/**
 * 查询所有类别方法
 */
	public List<TreeNode> getlistProjectkind();
	
	/**
	 * 生成树方法
	 */	
	public  List<TreeNode> tree(Map<String, Object> map);
	
	
}
