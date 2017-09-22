package com.d.entityAll;

public class leibieshezhientity {
	private	int	child_id	;
	private	String	child_name	;
	private	int	kind_id	;
	private String tbname;
	private String kind_name;
	public int getChild_id() {
		return child_id;
	}
	public String getKind_name() {
		return kind_name;
	}
	public void setKind_name(String kind_name) {
		this.kind_name = kind_name;
	}
	public void setChild_id(int child_id) {
		this.child_id = child_id;
	}
	public String getChild_name() {
		return child_name;
	}
	public void setChild_name(String child_name) {
		this.child_name = child_name;
	}
	public int getKind_id() {
		return kind_id;
	}
	public void setKind_id(int kind_id) {
		this.kind_id = kind_id;
	}
	public String getTbname() {
		return tbname;
	}
	public void setTbname(String tbname) {
		this.tbname = tbname;
	}
	public leibieshezhientity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public leibieshezhientity(int child_id, String child_name, int kind_id,
			String tbname) {
		super();
		this.child_id = child_id;
		this.child_name = child_name;
		this.kind_id = kind_id;
		this.tbname = tbname;
	}
	
	
}
