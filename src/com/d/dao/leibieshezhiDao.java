package com.d.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;

import com.d.Tree.TreeNode;
import com.d.entity.Kindchild;
import com.d.entity.Projectkind;
import com.d.entityAll.leibieshezhientity;
/*
 * 
 * �ӿ���Ҫ��mapper�е�SQL����id����ͬ
 */
public interface leibieshezhiDao {
	/**
	 * �������и������ݷ��� dao��ӿ�
	 * @return
	 */	
		public List<Projectkind> getlistProjectkind(Projectkind p);
		/*public List<Map<String,Object>> getlistProjectkind();*/
		
		/**
		 * ��ѯ���е���������
		 * @return
		 */
		public List<Kindchild> getkindchild(Kindchild K);
		
		/**
		 * ���ݴ���Ĳ������в�ѯ���������
		 */
	/*	public List<Kindchild> getkindnum(kind_id);
		*/
		/**
		 * 
		 * ��ѯ����������
		 * @param map
		 * @return
		 */
		public List<TreeNode> tree(Map<String, Object> map) ;
		
		/**
		 * �������ݽӿ� ��������Ϊint  С��0Ϊ���벻�ɹ�
		 * @param map
		 * @return
		 */
		public int insertprojectkind(Map<String,Object> map);
		/**
		 * �޸�����  ��������Ϊint  С��0Ϊ�޸Ĳ��ɹ�
		 * @param map
		 * @return
		 */
		public int updatetable(Map<String,Object> map);
		/**
		 * 
		 * ɾ������
		 * @param map
		 * @return
		 */
		public int delete1(Map<String,Object> map);
		
}
