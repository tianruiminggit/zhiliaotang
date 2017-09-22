package com.d.util;

import java.util.ArrayList;
import java.util.List;

import com.d.Tree.TreeNode;

public class TreeNodeUtil {
	/**
	 * 方法的返回值就是一个带有子节点和父节点关系的数据模型
	 * 且构建一个新的具有关系的节点树
	 * @param treeDataList
	 * @return
	 */
	public static List<TreeNode> getFatherTreeNode(List<TreeNode> treeDataList){
		List<TreeNode> newTreeDataList = new ArrayList<>();//包含所有节点之间的关系
		for(TreeNode treenode:treeDataList){//遍历基础数据（无关系的基础数据）
			if(treenode.getPid()==null){//判断是否是跟节点，没有父节点
				treenode.setState("open");
				treenode.setChildren(getChildrenTreeNode(treenode.getId(), treeDataList));//设置子节点，找该父节点下有哪些子节点，确立好他们之间的关系
				newTreeDataList.add(treenode);				
			}
		}	
		return newTreeDataList;
	}
	/**
	 * 方法的返回值就是一个父节点下面的所有子节点集合
	 * @return
	 */
	private static List<TreeNode> getChildrenTreeNode(Integer pid,List<TreeNode> treeDataList){
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
