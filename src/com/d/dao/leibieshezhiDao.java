package com.d.dao;

import java.util.List;

import com.d.entity.Projectkind;

public interface leibieshezhiDao {
	/**
	 * 查找所有类别方法
	 * @return
	 */	
		public List<Projectkind> getlistProjectkind();
}
