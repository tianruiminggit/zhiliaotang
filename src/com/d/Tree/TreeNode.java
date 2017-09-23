package com.d.Tree;
import java.util.List;


/**
 * 构建数的节点模型
 * 规范：必须和easyUI-tree的json数据挂钩（格式一样）
 * easyUI-tree中节点的属性
 * 1、id
 * 2、text
 * 3、state
 * 4、children
 * 
 * @author Administrator
 *
 */
public class TreeNode {
	private String id;//节点的编号
	private String pid;//父节点编号
	private String text;
	private String state;//展开状态
	private List<TreeNode> children;//子节点
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
