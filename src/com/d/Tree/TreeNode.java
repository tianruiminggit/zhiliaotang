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
	private Integer id;//节点的编号
	private Integer pid;//父节点编号
	private String text;
	private String state;//展开状态
	private List<TreeNode> children;//子节点
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
