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
	private Integer id;//�ڵ�ı��
	private Integer pid;//���ڵ���
	private String text;
	private String state;//չ��״̬
	private List<TreeNode> children;//�ӽڵ�
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
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
	public TreeNode(Integer id, Integer pid, String text, String state,
			List<TreeNode> children) {
		super();
		this.id = id;
		this.pid = pid;
		this.text = text;
		this.state = state;
		this.children = children;
	}
	
	
}
