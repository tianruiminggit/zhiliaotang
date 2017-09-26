package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.Tree.TreeNode;
import com.d.entity.Kindchild;
import com.d.entity.Projectkind;

public interface leibeishezhiService {
/**
 * 查询所有父类类别方法 service接口
 * 当传入的参数为空时，查询所有的父类
 */
	public List<Projectkind> getlistProjectkind(Projectkind p);
	
	/**
	 * 查询子类 当出入的参数为空时 查询所有子类
	 * @param K
	 * @return
	 */
	public List<Kindchild> getkindchild(Kindchild K);
	/**
	 * 生成树方法  service接口
	 */	
	public  List<TreeNode> tree(Map<String, Object> map);
	
	/**
	 *插入数据 
	 * @param map
	 * @return
	 */	
	public int insertprojectkind(Map<String,Object> map); 
	/**
	 * 修改数据
	 * @param map
	 * @return
	 */
	
	public int updatetable(Map<String,Object> map);
	/**
	 * 删除数据
	 * @param map
	 * @return
	 */
	public int delete1(Map<String,Object> map);
}
