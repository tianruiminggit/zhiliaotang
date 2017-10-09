package com.d.entity;

import java.sql.Timestamp;
import java.util.List;

public class DeclarNode {

	private String id;
	private String name;
	private String context;
	private int money;
	private Timestamp time;
	private List<DeclarNode> children;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<DeclarNode> getChildren() {
		return children;
	}
	public void setChildren(List<DeclarNode> children) {
		this.children = children;
	}
	
	
	
}
