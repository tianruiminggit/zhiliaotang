package com.d.dao;

import java.util.List;
import java.util.Map;

import com.d.entity.Projectkind;

public interface leibieshezhiDao {
	/**
	 * 查找所有类别方法
	 * @return
	 */	/*
		public List<Projectkind> getlistProjectkind();*/
		public List<Map<String,Object>> getlistProjectkind();
}
