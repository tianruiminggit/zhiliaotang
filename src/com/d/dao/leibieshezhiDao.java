package com.d.dao;

import java.util.List;
import java.util.Map;

import com.d.Tree.TreeNode;
import com.d.entity.Projectkind;
import com.d.entityAll.leibieshezhientity;
/*
 * 
 * �ӿ���Ҫ��mapper�е�SQL����id����ͬ
 */
public interface leibieshezhiDao {
	/**
	 * ����������𷽷�
	 * @return
	 */	
		public List<leibieshezhientity> getlistProjectkind();
		/*public List<Map<String,Object>> getlistProjectkind();*/
		/**
		 * 
		 * ��ѯ����������
		 * @param map
		 * @return
		 */
		public List<TreeNode> tree(Map<String, Object> map) ;
		
		
}
