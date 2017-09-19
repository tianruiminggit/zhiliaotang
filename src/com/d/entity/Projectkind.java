package com.d.entity;

public class Projectkind {
	private	String	kind_id	;
	private	String	kind_name	;
	public String getKind_id() {
		return kind_id;
	}
	public void setKind_id(String kind_id) {
		this.kind_id = kind_id;
	}
	public String getKind_name() {
		return kind_name;
	}
	public void setKind_name(String kind_name) {
		this.kind_name = kind_name;
	}
	public Projectkind(String kind_id, String kind_name) {
		super();
		this.kind_id = kind_id;
		this.kind_name = kind_name;
	}
	public Projectkind() {
		super();
	}


}
