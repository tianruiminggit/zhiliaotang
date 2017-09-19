package com.d.entity;

public class AuthUser {
	private	String	user_id	;
	private	String	user_name	;
	private	String	user_password	;
	private	String	province_id	;
	private	String	city_id	;
	private	String	county_id	;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getProvince_id() {
		return province_id;
	}
	public void setProvince_id(String province_id) {
		this.province_id = province_id;
	}
	public String getCity_id() {
		return city_id;
	}
	public void setCity_id(String city_id) {
		this.city_id = city_id;
	}
	public String getCounty_id() {
		return county_id;
	}
	public void setCounty_id(String county_id) {
		this.county_id = county_id;
	}
	@Override
	public String toString() {
		return "AuthUser [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_password=" + user_password + ", province_id="
				+ province_id + ", city_id=" + city_id + ", county_id="
				+ county_id + "]";
	}
	public AuthUser() {
		super();
		// TODO Auto-generated constructor stub
	}

}
