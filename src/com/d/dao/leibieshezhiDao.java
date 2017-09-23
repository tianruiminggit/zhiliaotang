package com.d.dao;

import java.util.List;
import java.util.Map;

import com.d.Tree.TreeNode;
import com.d.entity.Projectkind;
import com.d.entityAll.leibieshezhientity;
/*
 * 
 * 接口名要与mapper中的SQL语句的id名相同
 */
public interface leibieshezhiDao {
	/**
	 * 查找所有类别方法
	 * @return
	 */	
		public List<leibieshezhientity> getlistProjectkind();
		/*public List<Map<String,Object>> getlistProjectkind();*/
		/**
		 * 
		 * 查询数据生成树
		 * @param map
		 * @return
		 */
		public List<TreeNode> tree(Map<String, Object> map) ;
		
		
}
