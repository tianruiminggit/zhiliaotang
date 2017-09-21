package com.d.entity;

import java.util.List;

public class RegionTreeNode {

	private String id;
	private String text;
	private List<RegionTreeNode> children;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public List<RegionTreeNode> getChildren() {
		return children;
	}
	public void setChildren(List<RegionTreeNode> children) {
		this.children = children;
	}
	
	
	
}
