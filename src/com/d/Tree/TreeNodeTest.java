package com.d.Tree;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;


/**
 * ����TreeNode��ģ���Ƿ��ܹ�ת����json����
 * 1�����Է���m01
 * 2����������getFatherNode,�������еĸ��ڵ�
 * 3����������getChildrenNode,�������е��ӽڵ�
 * @author Administrator
 *
 */

public class TreeNodeTest {

	public void m01(){
		/**
		 * ͨ��forѭ��ģ������
		 */
		List<TreeNode> treeDataList = new ArrayList<>();//�洢���еĽڵ㣬�������ڵ���ӽڵ�
		TreeNode  rooTreeNode =  new TreeNode(1, null, "������ʩ", null, null);//id ���ڵ� ����  ״̬  �ӽڵ�
		treeDataList.add(rooTreeNode);
		for(int i =100;i<110;i++){
			TreeNode childTreeNode = new TreeNode(i, 1, "���·��", null, null);
			treeDataList.add(childTreeNode);
		}
		List<TreeNode> newTreeDataList =getFatherTreeNode(treeDataList);//�ѹ��������ڵ������ģ�ʹ��ݵ�getFatherTreeNode��
		Gson gson = new Gson();//Gson��Ҫ��Gson�� ��������json����
		System.out.println(gson.toJson(newTreeDataList));
	}
	/**
	 * �����ķ���ֵ����һ�������ӽڵ�͸��ڵ��ϵ������ģ��
	 * �ҹ���һ���µľ��й�ϵ�Ľڵ���
	 * @param treeDataList
	 * @return
	 */
	public List<TreeNode> getFatherTreeNode(List<TreeNode> treeDataList){
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
	public List<TreeNode> getChildrenTreeNode(Integer pid,List<TreeNode> treeDataList){
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
