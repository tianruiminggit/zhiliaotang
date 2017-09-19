package com.d.dao;

import java.util.List;

import com.d.entity.Province;

public interface RegionManagerDao {

	/**
	 * 获取所有省份
	 * @return
	 */
	public List<Province> getListProvince();
}
