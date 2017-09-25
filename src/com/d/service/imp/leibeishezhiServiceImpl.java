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
	//�����������dao����� �����Autowiredע�� 
	@Autowired
	private leibieshezhiDao leibieshezhi ;
	/**
	 * �������ķ���
	 */
	/*@Autowired
	private TreeNodeTest tree;*/
	/**
 * ��ȡ�����������Ϣ
 * 
 */
/*	@Override
	public List<TreeNode> getlistProjectkind() {
		// TODO Auto-generated method stub
		List<Map<String,Object>> list =leibieshezhi.getlistProjectkind();
		List<TreeNode> treeDataList = new ArrayList<>();//�洢���еĽڵ㣨���ڵ���ӽڵ㣩
		TreeNode rootTreeNode = new TreeNode(0,null,"�������ò���",null,null);
		treeDataList.add(rootTreeNode);
		for(Map<String,Object> map:list){
			TreeNode childTreeNode = new TreeNode(new Integer(map.get("kind_id").toString()),0,map.get("kind_name").toString(),null,null);
			treeDataList.add(childTreeNode);
		}
					
		
		List<leibieshezhientity> list = leibieshezhi.getlistProjectkind();
		List<TreeNode> treeDataList = new ArrayList<>();//�洢���еĽڵ㣨���ڵ���ӽڵ㣩
		for(leibieshezhientity li:list){
			
			TreeNode rootTreeNode = new TreeNode(li.getKind_id(),null,li.getKind_name(),null,null);//id ���ڵ㣬text��stata��children
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
		return leibieshezhi.tree(map);//����Dao���е�����������
	}
	/**
	 * ��ѯ���и�������
	 */
	@Override
	public List<Projectkind> getlistProjectkind(Projectkind p) {
		// TODO Auto-generated method stub
		//����DAO��Ĳ�ѯ����ķ���
		return leibieshezhi.getlistProjectkind(p);
	}
	/**
	 * �������ݵ�ʵ����
	 */
	@Override
	public int insertprojectkind(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return leibieshezhi.insertprojectkind(map);
	}
	/**
	 * ��ѯ�������������
	 */
	@Override
	public List<Kindchild> getkindchild(Kindchild kind_id) {
		// TODO Auto-generated method stub
		return leibieshezhi.getkindchild(kind_id);
	}
	/**
	 * �޸�����
	 */
	@Override
	public int updatetable(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return leibieshezhi.updatetable(map);
	}

	
}
