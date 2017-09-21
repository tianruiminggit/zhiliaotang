package com.d.entity;

public class Kindchild {
	private	String	child_id	;
	private	String	child_name	;
	private	String	kind_id	;

	public Kindchild() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getChild_id() {
		return child_id;
	}
	public void setChild_id(String child_id) {
		this.child_id = child_id;
	}
	public String getChild_name() {
		return child_name;
	}
	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}
	public String getKind_id() {
		return kind_id;
	}
	public void setKind_id(String kind_id) {
		this.kind_id = kind_id;
	}
	public Kindchild(String child_id, String child_name, String kind_id) {
		super();
		this.child_id = child_id;
		this.child_name = child_name;
		this.kind_id = kind_id;
	}

	
}
