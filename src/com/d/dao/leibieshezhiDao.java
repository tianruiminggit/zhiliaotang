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
 * 接口名要与mapper中的SQL语句的id名相同
 */
public interface leibieshezhiDao {
	/**
	 * 查找所有父类数据方法 dao层接口
	 * @return
	 */	
		public List<Projectkind> getlistProjectkind(Projectkind p);
		/*public List<Map<String,Object>> getlistProjectkind();*/
		
		/**
		 * 查询所有的子类数据
		 * @return
		 */
		public List<Kindchild> getkindchild(Kindchild K);
		
		/**
		 * 根据传入的参数进行查询子类的数据
		 */
	/*	public List<Kindchild> getkindnum(kind_id);
		*/
		/**
		 * 
		 * 查询数据生成树
		 * @param map
		 * @return
		 */
		public List<TreeNode> tree(Map<String, Object> map) ;
		
		/**
		 * 插入数据接口 返回类型为int  小于0为插入不成功
		 * @param map
		 * @return
		 */
		public int insertprojectkind(Map<String,Object> map);
		/**
		 * 修改数据  返回类型为int  小于0为修改不成功
		 * @param map
		 * @return
		 */
		public int updatetable(Map<String,Object> map);
		/**
		 * 
		 * 删除功能
		 * @param map
		 * @return
		 */
		public int delete1(Map<String,Object> map);
		
}
