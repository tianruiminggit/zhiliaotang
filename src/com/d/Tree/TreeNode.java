package com.d.Tree;
import java.util.List;


/**
 * �������Ľڵ�ģ��
 * �淶�������easyUI-tree��json���ݹҹ�����ʽһ����
 * easyUI-tree�нڵ������
 * 1��id
 * 2��text
 * 3��state
 * 4��children
 * 
 * @author Administrator
 *
 */
public class TreeNode {
	private String id;//�ڵ�ı��
	private String pid;//���ڵ���
	private String text;
	private String state;//չ��״̬
	private List<TreeNode> children;//�ӽڵ�
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public List<TreeNode> getChildren() {
		return children;
	}
	public void setChildren(List<TreeNode> children) {
		this.children = children;
	}
	
	
	
	
}
