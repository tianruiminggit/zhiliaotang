package com.d.Tree;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;


/**
 * 测试TreeNode的模型是否能够转换成json数据
 * 1、测试方法m01
 * 2、创建方法getFatherNode,遍历所有的父节点
 * 3、创建方法getChildrenNode,遍历所有的子节点
 * @author Administrator
 *
 */

public class TreeNodeTest {

	public void m01(){
		/**
		 * 通过for循环模拟数据
		 */
		List<TreeNode> treeDataList = new ArrayList<>();//存储所有的节点，包含父节点和子节点
		TreeNode  rooTreeNode =  new TreeNode(1, null, "基础设施", null, null);//id 父节点 名称  状态  子节点
		treeDataList.add(rooTreeNode);
		for(int i =100;i<110;i++){
			TreeNode childTreeNode = new TreeNode(i, 1, "乡村路桥", null, null);
			treeDataList.add(childTreeNode);
		}
		List<TreeNode> newTreeDataList =getFatherTreeNode(treeDataList);//把构建的树节点的数据模型传递到getFatherTreeNode中
		Gson gson = new Gson();//Gson需要到Gson包 用于生产json数据
		System.out.println(gson.toJson(newTreeDataList));
	}
	/**
	 * 方法的返回值就是一个带有子节点和父节点关系的数据模型
	 * 且构建一个新的具有关系的节点树
	 * @param treeDataList
	 * @return
	 */
	public List<TreeNode> getFatherTreeNode(List<TreeNode> treeDataList){
		List<TreeNode> newTreeDataList = new ArrayList<>();//包含所有节点之间的关系
		for(TreeNode treenode:treeDataList){//遍历基础数据（无关系的基础数据）
			if(treenode.getPid()==null){//判断是否是跟节点，没有父节点
				treenode.setState("open");
				treenode.setChildren(getChildrenTreeNode(treenode.getId(), treeDataList));//设置子节点，找该父节点下右哪些子节点，确立好他们之间的关系
				newTreeDataList.add(treenode);				
			}
		}	
		return newTreeDataList;
	}
	/**
	 * 方法的返回值就是一个父节点下面的所有子节点集合
	 * @return
	 */
	public List<TreeNode> getChildrenTreeNode(Integer pid,List<TreeNode> treeDataList){
		List<TreeNode> newTreeDataList = new ArrayList<>();//包含某一个父节点的子节点集合
		for(TreeNode treeNode :treeDataList){//遍历基础数据，因为还有一份子节点包含在treeDataList里面
			if(treeNode.getPid()==null) continue;
			if(treeNode.getPid()==pid){//判断子节点
				treeNode.setState("closed");
				treeNode.setChildren(getChildrenTreeNode(treeNode.getId(),treeDataList));//递归，子节点下面可能还有它的子节点
				newTreeDataList.add(treeNode);
			}
			
		}	
		return newTreeDataList;
	}
}
