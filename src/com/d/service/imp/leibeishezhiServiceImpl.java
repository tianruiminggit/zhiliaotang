package com.d.service.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.Tree.TreeNode;
import com.d.Tree.TreeNodeTest;
import com.d.dao.leibieshezhiDao;
import com.d.entity.Kindchild;
import com.d.entity.Projectkind;
import com.d.entityAll.leibieshezhientity;
import com.d.service.leibeishezhiService;

/**
 * 
 * @author Administrator
 *
 */
@Service
public class leibeishezhiServiceImpl  implements leibeishezhiService{
	//调用类别设置dao层对象 必须加Autowired注解 
	@Autowired
	private leibieshezhiDao leibieshezhi ;
	/**
	 * 生成树的方法
	 */
	/*@Autowired
	private TreeNodeTest tree;*/
	/**
 * 获取分类的数据信息
 * 
 */
/*	@Override
	public List<TreeNode> getlistProjectkind() {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list =leibieshezhi.getlistProjectkind();
		List<TreeNode> treeDataList = new ArrayList<>();//存储所有的节点（父节点和子节点）
		TreeNode rootTreeNode = new TreeNode(0,null,"分类设置测试",null,null);
		treeDataList.add(rootTreeNode);
		for(Map<String,Object> map:list){
			TreeNode childTreeNode = new TreeNode(new Integer(map.get("kind_id").toString()),0,map.get("kind_name").toString(),null,null);
			treeDataList.add(childTreeNode);
		}
					
		
		List<leibieshezhientity> list = leibieshezhi.getlistProjectkind();
		List<TreeNode> treeDataList = new ArrayList<>();//存储所有的节点（父节点和子节点）
		for(leibieshezhientity li:list){
			
			TreeNode rootTreeNode = new TreeNode(li.getKind_id(),null,li.getKind_name(),null,null);//id 父节点，text，stata，children
			treeDataList.add(rootTreeNode);
		
		}
		
		for(leibieshezhientity li:list){
				
			TreeNode childTreeNode =new TreeNode(li.getChild_id(), li.getKind_id(), li.getChild_name(), null, null);
			treeDataList.add(childTreeNode);
		}
		
		tree.getFatherTreeNode(treeDataList);
		
		return treeDataList;
		
		
		
		
	}*/
	
	
	
	@Override
	public List<TreeNode> tree(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return leibieshezhi.tree(map);//调用Dao层中的生成树方法
	}
	/**
	 * 查询所有父类数据
	 */
	@Override
	public List<Projectkind> getlistProjectkind(Projectkind p) {
		// TODO Auto-generated method stub
		//调用DAO层的查询父类的方法
		return leibieshezhi.getlistProjectkind(p);
	}
	/**
	 * 插入数据的实现类
	 */
	@Override
	public int insertprojectkind(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return leibieshezhi.insertprojectkind(map);
	}
	/**
	 * 查询所有子类的数据
	 */
	@Override
	public List<Kindchild> getkindchild(Kindchild kind_id) {
		// TODO Auto-generated method stub
		return leibieshezhi.getkindchild(kind_id);
	}
	/**
	 * 修改数据
	 */
	@Override
	public int updatetable(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return leibieshezhi.updatetable(map);
	}

	
}
