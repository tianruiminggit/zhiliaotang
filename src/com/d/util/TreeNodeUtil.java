package com.d.util;

import java.util.ArrayList;
import java.util.List;

import com.d.Tree.TreeNode;

public class TreeNodeUtil {
	/**
	 * �����ķ���ֵ����һ�������ӽڵ�͸��ڵ��ϵ������ģ��
	 * �ҹ���һ���µľ��й�ϵ�Ľڵ���
	 * @param treeDataList
	 * @return
	 */
	public static List<TreeNode> getFatherTreeNode(List<TreeNode> treeDataList){
		List<TreeNode> newTreeDataList = new ArrayList<>();//�������нڵ�֮��Ĺ�ϵ
		for(TreeNode treenode:treeDataList){//�����������ݣ��޹�ϵ�Ļ������ݣ�
			if(treenode.getPid()==null){//�ж��Ƿ��Ǹ��ڵ㣬û�и��ڵ�
				treenode.setState("open");
				treenode.setChildren(getChildrenTreeNode(treenode.getId(), treeDataList));//�����ӽڵ㣬�Ҹø��ڵ�������Щ�ӽڵ㣬ȷ��������֮��Ĺ�ϵ
				newTreeDataList.add(treenode);				
			}
		}	
		return newTreeDataList;
	}
	/**
	 * �����ķ���ֵ����һ�����ڵ�����������ӽڵ㼯��
	 * @return
	 */
	private static List<TreeNode> getChildrenTreeNode(Integer pid,List<TreeNode> treeDataList){
		List<TreeNode> newTreeDataList = new ArrayList<>();//����ĳһ�����ڵ���ӽڵ㼯��
		for(TreeNode treeNode :treeDataList){//�����������ݣ���Ϊ����һ���ӽڵ������treeDataList����
			if(treeNode.getPid()==null) continue;
			if(treeNode.getPid()==pid){//�ж��ӽڵ�
				treeNode.setState("closed");
				treeNode.setChildren(getChildrenTreeNode(treeNode.getId(),treeDataList));//�ݹ飬�ӽڵ�������ܻ��������ӽڵ�
				newTreeDataList.add(treeNode);
			}
			
		}	
		return newTreeDataList;
	}
}
