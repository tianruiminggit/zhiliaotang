package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.Tree.TreeNode;
import com.d.entity.Projectkind;

public interface leibeishezhiService {
/**
 * ��ѯ������𷽷�
 */
	public List<TreeNode> getlistProjectkind();
	
	/**
	 * ����������
	 */	
	public  List<TreeNode> tree(Map<String, Object> map);
	
	
}
